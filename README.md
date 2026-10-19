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

Every `.tex` is self-contained — it carries its own preamble, so you can edit
one file's packages and macros without touching any other class.

## Starting a new class

```bash
mkdir 6_7900 && cp _template/hw.tex 6_7900/hw1.tex
git add -A && git commit -m "start 6_7900" && git sync
```

No new Overleaf project, no new GitHub repo, no new submodule.

## Compiling locally

```bash
latexmk -pdf 15_081/hw7.tex
```

Files using `minted` (e.g. `15_081/hw2.tex`) need `-shell-escape`; Overleaf
enables it automatically:

```bash
latexmk -pdf -shell-escape 15_081/hw2.tex
```

## Notes

- In Overleaf, right-click the `.tex` you're working on → **Set as Main
  Document** when switching between classes.
- Compiled PDFs are tracked on purpose — they're the submitted artifacts.
