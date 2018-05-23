\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_report}[2018/04/28 Custom report class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Font language and so on
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[italian]{babel}
\RequirePackage{microtype}

% Layout
\RequirePackage[margin=1.8cm]{geometry}

% Colors
\RequirePackage{xcolor}
\definecolor{MSBlue}{rgb}{.204,.353,.541}
\definecolor{MSLightBlue}{rgb}{.31,.506,.741}

% TikZ
\usepackage{tikz}
\usetikzlibrary{calc}
\usepackage{pgfplots}
\pgfplotsset{compat=1.14}

% Titlesec
\RequirePackage[nobottomtitles]{titlesec}
\setcounter{secnumdepth}{0}
\titleformat*{\section}{%
	\large\bfseries\sffamily\color{MSBlue}}
\titleformat*{\subsection}{%
	\normalsize\bfseries\sffamily\color{MSLightBlue}}
\titleformat*{\subsubsection}{%
	\sffamily}

% SI units
% Per M intendi mole o molare? come lo indico?%
\RequirePackage{siunitx}
\sisetup{
	range-phrase=--, 
    range-units=single,
    input-product=\cdot,
    output-product=\cdot,
    quotient-mode=fraction}
\DeclareSIUnit\Molar{\textsc{M}}

% Chemicals
\RequirePackage{chemformula}

% Greek letters in text mode
\RequirePackage{textgreek}

% Highlights
\RequirePackage{soulutf8} % Like `soul` but provide utf8 support

% Tables
\RequirePackage{booktabs}
\RequirePackage{multirow}

% Figures
\RequirePackage{graphicx,subcaption}

% Title
\title{
	\textbf{Laboratorio Metodologie Biomolecolari} \\
	\textit{Corso di Laurea Triennale in Scienze Biologiche} \\
	\textit{Anno Accademico 2017-2018} \\
	\textit{Modulo: Biologia Molecolare - Professor Solomon Nergadze}
}

% Header
\providecommand{\header}{}
\renewcommand{\header}[2]{%
\newpage
\twocolumn[
\begin{center}%
{\normalsize\textbf{#1}\par\textit{#2}}%
\end{center} \vskip 2.5em]}

\RequirePackage{xfrac}

\RequirePackage{textcomp}

