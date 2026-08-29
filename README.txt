OVERLEAF PACKAGE — OPEN SCIENCE

1. In Overleaf, select “New Project” > “Upload Project”.
2. Upload the ZIP file containing this folder.
3. Keep “main.tex” as the main document.
4. Compile with pdfLaTeX.

LOCAL COMPILATION ON macOS

This project includes a lightweight Tectonic-based environment.

1. Open Terminal in this project folder.
2. Run: make setup
3. Run: make doctor
4. Run: make pdf
5. Open: build/main.pdf

Useful commands:
- make watch   Recompile automatically when main.tex changes
- make clean   Remove auxiliary build files while preserving the PDF

Requirements:
- macOS with Homebrew (https://brew.sh)
- Internet access during the first setup and first compilation

The TeX package cache is stored locally in .cache/ inside this project.

CONTENTS
- main.tex: complete 16:9 Beamer presentation in English (30 slides)
- Makefile and scripts/: local compilation environment
- assets/open-science-hero.png: explanatory research-cycle diagram
- assets/open-infrastructure.png: infrastructure-to-trustworthy-insight diagram
- assets/open-science-brazil.png: Brazilian open-science ecosystem diagram
- assets/knowledge-value-chain.png: Information Science > Data Science > AI diagram
- assets/science-to-sustainable-development.png: scientific infrastructure > SDGs diagram

DESIGN
- Palette: navy, teal, cyan, coral, and warm off-white
- All images are local; the project has no external asset dependencies.
- Image text is intentionally omitted. Labels are rendered in LaTeX for clarity.

SOURCE NOTE
The narrative is a condensed English adaptation of the supplied presentations
and PDF on Open Science, AI, Data Science, Information Science, Brazilian
scientific information infrastructures, the SDGs, Ibict's Open Science actions,
national implementation pathways, and the Brazilian Scientific Research
Information Ecosystem (BrCris), Oasisbr, and the Brazilian Digital Library of
Theses and Dissertations (BDTD). Service information was checked against the
official Ibict websites. The images were newly generated in one consistent style.
