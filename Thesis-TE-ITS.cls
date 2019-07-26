\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Thesis-TE-ITS}[ITS TE Thesis book document class]

\LoadClass[
    a4paper,    % kertas a4
    12pt,       % ukuran font standar 12pt
    twoside,    % bolak-balik
    bahasa      % bahasa indonesia
]{report}

\usepackage[utf8]{inputenc}     % encoding
\usepackage{graphicx}           % support gambar
\usepackage{amsmath}            % support rumus
\usepackage{algpseudocode}      % support pseudocode
\usepackage[bahasa]{babel}      % support bahasa indonesia
\usepackage{titlesec}           % style section dan chapter
\usepackage{fontspec}
\setmainfont{Times New Roman}

\usepackage[
    top=35mm,       % tepi atas 3,5 cm
    left=40mm,      % tepi kiri 4,0 cm
    right=30mm,     % tepi kanan 4,0 cm
    bottom=30mm     % tepi bawah 3,0 cm
]{geometry}

\setlength{\parindent}{1.5cm}           % indentasi 1.5 cm
\usepackage{indentfirst}                % indentasi paragraf pertama
\renewcommand{\baselinestretch}{1.5}    % jarak antar baris

\titleformat    % format BAB
    {\chapter}
    [display]
    {\bfseries\large}
    {BAB \centering\thechapter}
    {0ex}
    {\vspace{0ex}\centering}    
    [\vspace{0ex}]
\titlespacing*
    {\chapter}
    {0pt}
    {-4ex}
    {12pt}

\titleformat    % format section
    {\section}
    {\bfseries\large}
    {\MakeUppercase{\thesection}}
    {1ex}
    {}
\titlespacing
    {\section}
    {0pt}
    {1.5ex}
    {0pt}

% Syntax untuk memasukkan gambar.
% \gambar{LOKASI_GAMBAR}{TEXT_CAPTION}{LABEL_REFERENSI}{UKURAN}
\newcommand{\gambar}[4]{
    \begin{figure}
        \centering
        \includegraphics[width=#4\textwidth]{gambar/#1}
        \caption{#2}
        \label{gambar:#3}
    \end{figure}
}