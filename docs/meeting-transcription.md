# Meeting transcription

Meeting mode records a conversation and produces a speaker-labeled transcript.
Unlike Dictation, it captures both your microphone and the audio coming out of
your Mac, so it hears everyone on a call, not just you.

## What Meeting mode does

- **Captures both sides.** It records system audio — the other participants you
  hear through your speakers or headphones — together with your microphone.
- **Labels who spoke.** Instead of pasting text at your cursor, it saves a
  speaker-labeled transcript so you can tell the participants apart.
- **Default shortcut Option + Shift + M.** Press it once to start, press it
  again to stop, from any app.

## Before your first meeting: grant Screen Recording

macOS bundles system-audio capture under the Screen Recording permission, so
Meeting mode needs it. Dictation mode never does.

1. Open **System Settings > Privacy & Security > Screen Recording**.
2. Turn the Scribe toggle on.
3. **Restart Scribe.** macOS only applies this permission when the app launches.

If Meeting mode records but the transcript has none of the other side's audio,
the most common cause is that Screen Recording was granted but Scribe was not
restarted afterward. See
[Troubleshooting](troubleshooting.md#permissions-are-granted-but-a-feature-still-does-not-work).

## Recording a meeting

1. Join or start your call as usual.
2. Press **Option + Shift + M** to start recording.
3. When the meeting ends, press **Option + Shift + M** again to stop.

Scribe transcribes the recording on your Mac and saves a speaker-labeled
transcript. You will find it under **Recent Transcripts** in the menu bar, Dock,
and File menus, and in your recordings folder.

## Speaker labels

Speaker labels (also called diarization) mark which participant said each part
of the transcript. In Meeting mode this is on by default. You can turn it on or
off for any mode that captures system audio, in the mode's editor under
**Audio > Speaker labels**. See
[Recording modes](recording-modes.md#every-configurable-option).

> **Note:** Everything stays on your Mac. Meeting audio is transcribed locally
> and is never uploaded. See [Privacy](privacy.md).
