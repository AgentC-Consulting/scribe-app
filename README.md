# Scribe

Scribe is a free dictation app for macOS. Press a global hotkey, speak, and
Scribe transcribes your speech **entirely on-device** and pastes the text into
whatever app you're working in. No cloud, no accounts, no audio ever leaves
your machine.

- **Menu bar app** — lives in the status bar, no Dock icon by default
- **Global hotkey recording** — start/stop dictation from anywhere
- **Local transcription** — on-device speech-to-text (Parakeet on the Apple
  Neural Engine)
- **Live dictation** — streaming transcription while you speak
- **Auto-paste** — text lands at your cursor; your clipboard is restored afterward
- **Recording modes** — per-mode behavior, optional post-processing command
- **Transcript history** — recent transcripts from the menu

## Install (beta)

1. Download `Scribe-Installer.dmg` from the [latest release](../../releases/latest).
2. Open the DMG and drag **Scribe** into **Applications**.
3. Launch Scribe from Applications. The app is code-signed and notarized —
   no security warnings expected.
4. Grant the **Microphone** and **Accessibility** permissions Scribe asks for —
   it needs them to hear you and to paste at your cursor. That's all it does
   with them.

Requires: Apple Silicon Mac, macOS 13+.

## Documentation

Full guides live in [`docs/`](docs/README.md):

- [Getting started](docs/getting-started.md) — install, the first-run setup
  wizard, and the permissions each feature needs
- [Dictation basics](docs/dictation-basics.md) — the start/stop hotkey flow,
  live typing versus auto-paste
- [Recording modes](docs/recording-modes.md) — Dictation, Meeting, and every
  option you can configure
- [Meeting transcription](docs/meeting-transcription.md) — capture both sides of
  a call with speaker labels
- [Transcribe an audio file](docs/transcribe-audio-file.md)
- [Preferences reference](docs/preferences.md) — every setting, including
  storage cleanup
- [Privacy](docs/privacy.md)
- [Troubleshooting](docs/troubleshooting.md) — logs, permissions, and reset

## Reporting problems

This is a beta for testers — bugs and rough edges expected. Open an
[issue](../../issues/new/choose) and pick the **Bug report** template; it walks
you through what happened, what you expected, and the version and permission
details we need. For private or security reports, email
[agent_c@agentc.consulting](mailto:agent_c@agentc.consulting) instead. See
[`docs/troubleshooting.md`](docs/troubleshooting.md) for how to collect logs.

## Privacy

Everything runs locally. Audio is transcribed on your Mac's Neural Engine and
never uploaded anywhere. There is no telemetry.

---

Built by [AgentC Consulting](https://agentc.consulting).
