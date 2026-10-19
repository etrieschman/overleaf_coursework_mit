# overleaf_coursework_mit

One Overleaf project for **all** MIT coursework writeups — one folder per class.
Replaces the old one-Overleaf-project-per-class setup, so starting a class costs
a `mkdir` instead of a new project + repo + submodule.

Synced to Overleaf via git-bridge and to GitHub via `origin`. Full workflow:
`~/Library/Mobile Documents/com~apple~CloudDocs/dev_overleaf_workflow.md`.

## Layout

```
_template/hw.tex  copy this to start a new writeup
15_081/           Mathematical programming
6_S974/
```

## Notes

- Every `.tex` is self-contained — it carries its own preamble, so editing one
  file's packages and macros touches no other class.
- In Overleaf, right-click the `.tex` you're working on → **Set as Main
  Document** when switching between classes.
- Compiled PDFs are tracked on purpose — they're the submitted artifacts.
