\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Thesis-TE-ITS}[ITS TE Thesis book document class]

\LoadClass[
    a4paper,    % kertas a4
    12pt,       % ukuran font standar 12pt
    twoside,    % bolak-balik
    bahasa      % bahasa indonesia
]{report}

\usepackage{graphicx}           % support gambar
\usepackage{amsmath}            % support rumus
\usepackage{algpseudocode}      % support pseudocode
\usepackage[bahasa]{babel}      % support bahasa indonesia
\usepackage{titlesec}           % style section dan chapter
\usepackage{fontspec}           % support custom font
\usepackage{indentfirst}        % indentasi paragraf pertama
\usepackage{multirow}           % support multirow pada tabel
\usepackage{longtable}          % support multi-page pada tabel
\usepackage{caption}            % support styling caption
\usepackage{booktabs}           % support styling border tabel
\usepackage{etoolbox}
\usepackage{float}
\usepackage[bookmarksnumbered,pdfborder={0 0 0}]{hyperref}  % clickable pdf tanpa style
\usepackage{setspace}

\usepackage[
    top=35mm,       % tepi atas 3,5 cm
    left=40mm,      % tepi kiri 4,0 cm
    right=30mm,     % tepi kanan 4,0 cm
    bottom=30mm     % tepi bawah 3,0 cm
]{geometry}

\setmainfont{Times New Roman}           % font times new roman
\setlength{\parindent}{1.5cm}           % indentasi 1.5 cm
%\renewcommand{\baselinestretch}{1.5}    % basis jarak antar baris
\renewcommand{\arraystretch}{1}       % tinggi row tabel
\captionsetup{
    format=hang,                % caption yang melebih satu baris jatuh tepat dibawah text
    singlelinecheck=false,      % mencegah caption 1 baris menghiraukan settingan
    justification=raggedright,  % caption rata kiri
    labelsep=space,             % capton tanpa colon(:)
    aboveskip=6pt,              % margin vertical caption
}

% daftar isi, gambar, tabel.
\usepackage{titlesec}
\usepackage{titletoc}
%\dottedcontents{chapter}[-12pt]{\vspace{6pt}BAB \hspace{10pt}}{10pt}{3pt}
\dottedcontents{chapter}[0pt]{\vspace{12pt}}{12pt}{3pt}
\dottedcontents{section}[24pt]{\vspace{6pt}}{24pt}{3pt}
\dottedcontents{subsection}[42pt]{\vspace{6pt}}{36pt}{3pt}
\renewcommand{\figurename}{Gambar}
\dottedcontents{figure}[0pt]{Gambar \hspace{24pt}}{24pt}{3pt}
\renewcommand{\tablename}{Tabel}
\dottedcontents{table}[0pt]{Tabel \hspace{24pt}}{24pt}{3pt}

% mencegah hyphen yang tidak perlu
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

% halaman sengaja dikosongkan
% "Fachri made this, I have no idea how this works" -- Aiei
\def\kosong{
  \vspace*{\fill}
  \begin{center}\textit{Halaman ini sengaja dikosongkan}\end{center}
  \vfill
}
\patchcmd{\cleardoublepage}{\hbox{}}{\kosong}{}{}

\titleformat    % format BAB
    {\chapter}
    [display]
    {\bfseries\large}           % huruf besar
    {BAB \centering\thechapter} % \chapter = bab, rata tengah
    {0ex}
    {\vspace{0ex}\centering}    
    [\vspace{0ex}]
\titlespacing*
    {\chapter}
    {0pt}
    {-4ex}
    {4ex}

\titleformat{\section}{\bfseries}{\MakeUppercase{\thesection}}{1ex}{}
\titlespacing{\section}{0pt}{3ex}{0pt}

\titleformat{\subsection}{\bfseries}{\MakeUppercase{\thesubsection}}{1ex}{}
\titlespacing{\subsection}{0pt}{3ex}{0pt}

\titleformat{\subsubsection}{}{\MakeUppercase{\thesubsubsection}}{1ex}{}
\titlespacing{\subsubsection}{0pt}{3ex}{0pt}

\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{2}

\raggedbottom   % mencegah jarak yang tidak konsisten antar paragraf

\newcommand{\bab}[1]{
    \chapter{#1}
}

% syntax bantuan untuk memasukkan gambar.
% \gambar{LOKASI_GAMBAR}{TEXT_CAPTION}{LABEL_REFERENSI}{UKURAN}
\newcommand{\gambar}[4]{
    \begin{figure}[H]
        \centering
        \includegraphics[width=#4\textwidth]{gambar/#1}
        \caption{#2}
        \label{#3}
    \end{figure}
}

% syntax bantuan untuk memasukkan rumus
% \rumus{RUMUS}{LABEL_REFERENSI}
\newcommand{\rumus}[2]{
    \begin{equation}
        #1
        \label{#2}
    \end{equation}
}

\newcommand{\heading}[1]{
    \begin{center}
    \large\textbf{#1}
    \end{center}
    \vspace{1ex}
}