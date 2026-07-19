# Acknowledgements

Scribe is closed-source, but it stands on open-source software and one
openly-licensed speech model. This page lists everything bundled in the app or downloaded
by it on demand, with its license and a link to the original project.

## Speech recognition model

**Parakeet TDT 0.6B v3** — Copyright NVIDIA Corporation. Converted to Core ML
by FluidInference, distributed at
https://huggingface.co/FluidInference/parakeet-tdt-0.6b-v3-coreml
Change from the original: converted to Core ML format for on-device Apple
Neural Engine inference; no retraining or fine-tuning.
Licensed under Creative Commons Attribution 4.0 International (CC BY 4.0):
https://creativecommons.org/licenses/by/4.0/
No endorsement by NVIDIA or FluidInference of Scribe is implied.

**Speaker-diarization model** (downloaded on demand for Meeting mode's
speaker labels) — Pyannote-derived (base: pyannote/speaker-diarization-community-1,
with WeSpeaker speaker embeddings), converted to Core ML by FluidInference,
distributed at https://huggingface.co/FluidInference/speaker-diarization-coreml
Licensed under Creative Commons Attribution 4.0 International (CC BY 4.0):
https://creativecommons.org/licenses/by/4.0/
No endorsement of Scribe by the model authors is implied.

## Bundled libraries (Contents/Frameworks, dynamically linked)

- **LibYAML** — MIT License — https://github.com/yaml/libyaml
- **OpenSSL 3** (libssl, libcrypto) — Apache License 2.0 —
  https://www.openssl.org/
- **PCRE2** — BSD 3-Clause License (with PCRE2 binary-package exemption) —
  Copyright (c) 1997-2007 University of Cambridge; Copyright (c) 2007-2024
  Philip Hazel; Copyright (c) 2009-2024 Zoltan Herczeg — https://pcre.org/
- **Boehm-Demers-Weiser Garbage Collector (bdwgc)** — MIT-style license
  ("permission is hereby granted... provided the above notices are
  retained") — https://www.hboehm.info/gc/
- **FluidAudio** — Apache License 2.0 —
  https://github.com/FluidInference/FluidAudio (accessed via our fork,
  https://github.com/crimson-knight/FluidAudio)

## Compiler and language

- **Crystal** (compiler, runtime, and standard library) — Apache License
  2.0 with Runtime Library Exception — https://crystal-lang.org/ — built
  with our own fork, https://github.com/crimson-knight/crystal
  (branch: incremental-compilation)

## Compiled-in Crystal libraries

The following are Crystal source libraries compiled into the single Scribe
binary; they are not separately redistributed.

- **Amber Framework** — MIT License — https://github.com/amberframework/amber
- **Grant** (ORM) — MIT License — https://github.com/crimson-knight/grant
- **Asset Pipeline** — MIT License — Copyright (c) Seth Tucker —
  https://github.com/amberframework/asset_pipeline
- **crystal-audio** — MIT License — Copyright (c) crimson-knight —
  https://github.com/crimson-knight/crystal-audio
- **llamero** — MIT License — Copyright (c) crimson-knight —
  https://github.com/crimson-knight/llamero
- **crystal-pg** — BSD 3-Clause License — Copyright (c) 2015, Will Leinweber
  — https://github.com/will/crystal-pg
- **crystal-mysql** — MIT License — https://github.com/crystal-lang/crystal-mysql
- **crystal-sqlite3** — MIT License —
  https://github.com/crystal-lang/crystal-sqlite3
- **crinja** — Apache License 2.0 — Copyright 2017 Johannes Müller —
  https://github.com/straight-shoota/crinja
- **db, amber_router, habitat, kilt, slang, backtracer,
  content_disposition, exception_page, compiled_license, gemma, awscr-s3,
  awscr-signer** — each MIT License; see their respective GitHub
  repositories for full text.

Full license texts for the above are available at each project's linked
repository. Apache License 2.0 full text: https://www.apache.org/licenses/LICENSE-2.0
MIT License full text: https://opensource.org/licenses/MIT
BSD 3-Clause full text: https://opensource.org/licenses/BSD-3-Clause

Support: agent_c@agentc.consulting
