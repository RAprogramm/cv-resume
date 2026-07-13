# CV — Andrei Rozanov

**Software Engineer** · Rust by choice

[![Build CV](https://github.com/RAprogramm/cv-resume/actions/workflows/build.yml/badge.svg)](https://github.com/RAprogramm/cv-resume/actions/workflows/build.yml)
[![Pages](https://img.shields.io/badge/Web-raprogramm.github.io%2Fcv--resume-f74c00?style=flat&logo=github)](https://raprogramm.github.io/cv-resume/)
[![Typst](https://img.shields.io/badge/Typst-0.15-239dad?style=flat)](https://typst.app)

**→ [View & download online](https://raprogramm.github.io/cv-resume/)**

## Downloads

| Language | Badge |
|----------|-------|
| English | [![EN](https://img.shields.io/badge/EN-blue?style=for-the-badge)](https://github.com/RAprogramm/cv-resume/releases/latest/download/Rozanov_Andrei_CV_en.pdf) |
| Русский | [![RU](https://img.shields.io/badge/RU-blue?style=for-the-badge)](https://github.com/RAprogramm/cv-resume/releases/latest/download/Rozanov_Andrei_CV_ru.pdf) |
| 한국어 | [![KO](https://img.shields.io/badge/KO-blue?style=for-the-badge)](https://github.com/RAprogramm/cv-resume/releases/latest/download/Rozanov_Andrei_CV_ko.pdf) |
| Tiếng Việt | [![VI](https://img.shields.io/badge/VI-blue?style=for-the-badge)](https://github.com/RAprogramm/cv-resume/releases/latest/download/Rozanov_Andrei_CV_vi.pdf) |

ATS-friendly single-column variants: [EN](https://github.com/RAprogramm/cv-resume/releases/latest/download/Rozanov_Andrei_CV_en_ATS.pdf) · [RU](https://github.com/RAprogramm/cv-resume/releases/latest/download/Rozanov_Andrei_CV_ru_ATS.pdf)

## How it works

- **Source:** single [`resume.typ`](resume.typ) (Typst) with an embedded translation table — one file, four languages (`--input lang=en|ru|ko|vi`) plus an ATS single-column layout (`--input layout=ats`); PDFs conform to PDF/A-2b.
- **Fonts:** [Inter](https://rsms.me/inter/) for PDFs in [`fonts/print/`](fonts/print/), JetBrains Mono for the web page in [`fonts/web/`](fonts/web/), Noto Sans CJK KR installed in CI; embedding is verified on every build.
- **CI:** every push to `main` compiles all four PDFs, verifies fonts, publishes a GitHub release, and deploys the [web page](https://raprogramm.github.io/cv-resume/).

## Build locally

```sh
typst compile --font-path fonts/print --input lang=en resume.typ cv_en.pdf
```
