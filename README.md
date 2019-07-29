# Template LaTeX Buku Tesis Teknik Elektro ITS

Template buku tesis berbasis LaTeX yang digunakan mahasiswa Teknik Elektro ITS. Dapat digunakan sebagai dasar awal penulisan buku tesis.

WARNING: Modifikasi masih perlu ditambahkan menyesuaikan format resmi yang berlaku.

## Syntax Tambahan

Selain syntax dasar LaTeX, ditambahkan beberapa syntax tambahan untuk mempermudah penulisan.

Gambar 
```latex
\gambar{LOKASI_GAMBAR}{TEXT_CAPTION}{LABEL_REFERENSI}{UKURAN}
```

Rumus 
```latex
\rumus{RUMUS}{LABEL_REFERENSI}
```

### Level penulisan

Bab
```latex
\chapter{chapter}
```

Sub-bab lvl 1
```latex
\section{section}
```

Sub-bab lvl 2
```latex
\subsection{subsection}
```

Sub-bab lvl 3
```latex
\subsubsection{subsubsection}
```

## Saran Setup

Berikut adalah daftar software yang [Aiei](https://github.com/Aiei) gunakan. Akan tetapi, Umumnya tidak akan ada masalah apabila menggunakan software lain berbasis LaTeX (support XeLaTeX).

* [Visual Studio Code](https://code.visualstudio.com/) - Text editor
* [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) - Extension VSCode untuk compile LaTeX
* [TeX Live](https://www.tug.org/texlive/) - Distribusi LaTeX (disarankan download versi ISO)

Apabila menggunakan VSCode, disarankan untuk menambah konfigurasi berikut pada `settings`

```json
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

## Lisensi

Anda dapat mengunduh, menyebarkan, modifikasi dan lain-lain sesuai dengan peraturan lisensi [WTFPL](http://www.wtfpl.net/).