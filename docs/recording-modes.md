# Recording modes

A recording mode bundles everything about how a recording behaves: its keyboard
shortcut, what audio it captures, where files are saved, and what happens to the
transcript. Scribe ships with two modes and lets you add your own.

## Built-in modes

### Dictation

Records your microphone and pastes the finished transcript at your cursor.
Default shortcut **Option + Shift + R**. The transcript is also saved as a
Markdown file next to the audio recording.

Its defaults:

| Option | Default |
|---|---|
| Keyboard shortcut | Option + Shift + R |
| Capture system audio | Off |
| Auto-paste | On |
| Live type while recording | Off |
| Speaker labels | Off |

### Meeting

Records system audio and your microphone together — both sides of a call — and
saves a speaker-labeled transcript instead of pasting. Default shortcut
**Option + Shift + M**. Requires the Screen Recording permission (see
[Getting started](getting-started.md#screen-recording-for-meeting-mode-only)).

Its defaults:

| Option | Default |
|---|---|
| Keyboard shortcut | Option + Shift + M |
| Capture system audio | On |
| Auto-paste | Off (saves a transcript instead) |
| Live type while recording | Off |
| Speaker labels | On |

For more on Meeting mode, see
[Meeting transcription](meeting-transcription.md).

## Every configurable option

Open **Preferences** from the menu bar icon, find the **Recording Modes**
section, and click a mode to edit it (or **Add Mode** to create one). The editor
groups the options into sections:

- **Mode** — the mode's **name**, and a **keyboard shortcut**. Click the record
  button next to the shortcut, then press the key combination you want. Press
  Esc to cancel capture.
- **Output** — a per-mode **save folder** override. Leave it empty to use the
  global Storage location from Preferences; set it to send this mode's
  recordings somewhere specific.
- **Audio** — **Capture system audio**. Off records the microphone only; on
  records system audio together with the microphone (this is what makes a mode
  Meeting-style). Turning it on reveals a **Speaker labels** toggle, which marks
  who said what in the saved transcript.
- **After Transcription** — **Auto-paste** pastes the finished transcript at
  your cursor when it is on, or saves it without pasting when it is off. **Live
  type while recording** types each completed phrase as you speak, in addition
  to the final saved file. See
  [Dictation basics](dictation-basics.md#live-typing-versus-auto-paste).
- **Post-processing (advanced)** — an optional shell command that Scribe runs on
  each finished transcript, with the transcript's file path passed to it. Use
  this to feed transcripts into your own scripts. Leave it empty if you do not
  need it.

Click **Save** to apply your changes.

## Adding and deleting modes

- **Add Mode** creates a new mode with the same editor described above.
- When editing an existing mode, a **Delete Mode** option is available. It is
  hidden when only one mode remains — Scribe always keeps at least one mode.

## When changes take effect

Changes apply to the next recording that starts. A recording already in progress
keeps the settings it started with.

> **Note:** Recent transcripts are one click away: the menu bar icon, the Dock
> menu, and the File menu all list them under **Recent Transcripts**.
