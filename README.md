# Scribe

Scribe is a free dictation app for macOS. Press a global hotkey, speak, and
Scribe transcribes your speech **entirely on-device** and pastes the text into
whatever app you're working in. No cloud, no accounts, no audio ever leaves
your machine.

- **Menu bar app** — lives in the status bar, no Dock icon
- **Global hotkey recording** — start/stop dictation from anywhere
- **Local transcription** — on-device speech-to-text (Parakeet on the Apple
  Neural Engine)
- **Live dictation** — streaming transcription while you speak
- **Auto-paste** — text lands at your cursor; your clipboard is restored after
- **Recording modes** — per-mode behavior, optional post-processing command
- **Transcript history** — recent transcripts from the menu

## Install (beta)

1. Download `Scribe-Installer.dmg` from the [latest release](../../releases/latest).
2. Open the DMG and drag **Scribe** into **Applications**.
3. First launch: right-click Scribe.app → **Open**. If macOS still blocks it,
   go to **System Settings → Privacy & Security** and click **Open Anyway**.
   (The app is code-signed; notarization for a friction-free first launch is
   in progress for the next beta.)
4. Grant the **Microphone** and **Accessibility** permissions Scribe asks for —
   it needs them to hear you and to paste at your cursor. That's all it does
   with them.

Requires: Apple Silicon Mac, macOS 14+.

## Feedback

This is a beta for testers — bugs and rough edges expected. Open an
[issue](../../issues) with what happened and what you expected.

## Privacy

Everything runs locally. Audio is transcribed on your Mac's Neural Engine and
never uploaded anywhere. There is no telemetry.

---

Built by [AgentC Consulting](https://agentc.consulting).
