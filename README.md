# Open Science presentation

An English-language Beamer presentation about Open Science, information and
data science, artificial intelligence, and Brazilian public scientific
information infrastructures led by Ibict. The narrative connects Brazil's
experience to the Action Plan for International Cooperation in Open Science.

## Presentation files

- [View or download the latest compiled presentation (PDF)](open-science-presentation.pdf)
- [Read the complete slide-by-slide presentation guide](presentation-guide.md)
- [Edit the LaTeX source](main.tex)

## Local compilation

```bash
make setup
make doctor
make pdf
```

The compiled presentation is written to `build/main.pdf`.

The repository also includes the latest compiled release at the project root:
[open-science-presentation.pdf](open-science-presentation.pdf).

For automatic recompilation while editing:

```bash
make watch
```

Press `Control+C` to stop watching.

## Overleaf

Upload the repository contents to an Overleaf project and select `main.tex` as
the main document.

## License

The presentation, LaTeX source, and original visual materials are licensed
under [CC BY-NC-SA 4.0](LICENSE.md), unless otherwise indicated.

## Editable diagrams

All presentation diagrams are written in TikZ directly in `main.tex`. Their
labels, nodes, coordinates, and arrows can be edited without external image
software. The reusable diagram definitions are grouped near the beginning of
the file under `Editable monochrome diagrams`.

The multilingual closing slide uses embedded Noto fonts from `assets/fonts/`
so that Latin, Indic, Ethiopic, and Chinese scripts render consistently in
local builds and Overleaf.
Those fonts are distributed under the SIL Open Font License in
`assets/fonts/OFL.txt`.
