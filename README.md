# Scribe

<img src="docs/img/about-logo.png" width="64" alt="The Scribe app icon">

**Scribe is a free, native macOS app for dictation and transcription** — built
for Apple Silicon, macOS 13 and later. Press a global hotkey, speak, and
Scribe types your words at your cursor, in any app. Transcription runs
**entirely on-device** on your Mac's Neural Engine: no cloud, no account, no
audio ever leaves your machine.

**[Download the latest release](../../releases/latest)** — free, and free for
life.

## What it does

- **Hotkey dictation, anywhere** — press a global shortcut, talk, press it
  again. Your words are typed at your cursor in whatever app you're working
  in: a note, an email, a chat box, an editor.
- **On-device speech recognition** — NVIDIA's Parakeet v3 running on the
  Apple Neural Engine, transcribing at roughly **30x real-time** on Apple
  Silicon. Covers 25 European languages — see
  [Supported languages](#supported-languages).
- **Meeting transcription with speaker labels** — captures system audio
  (everyone you hear through your speakers or headphones) together with your
  microphone, and saves a speaker-labeled transcript. See
  [Meeting transcription](docs/meeting-transcription.md).
- **Transcribe audio files you already have** — hand it a `.wav`, `.m4a`,
  `.mp3`, `.aiff`, `.caf`, or `.flac` recording and get a transcript, no
  recording required. See [Transcribe an audio file](docs/transcribe-audio-file.md).
- **Recording modes** — Dictation and Meeting ship built in; add your own
  with a custom shortcut, save folder, and an optional post-processing
  command. See [Recording modes](docs/recording-modes.md).
- **Retention on your terms** — recordings and transcripts save to a folder
  you choose. Automatic cleanup is off by default; turn it on and it deletes
  old **audio only**, never your transcripts. See [Privacy](docs/privacy.md).
- **No cloud, no accounts, no signup** — nothing to sign up for, nothing to
  log into, no telemetry.
- **Free for life** — no trial, no subscription, no paywall. (A separate
  premium product may come later; the dictation app you download today stays
  free, permanently.)

<img src="docs/img/menubar-icon.png" width="96" alt="The Scribe microphone icon in the macOS menu bar">

*Scribe lives in your menu bar — click the icon any time for recent
transcripts, recording modes, and Preferences.*

## Built different

Scribe isn't a wrapper around a cloud API, and it isn't Electron. The whole
app is roughly 7,600 lines of Crystal, plus one small Objective-C bridge
exposing AppKit, Carbon hotkeys, CGEvent typing, and ScreenCaptureKit as a
flat C API — that's the entire platform layer. The compiled app binary is
about **7 MB**. Speech recognition talks to the Neural Engine through a Swift
package Crystal calls directly; the UI is SwiftUI, driven from Crystal. Full
story on the Crystal forum:
https://forum.crystal-lang.org/t/scribe-a-fully-native-notarized-macos-dictation-app-written-in-crystal-free-on-device-shipping-today/9066

## Install (beta)

1. Download `Scribe-Installer.dmg` from the [latest release](../../releases/latest).
2. Open the DMG and drag **Scribe** into **Applications**.
3. Launch Scribe from Applications. The app is code-signed and notarized —
   no security warnings expected.
4. Grant the **Microphone** and **Accessibility** permissions Scribe asks
   for — it needs them to hear you and to paste at your cursor. That's all
   it does with them. A first-run setup wizard walks you through both.

<img src="docs/img/wizard-perm-step1.png" width="480" alt="Setup wizard prompting to grant Accessibility access">

Requires: Apple Silicon Mac, macOS 13+.

## Supported languages

Scribe transcribes with NVIDIA's Parakeet v3 model, running fully on-device,
and auto-detects which language you're speaking — there's nothing to select.

Bulgarian, Croatian, Czech, Danish, Dutch, English, Estonian, Finnish,
French, German, Greek, Hungarian, Italian, Latvian, Lithuanian, Maltese,
Polish, Portuguese, Romanian, Russian, Slovak, Slovenian, Spanish, Swedish,
Ukrainian.

That's 25 European languages. It does **not** yet cover other languages
(Arabic, Japanese, Mandarin, Hindi, Korean, and others outside that set) — if
yours isn't listed, Scribe will still record, but the transcript won't be
accurate. Preferences also offers **Parakeet v2**, an English-only model, if
you'd rather use that instead. See [Supported languages](docs/languages.md)
for the full details.

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
- [Supported languages](docs/languages.md) — the full language list and how
  detection works
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
never uploaded anywhere. There is no telemetry. See
[`docs/privacy.md`](docs/privacy.md) for the full picture.

---

Built by [AgentC Consulting](https://agentc.consulting).

Scribe is free, closed-source software — see the [license](LICENSE). It stands
on open-source software and one openly-licensed speech model; full credits and
their licenses are in [ACKNOWLEDGEMENTS.md](ACKNOWLEDGEMENTS.md).
