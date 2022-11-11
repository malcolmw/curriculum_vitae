\ProvidesClass{cv}[2011/01/11 v0.0 CV class]
\LoadClass[12pt,letterpaper]{article}
\pagestyle{empty}

\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns

\def \name#1    {\def\@name{#1}} % Defines the \name command to set name
\def \address#1 {\def\@address{#1}}
\def \phone#1   {\def\@phone{#1}}
\def \email#1   {\def\@email{#1}}
\def \homepage#1 {\def\@homepage{#1}}

\def\namesize{\huge}
\def \@name     {}
\def \@address  {}
\def \@phone    {}
\def \@email    {}
\def \@homepage {}

\def \printDocumentHeader {
    \begin{center}
        \MakeUppercase{\bf \namesize \@name}
        \medskip \break
        \@address
        \smallskip \break
        \@phone\ $\diamond$ \@email
        \smallskip \break
        \@homepage
    \end{center}  
}

\newenvironment{rSubsection}[4]{
    \medskip
    {\bf #1} \hfill {\bf #2}
    \smallskip \break
    {\em #3} \hfill {\em #4}
}

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ 
    % 1 input argument - section name
    \medskip
    \MakeUppercase{\bf #1} % Section title
    \medskip
    \hrule % Horizontal line
    \begin{list}{}{\setlength{\leftmargin}{1.5em}}
        \item[]
}
{\end{list}}