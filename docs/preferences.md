# Preferences reference

Open **Preferences** from the Scribe menu bar icon (or press Cmd + , while a
Scribe window is open). Changes you make are staged and take effect only when
you click **Save** — closing or canceling discards them.

The Preferences window has the following sections.

## Storage

**Save recordings to** is a folder picker that sets the default location for
your recordings and transcripts. Individual recording modes can override this
with their own folder (see
[Recording modes](recording-modes.md#every-configurable-option)).

## Storage Cleanup

Two independent cleanup rules let Scribe delete old audio automatically. Both
are **off by default** — Scribe never deletes anything unless you turn one of
them on.

- **Delete recordings older than** — Off, 30, 45, or 90 days.
- **Keep recordings under** a total size — Off, 1, 5, or 10 GB.

### What the safety rails guarantee

- Cleanup deletes **audio files only**. Your transcripts are never touched.
- A recording that is currently in progress is never deleted.
- Cleanup runs when Scribe launches and once a day after that.

Because both rules are off unless you opt in, old recordings do not disappear on
their own. If recordings you expected are missing, check these two settings
first — see
[Troubleshooting](troubleshooting.md#my-old-recordings-disappeared).

## Recording Modes

A row for each mode shows its name, a short summary, its shortcut, and an
**Edit** button, plus **Add Mode** to create a new one. This is where you
configure everything about how a mode records. It has its own page:
[Recording modes](recording-modes.md).

## Startup

- **Launch at Login** — start Scribe automatically when you log in to your Mac.
- **Show in Dock** — show Scribe's icon in the Dock in addition to the menu bar.
  The Dock icon opens the same menu, recent transcripts included.

## Transcription

Choose which on-device speech model Scribe uses:

- **Parakeet v3 — multilingual (recommended)**
- **Parakeet v2 — English only**

A status line below the picker tells you whether the selected model is
downloaded, downloading, ready, or failed. Parakeet v2 downloads the first time
you select it. Downloaded models are cached locally on your Mac; for the exact
location, see [Troubleshooting](troubleshooting.md#where-scribe-keeps-your-data).

## Recent Transcripts

**Show** sets how many recent transcripts appear in the menu bar, Dock, and File
menus — 3, 6, 10, 15, or 20.
