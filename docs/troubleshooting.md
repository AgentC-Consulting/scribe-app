# Troubleshooting

This page helps you diagnose problems and gather the information we need to fix a
bug. If you are filing a bug report, the
[bug report form](https://github.com/AgentC-Consulting/scribe-app/issues/new/choose)
asks for several of these details.

> **Privacy reminder:** Log files and transcripts can contain the text of what
> you dictated. Before attaching anything to a public issue, open it and remove
> anything sensitive. Never attach audio recordings.

## Collecting logs

Scribe writes a plain-text log of what it does. Each line looks like
`[timestamp] [INFO|WARN|ERROR] message`.

- Current session: `~/Library/Application Support/Scribe/logs/scribe.log`
- Previous sessions (rotated): `~/Library/Application Support/Scribe/logs/scribe-YYYY-MM-DD_HHMMSS.log`

Logs are kept for 30 days by default and then deleted automatically.

### The simplest way (no Terminal)

1. In Finder, press **Cmd + Shift + G**.
2. Paste `~/Library/Application Support/Scribe/logs` and press Return.
3. Attach `scribe.log`. If the problem happened in an earlier session, also
   attach the most recent rotated `scribe-...log` file.

### Collecting system-level logs

For permission, paste, or notification problems, some detail is written to the
macOS system log rather than to `scribe.log`. To collect it, open Terminal and
run:

```
/usr/bin/log show --predicate 'process == "scribe" AND eventMessage CONTAINS "[Scribe:"' --last 1h --style compact > ~/Desktop/scribe-system-log.txt
```

This saves a file named `scribe-system-log.txt` to your Desktop. If the problem
happened more than an hour ago, change `--last 1h` to a longer window, such as
`--last 24h`.

> **Note:** Use the full path `/usr/bin/log` exactly as shown. On macOS, the
> shell has its own built-in `log` command, and if you type just `log ...` you
> may see a `too many arguments` error. Using `/usr/bin/log` avoids that.

### Using Console instead (no command line)

1. Open the **Console** app.
2. Select your Mac under **Devices**.
3. In the search field, type `process:scribe`.
4. Choose **File > Save a Copy As** (or Export) to save the results.

## Finding your version

Click the Scribe menu bar icon and choose **About Scribe**. The window shows the
app name, its version, and the path to the logs folder.

> **Note:** The About window shows Version 1.0.0. Because the beta builds share
> that version number, please also tell us which release you downloaded (the
> release name or date) when you report a problem, so we can match it to the
> exact build.

## Crash reports

If Scribe quit unexpectedly, macOS saves a crash report.

1. In Finder, press **Cmd + Shift + G**.
2. Paste `~/Library/Logs/DiagnosticReports` and press Return.
3. Sort by date and find the newest file named `scribe-YYYY-MM-DD-HHMMSS.ips`
   that matches when the crash happened.
4. Attach that `.ips` file to your bug report.

## Permissions are granted but a feature still does not work

This is the most common issue, and it usually has the same cause:
**macOS only applies Accessibility and Screen Recording when the app launches.**
If you granted the permission but did not restart Scribe, Scribe still behaves
as if it does not have it.

**First thing to try:** quit Scribe completely and reopen it, then try again.

If that does not help, re-grant the specific permission:

| Feature not working | Permission | How to re-grant |
|---|---|---|
| Nothing records / no audio | Microphone | System Settings > Privacy & Security > Microphone > turn Scribe on |
| Transcript is saved but not pasted at the cursor | Accessibility | System Settings > Privacy & Security > Accessibility > turn Scribe on, confirm with Touch ID or password, **then restart Scribe** |
| Meeting mode misses the other side of the call | Screen Recording | System Settings > Privacy & Security > Screen Recording > turn Scribe on, **then restart Scribe** |
| No transcription-finished alerts | Notifications | System Settings > Notifications > Scribe |

The in-app setup wizard walks through the Accessibility grant, including the
confirmation and the restart, and is often faster than navigating System
Settings by hand. You can reopen it from Scribe's menu.

## My old recordings disappeared

Scribe's automatic cleanup is **off by default**, so it does not delete
recordings unless you turned a cleanup rule on. Check Preferences:

- **Storage Cleanup > Delete recordings older than**
- **Storage Cleanup > Keep recordings under** a total size

When cleanup is on, it deletes **audio files only** — your transcripts
(`.md` files) are never removed, and only audio file types
(`.wav`, `.m4a`, `.mp3`, `.aiff`, `.aif`, `.caf`, `.flac`) are ever eligible.
If a transcript is missing, cleanup is not the cause.

## Where Scribe keeps your data

| Data | Default location |
|---|---|
| Recordings and transcripts | `~/Documents/Scribe` (each recording mode can override this) |
| App database and settings | `~/Library/Application Support/Scribe/scribe.db` |
| Inbox storage | `~/Library/Application Support/Scribe/inbox` |
| Logs | `~/Library/Application Support/Scribe/logs/` |
| Downloaded speech models | `~/.scribe/audio_models/` |

## Uninstall or reset Scribe

These steps remove the app, its settings, and its model cache. Your recordings
and transcripts in `~/Documents/Scribe` are deliberately left untouched — delete
that folder yourself if you also want them gone.

1. **Quit Scribe.** Use the menu bar icon > **Quit Scribe**, or run
   `killall scribe` in Terminal.
2. **Delete the app.** Move `/Applications/Scribe.app` to the Trash.
3. **Delete the app data and model cache** (settings, database, logs, and
   downloaded speech models):
   ```
   rm -rf ~/Library/Application\ Support/Scribe
   rm -rf ~/.scribe
   ```
4. **Reset the permission grants** so the first-run prompts appear again:
   ```
   tccutil reset Microphone com.scribeapp.scribe
   tccutil reset Accessibility com.scribeapp.scribe
   tccutil reset ScreenCapture com.scribeapp.scribe
   ```
5. There is no login-item file to clean up. Scribe registers launch-at-login
   through macOS itself, and that registration is removed automatically when the
   setting is off or the app is deleted.

To reinstall, follow [Getting started](getting-started.md#install). The first
launch shows the setup wizard again, exactly like a fresh install.

## Still stuck?

Open an [issue](https://github.com/AgentC-Consulting/scribe-app/issues/new/choose) with the details above, or email
[agent_c@agentc.consulting](mailto:agent_c@agentc.consulting) for private or
security-related reports.
