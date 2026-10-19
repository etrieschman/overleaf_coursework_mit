# overleaf_coursework_mit

One Overleaf project for **all** MIT coursework writeups — one folder per class.
Replaces the old one-Overleaf-project-per-class setup, so starting a class costs
a `mkdir` instead of a new project + repo + submodule.

Synced to Overleaf via git-bridge and to GitHub via `origin`. Full workflow:
`~/Library/Mobile Documents/com~apple~CloudDocs/dev_overleaf_workflow.md`.

## Layout

```
preamble.tex      shared packages + macros, used via \input{preamble}
latexmkrc         local compile settings (sets -shell-escape for minted)
_template/hw.tex  copy this to start a new writeup
15_081/           Mathematical programming
6_S974/
```

## Notes

- In Overleaf, right-click the `.tex` you're working on → **Set as Main
  Document** when switching between classes.
- `preamble.tex` sets `margin=0.75in`; override per-file with `\geometry{...}`
  (cheatsheets do this).
- Writeups predating this repo keep their own self-contained preambles — only
  new work started from `_template/` uses the shared one.
