# Guía para Ingreso a nivel superior

## Estructura del repositorio

A continuación se explican el uso de carpetas de este repositorio

* `example`  Contiene un ejemplo de todas las funcionalidades que provee la biblioteca `kabook`, en el se puede encontrar 
  * Un pdf que tiene por nombre `example.pdf`, se recomienda revisarlo para ver todos los elementos que pueden usar para desglosar su contenido.
  * Existen un directorio llamado `chapters`, en el cual viene el código que produce el documento final, cada capitulo esta contenido en un archivo con el fin de no tener un archivo muy grande y además de tener todo lo más modularizado posible
* El directorio `styles` contiene todos los estilos que hacen posible el layout final del libro.
* La carpeta `materias` es analoga la carpeta `example/chapters` , en la siguiente sección se aplica a detalle la relación entre los capitulos y las materias.



## Estructura del libro

Para la estructura del libro aprovecharemos la estructura que usualmente nos provee LaTeX, la cual en orden jerárquico es:

* part
* chapter
* section
* subsection
* subsection
* subsubsection
* paragraph
* subparagraph

Para más información sobre la estructura de un libro en LaTeX, [click aquí](https://www.overleaf.com/learn/latex/Sections_and_chapters)

Para nuestro caso tomaremos las siguientes analogías:

* part para materias, por ejemplo matemáticas, historia, español, biología, etc.
* chapter para las ramas de las materias, por ejemplo:
  * En matemáticas: habilidad matemática, aritmética, álgebra, trigonometría, cálculo diferencial, ...
  * Física: mecánica, hidraúlica, electricidad y magnetismo, ondas, etc.
  * Historia, como sugerencia, las ramas sería historia de universal e historia de México
  * Biología, Geografía, Filosofía y algunas otras puede que no tengas ramificaciones por lo cual para empezar a desglosar los temas se debe considera que part = chapter

Por lo anterior, en este repositorio se han creado la siguiente estructura de carpetas: 

```sh
materias
├── fisica
│   ├── estatica
│   └── hidraulica
└── matematicas
    ├── calcdif
    │   ├── assets
    │   │   ├── monalisa.jpg
    │   │   └── seaside.jpeg
    │   ├── main.tex
    │   └── secciones
    │       └── 01_limites.tex
    ├── main.tex
    └── trigonometria
        ├── assets
        │   ├── monalisa.jpg
        │   └── seaside.jpeg
        ├── main.tex
        └── secciones
            ├── 01_angulo.tex
            └── 02_clasiftrig.tex
```

Al descargar este repositorio no apareceran la carpeta de fisica ya que esta de momento no tiene ningún archivo y por ello *git* (el controlador de versiones) no las toma en cuenta, sin embargo se recomienda seguir la jerarquía presentada en la figura de arriba, la cual se describe a continuación:

* La carpeta de *matematicas* (La cuál es equivalemente a una *parte*, en términos de la estructura de un documento LaTeX) contiene carpetas que representan todas las ramas de dicha materia, para este caso: *trigonometria*, *calcdif*, etc.
  * Además la carpeta tiene un archivo llamada `main.tex`, en dicho archivo se da de alta a las ramas de cada materia
  * Por otra parte cada rama (que en estructura de  un documento LaTeX representa un *capítulo*) tiene a su vez su archivo `main.tex` que es en donde se dan de alta los temas que se desarrollan por cada *capítulo*. 
  * Los temas de cada capítulo debe estar en un carpeta llamada secciones

La estructura puede parecer un poco engorrosa sin embargo ayuda a evitar largos bloques de código y permite que cada módulo sea independiente de otros.

Se recomienda seguir esta estructura de carpetas para evitar problemas de integración (de archivos).

Por último se recomienda numerar los archivos de las seciones para que estos se muestren en orden en cualquier gestor de archivos, por ejemplo:

```sh
└── secciones
    ├── 01_angulo.tex
    └── 02_clasiftrig.tex
    └── 03_razonestrig.tex
```

Por último, notar que las imágenes se guardan por *capítulo*, en una carpeta llamada *assets* y se apunta a esa carpeta con la ayuda de `graphicspath{{/the/path}}`

Para entender mejor lo que hace la plantilla se recomienda explorar los archivos y tener en cuenta la explicación de esta sección.

## Los estilos

Los estilos que de esta plantilla no son los finales, sin embargo se recomienda respetar la estructura que la migración a los estilos finales sea sencilla. Por ejemplo, en el caso de las matemáticas o física suelen haber definiciones, para lo cual esta plantilla tiene integrada un ambiente llamado `definition`, el cual provee de un estilo sencillo: una caja beige que contiene dentro la definición

![definition](img/definition.png)

A pesar de ser muy simple, podemos empezar con estos estilos e irlos mejorando sobre la marcha.

## Créditos

La plantilla `kaobook` fue creada y es matenida por  [Federico Marotta](mailto:federicomarotta@mail.com) y se puede encontrar en el sitio https://www.latextemplates.com/template/kaobook, además en dicho sitio se puede encontrar

* La licencia de uso
* Las intrucciones de compilación
* Y la previsualización completa de todo el documento.

