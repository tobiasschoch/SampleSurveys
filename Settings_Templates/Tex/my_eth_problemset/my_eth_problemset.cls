% **** ===================================================================
% SUBJECT style file for FHNW problem (English)
% AUTHORS Tobias Schoch, January 31, 2025
% LICENSE GPL > 2
% **** ===================================================================
\LoadClass[oneside]{scrartcl}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_eth_problemset}[2026/08/19]

% **** -------------------------------------------------------------------
% Option: with solution
\newif\ifWithSolution
\WithSolutionfalse

\DeclareOption{solution}{%
    \WithSolutiontrue
}
\ProcessOptions\relax

% **** -------------------------------------------------------------------
% Our definitions
\RequirePackage{info}

% **** -------------------------------------------------------------------
% Additional packages


\RequirePackage[english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{xspace}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage[table]{xcolor}
\RequirePackage{enumerate}
\RequirePackage{placeins} % FloatBarrier

\RequirePackage{tikz}
\RequirePackage{pgfplots}

\RequirePackage{Sweave}

\KOMAoptions{paper=A4}
\KOMAoptions{DIV=14}
\KOMAoptions{headings=big}
\KOMAoptions{fontsize=11pt}

% footnote environment
\deffootnote[1em]{0em}{1em}{\textsuperscript{\thefootnotemark~}}

\addtokomafont{caption}{\footnotesize}
\setkomafont{captionlabel}{\sffamily\bfseries}

\RequirePackage[olines]{scrlayer-scrpage}
\setlength{\headheight}{25pt}
\setkomafont{pagehead}{\normalfont\footnotesize}
\setkomafont{pagefoot}{\normalfont\footnotesize}

% Clear any previous header/footer definitions
\clearpairofpagestyles

% Regular pages
\ihead[~\\~\\~\\ETH Z{\"u}rich\\\LECTURER]{}
\chead[~\\~\\~\\\LECTURE]{}
\ohead[~\\~\\~\\\SEMESTER\\~]{}
\ofoot[]{\pagemark}

\pagestyle{scrheadings}


% **** -------------------------------------------------------------------
% macros
\newcommand{\alert}[1]{\textbf{#1}}

% code command (can deal with '$', '_', etc.)
\makeatletter
\newcommand\code{\bgroup\@makeother\_\@makeother\~\@makeother\$\@makeother\^\@codex}
\def\@codex#1{{\ttfamily\hyphenchar\font=-1 #1}\egroup}
\makeatother

% **** -------------------------------------------------------------------
% maths

% fix the "Too many alphabets in normal" issue
\newcommand\hmmax{0}
\newcommand\bmmax{0}

\RequirePackage{amsmath}
\RequirePackage{bbm}
\RequirePackage{mathrsfs}

\RequirePackage{my_math_eth}

\RequirePackage{amsthm}
\newtheoremstyle{ProblemStyle}
    {1em}% Space above
    {2em}% Space below
    {}% Body font
    {}% Indent amount
    {\bfseries}% Theorem head font
    {\normalfont.}% Punctuation after theorem head
    {.5em}% Space after theorem head
    {\thmname{#1} \NR.\thmnumber{#2}
    \normalfont(\thmnote{#3\addcontentsline{toc}{subsection}{%
        Problem \NR.#2 (#3)}})}

\theoremstyle{ProblemStyle}
\newtheorem{Problem}{Problem}

% **** -------------------------------------------------------------------
% Subtask environment
\newenvironment{Subtask}{
        \begin{enumerate}[a)]
    }{
        \end{enumerate}
    }

% **** -------------------------------------------------------------------
% R-hint and remark environments
\newenvironment{Rhint}{
        \par
        \vspace{0.5em}%
        \begin{addmargin}[2.5em]{0em}%
        \textbf{Hint.}
    }{
        \end{addmargin}%
        \vspace{0.5em}%
    }

\newenvironment{Remark}{
        \par
        \vspace{0.5em}%
        \begin{addmargin}[2.5em]{0em}%
        \textbf{Remarks.}
    }{
        \end{addmargin}%
        \vspace{0.5em}%
    }

% **** -------------------------------------------------------------------
% Solution environment
\RequirePackage{verbatim}

% General solution environment
\ifWithSolution
    \newenvironment{Solution}{%
        \par\vspace{0.5em}%
        \begingroup
        \color{purple}%
        \textbf{Solution.}
    }{%
        \par
        \endgroup
    }
\else
    \let\Solution=\comment
    \let\endSolution=\endcomment
\fi

% **** -------------------------------------------------------------------
% instructions page
\newcommand{\firstpage}{%
    \thispagestyle{plain.scrheadings}
    \begin{center}

        \ifWithSolution
            \textbf{\LARGE \color{purple} Solutions: Problem Set \NR}
        \else
            \textbf{\LARGE Problem Set \NR}
        \fi

        \vspace{1em}

        \footnotesize{Version of \today}
    \end{center}
}

% **** -------------------------------------------------------------------
% use 1.1 line spread
\RequirePackage{setspace}
\setstretch{1.1}
\setlength{\parindent}{0em}

