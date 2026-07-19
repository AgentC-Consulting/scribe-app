# Transcribe an audio file

Scribe can transcribe an audio file you already have, instead of recording live.
This is handy for a voice memo, an interview recording, or any audio you saved
earlier.

## How to do it

1. Click the Scribe microphone icon in the menu bar (the command is also in the
   File menu and, if you show Scribe in the Dock, the Dock menu).
2. Choose **Transcribe Audio File...**.
3. Pick an audio file in the file picker.

Scribe transcribes the file on your Mac and, when it finishes, copies the
transcript to your clipboard and shows a "Transcription Complete" notification.
Paste the text wherever you want with Cmd + V.

The transcript is also saved to your recordings folder, named
`Transcribed from file — <timestamp>.md`.

## Supported file types

Scribe accepts these audio formats:

- `.wav`
- `.m4a`
- `.mp3`
- `.aiff`
- `.caf`
- `.flac`

Files that are not already WAV are converted automatically before
transcription, using a converter built into macOS.

## What it does not do

- It does **not** auto-paste. The transcript goes to your clipboard and a saved
  file; you paste it yourself. This is on purpose, so importing a file never
  types into whatever app happens to be in front.
- It does **not** show the floating recording indicator, because nothing is
  being recorded.

## One at a time

Scribe transcribes one file at a time, and it will not import a file while a
recording or another transcription is in progress. If you try, Scribe tells you
to wait for the current task to finish first.

> **Note:** Like everything else in Scribe, file transcription runs entirely on
> your Mac. The audio is never uploaded. See [Privacy](privacy.md).
