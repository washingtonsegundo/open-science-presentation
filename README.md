# Presentación sobre ciencia abierta — Español

La rama `esp` contiene la versión completa en español de la presentación Beamer de 33 diapositivas. La versión inglesa permanece en `main`.

La presentación aborda ciencia abierta, ciencia de la información y de datos, inteligencia artificial e infraestructuras públicas brasileñas de información científica coordinadas por Ibict. Vincula esta experiencia con el Plan de Acción para la Cooperación Internacional en Ciencia Abierta.

Incluye la conexión con los ODS, los preprints y el modelo de publicar, revisar y curar. Propone un piloto conjunto para el seguimiento de políticas de tecnologías sociales y una evaluación más justa de la investigación, con CoARA como referencia. El guion en español mantiene una distribución orientativa de 20 minutos, que debe ajustarse mediante ensayo.

## Archivos

- [Presentación completa en español (PDF)](open-science-presentation.pdf)
- [Guion en español, diapositiva por diapositiva](presentation-guide.md)
- [Código LaTeX editable](main.tex)

## Compilación local

```bash
make setup
make doctor
make pdf
```

El proceso genera `build/main.pdf` y actualiza `open-science-presentation.pdf` en la raíz.

Para recompilar automáticamente durante la edición:

```bash
make watch
```

Pulse `Control+C` para detenerlo.

## Overleaf

Suba los archivos de esta rama a un proyecto de Overleaf, seleccione `main.tex` como documento principal y utilice **XeLaTeX** para compilar las fuentes multilingües.

## Traducción y diagramas

Se han traducido los textos de las 33 diapositivas y el guion de presentación. Los diagramas TikZ mantienen sus elementos editables. Los diagramas originales de Laguna y Oasisbr conservan su estructura y utilizan rótulos en español superpuestos mediante TikZ, editables en `main.tex`.

Las marcas, los nombres de servicios, las capturas de sus interfaces, los enlaces y los códigos QR se conservan. El QR de dARK en la diapositiva 20 permite escanear o hacer clic para abrir `https://www.dark-pid.net/`. La diapositiva final mantiene los agradecimientos multilingües.

Las cifras, fechas y referencias proceden de la versión original y no se han actualizado durante la traducción.

## Licencia

La presentación, el código LaTeX y los materiales visuales originales se distribuyen bajo [CC BY-NC-SA 4.0](LICENSE.md), salvo indicación contraria.

Las fuentes Noto incluidas en `assets/fonts/` permiten reproducir los distintos sistemas de escritura. Su licencia SIL Open Font License figura en `assets/fonts/OFL.txt`.
