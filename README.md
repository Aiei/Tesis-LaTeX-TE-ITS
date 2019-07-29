# Template LaTeX Buku Tesis Teknik Elektro ITS



## Syntax Tambahan

Selain syntax dasar LaTeX, ditambahkan beberapa syntax tambahan untuk mempermudah penulisan.

Gambar 
```
\gambar{LOKASI_GAMBAR}{TEXT_CAPTION}{LABEL_REFERENSI}{UKURAN}
```

Rumus 
```
\rumus{RUMUS}{LABEL_REFERENSI}
```

### Level penulisan

Bab
```
\chapter{chapter}
```

Sub-bab lvl 1
```
\section{section}
```

Sub-bab lvl 2
```
\subsection{subsection}
```

Sub-bab lvl 3
```
\subsubsection{subsubsection}
```

## Saran Setup

Berikut adalah daftar software yang [Aiei](https://github.com/Aiei) gunakan. Akan tetapi, Umumnya tidak akan ada masalah apabila menggunakan software lain berbasis LaTeX (support XeLaTeX).

* [Visual Studio Code](https://code.visualstudio.com/) - Text editor
* [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) - Extension VSCode untuk compile LaTeX
* [TeX Live](https://www.tug.org/texlive/) - Distribusi LaTeX (disarankan download versi ISO)

Apabila menggunakan VSCode, disarankan untuk menambah konfigurasi berikut pada `settings`

```
"latex-workshop.latex.recipes": [
    {
        "name": "latexmk",
        "tools": [
            "latexmk"
        ]
    }
],
"latex-workshop.latex.tools": [
    {
        "name": "latexmk",
        "command": "latexmk",
        "args": [
            "-xelatex",
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-outdir=%OUTDIR%",
            "%DOC%"
        ],
        "env": {}
    }
],
"latex-workshop.latex.outDir": "%DIR%/output"
```