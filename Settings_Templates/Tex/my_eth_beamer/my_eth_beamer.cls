% **** ===================================================================
% SUBJECT style file for ETH beamer slide deck (German)
% AUTHORS Tobias Schoch, August 19, 2024
% LICENSE GPL > 2
% **** ===================================================================
\LoadClass[framenumber,t,aspectratio=169,11pt]{beamer}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eth_beamer}[2024/08/19]

% **** -------------------------------------------------------------------
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage[english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{doi}
\RequirePackage{pgf}
\RequirePackage{setspace}
\RequirePackage{xspace}
\RequirePackage{natbib}

\usepackage{tikz}
\usetikzlibrary{backgrounds, positioning}

\RequirePackage{doi}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{enumerate}

% **** -------------------------------------------------------------------
\newcommand{\version}{\today}

% **** -------------------------------------------------------------------
% Textliche Abkürzungen und Bezeichnungen
\newcommand{\zB}{\mbox{z.\,B.}\xspace}          % z.B.
\newcommand{\ddh}{\mbox{d.\,h.}\xspace}         % d.h.
\newcommand{\ua}{\mbox{u.\,a.}\xspace}          % u.a.
\newcommand{\va}{\mbox{v.\,a.}\xspace}          % v.a.
\newcommand{\iA}{\mbox{i.\,A.}\xspace}          % i.A.
\newcommand{\idR}{\mbox{i.\,d.\,R.}\xspace}     % i.d.R.

% **** -------------------------------------------------------------------
% these two lines fix the error: LaTeX Error: Too many math alphabets used in
% version normal.
\newcommand\hmmax{0}
\newcommand\bmmax{0}

% math
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{bbm}
\RequirePackage{mathrsfs}

\numberwithin{equation}{section}

% **** -------------------------------------------------------------------
% colors
\definecolor{fhnwblue}{RGB}{0,51,121}
\definecolor{magenta}{RGB}{145,5,106}

% **** -------------------------------------------------------------------
% base font
\usepackage{helvet}
\usepackage{mathptmx} % fatter math font
\usefonttheme[onlymath]{serif}
\usepackage{lmodern}
\renewcommand{\ttdefault}{cmtt}

\newcommand{\goto}{$\color{magenta}{\boldsymbol{\Rightarrow}}$}

% use 1.1 line spread (setspace)
\setstretch{1.1}

% **** -------------------------------------------------------------------
% beamer-specific definitions

\setbeamersize
{
    text margin left=0.5cm,
    text margin right=1cm,
    sidebar width left=0.5cm
}

\setbeamercolor{frametitle}{fg=fhnwblue}
\setbeamerfont{frametitle}{series=\bfseries}

\setbeamerfont{framesubtitle}{size=\large}

\setbeamercolor{section in toc}{fg=fhnwblue,bg=white}
\setbeamertemplate{navigation symbols}{}
\setbeamercovered{transparent}

\setbeamertemplate{enumerate items}[default]

\setbeamertemplate{itemize/enumerate subbody begin}{\normalsize}

\setbeamercolor{enumerate item}{fg=fhnwblue}
\setbeamercolor{enumerate subitem}{fg=magenta}
\setbeamercolor{enumerate subsubitem}{fg=fhnwblue}

\setbeamercolor{itemize item}{fg=fhnwblue}
\setbeamercolor{itemize subitem}{fg=black}
\setbeamercolor{itemize subsubitem}{fg=fhnwblue}
\setbeamertemplate{itemize subitem}{--}

\setbeamercolor{description item}{fg=fhnwblue}

\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamercolor{block title}{bg=gray!30, fg=black}
\setbeamercolor{block body}{bg=gray!10, fg=black}

\setbeamercolor{caption name}{fg=fhnwblue}
\setbeamerfont{caption name}{series=\bfseries}

%----------------------------
% thm-type settings of beamer
\setbeamertemplate{theorems}[numbered]

\setbeamertemplate{theorem begin}{%
    \begin{\inserttheoremblockenv}{%
        \textcolor{fhnwblue}{
            \normalsize
            \inserttheoremheadfont
            \inserttheoremname
            \inserttheoremnumber
            \ifx\inserttheoremaddition\@empty\else\ {%
                \normalfont (\inserttheoremaddition)}%
            \fi%
            \inserttheorempunctuation
        }%
    }%
}
\setbeamertemplate{theorem end}{\end{\inserttheoremblockenv}}

%----------------------------
% amsthm-type definitions
\newtheoremstyle{Bspstyle}% name
{3pt}% Space above
{3pt}% Space below
{}% Body font
{}% Indent amount
{\bfseries}% Theorem head font
{\normalfont.}% Punctuation after theorem head
{.5em}% Space after theorem head
{}% Theorem head spec (can be left empty, meaning ‘normal’)
\theoremstyle{Bspstyle}
\newtheorem{Bsp}{Example}
\newtheorem*{Bsp_forts}{Example}
\newtheorem*{Exkurs}{Aside}
\newtheorem*{Exkurs_forts}{Aside}
\newtheorem*{Anmerkung}{Remark}
\newtheorem{Def}{Definition}
\newtheoremstyle{Satzstyle}% name
    {6pt}% Space above
    {6pt}% Space below
    {\itshape}% Body font
    {}% Indent amount
    {\bfseries}% Theorem head font
    {.}% Punctuation after theorem head
    {.5em}% Space after theorem head
    {}% Theorem head spec (can be left empty, meaning ‘normal’)
\theoremstyle{Satzstyle}
\newtheorem{EinSatz}{Satz}

%----------------------------
% footline
\setbeamertemplate{footline}[text line]{%
    \parbox{\linewidth}{%
        \vspace*{-25pt}%
        \hfill\insertshortauthor\hfill\slidenumberprefix--\insertpagenumber}
}
% with ETH logo
\logo{\pgfputat{\pgfxy(-13.7,0.1)}{\pgfbox[right,base]{%
    \includegraphics[height=0.23cm]{logo.png}}}}

%----------------------------
% sectioning
\newcommand{\slidenumberprefix}{\thesection}

%----------------------------
% circle as itemize symbol
\setbeamertemplate{itemize item}[circle]

%----------------------------
% alerted text
\setbeamerfont{alerted text}{series=\bfseries}
\setbeamercolor{alerted text}{fg=magenta}

%----------------------------
% Header
% \newcommand{\Header}[1]{%
%     \begin{minipage}{6cm}
%         \alert{#1}
%     \end{minipage}
% }

% **** -------------------------------------------------------------------
% macros

% code command (can deal with '$', '_', etc.)
\makeatletter
\newcommand\code{\bgroup\@makeother\_\@makeother\~\@makeother\$\@makeother\^\@codex}
\def\@codex#1{{\normalfont\ttfamily\hyphenchar\font=-1 #1}\egroup}
\makeatother

% proglang
\let\proglang=\textsf

% DOI
\newcommand{\DOI}[1]{\textcolor{magenta}{\doi{#1}}}

% **** -------------------------------------------------------------------
% code environment
\RequirePackage{verbatim}

\newenvironment{Rcode}{%
    \endgraf\vspace{-0.5em}%
    \endgraf\verbatim}{%
    \endverbatim
}

% **** -------------------------------------------------------------------
% last page of slide deck
\newcommand{\lastpage}{
    {
    \setbeamertemplate{logo}{}
    \setbeamertemplate{footline}{}
    \begin{frame}
        \pgfputat{\pgfxy(2.25,-0.2)}{\pgfbox[right,base]{%
            \includegraphics[height=0.4cm]{logo.png}}}
        %
        \begin{textblock}{20}(1,5)
            \footnotesize\color{black}
            \textbf{My contact details at ETH}\\
            Lecturer at the Department of Mathematics\\
            E-mail: \texttt{tobias.schoch@math.ethz.ch}\\
            ~\\
            \textbf{Primary affiliation}\\
            University of Applied Sciences Northwestern Switzerland FHNW\\
            School of Business -- Institute ICC\\
            Riggenbachstrasse 16\\
            CH-4600 Olten\\~\\
            Prof. Dr. Tobias Schoch\\
            E-mail: \texttt{tobias.schoch@fhnw.ch}\\
            Phone (direct): +41 (0)62 957 21 02\\
            ~\\
            Version of \version
        \end{textblock}
    \end{frame}
    }
}

% **** -------------------------------------------------------------------
% EOF
% **** -------------------------------------------------------------------
