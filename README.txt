PAQUETE OVERLEAF — CIENCIA ABIERTA EN ESPAÑOL

Rama: esp. La versión inglesa se conserva en main.

1. En Overleaf, seleccione «New Project» > «Upload Project».
2. Suba un ZIP con los archivos de esta rama.
3. Seleccione main.tex como documento principal.
4. Compile con XeLaTeX para utilizar las fuentes multilingües.

COMPILACIÓN LOCAL EN macOS

El proyecto utiliza Tectonic.

1. Abra Terminal en esta carpeta.
2. Ejecute: make setup
3. Ejecute: make doctor
4. Ejecute: make pdf
5. Abra: open-science-presentation.pdf

Comandos adicionales:
- make watch: recompila automáticamente al editar main.tex.
- make clean: elimina auxiliares y conserva build/main.pdf.

Requisitos: macOS con Homebrew e Internet para la configuración inicial
 y la descarga de paquetes TeX que aún no estén en la caché local.

CONTENIDO
- main.tex: presentación Beamer 16:9 en español, 33 diapositivas.
- open-science-presentation.pdf: presentación compilada.
- presentation-guide.md: guion completo en español, con tiempos orientativos.
- Makefile y scripts/: entorno de compilación local.
- assets/: diagramas, capturas, marcas, fuentes y códigos QR.

Los textos y los rótulos de los diagramas se han traducido al español.
Las marcas, las capturas de interfaces y el cierre multilingüe se conservan.
Los enlaces y códigos QR siguen activos, incluido el QR clicable de dARK.

Consulte README.md para más detalles y LICENSE.md para la licencia.
