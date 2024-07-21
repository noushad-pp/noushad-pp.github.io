% Author: Noushad Puthen Peedikayil
% Edited: 22/02/22

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume_base}[2022/02/22 Resume Base class]
\LoadClass{article}

% packages
\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fontawesome}
\RequirePackage{calc}

% Theme color variable
\newcommand\themeColor{RoyalBlue}

\pagestyle{empty}
\setlength{\evensidemargin}{-0.25in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\setlength{\tabcolsep}{0in}
\setlength{\textheight}{9.5in}
\setlength{\textwidth}{7in}
\setlength{\topmargin}{-0.3in}
\setlength{\topskip}{0in}
\setlength{\voffset}{-0.1in}

\hypersetup{
  pdftitle={Resume},
  colorlinks=true,
  linkcolor=black,
  filecolor=white,
  urlcolor=black,
}

% Name - contact sections
\newcommand{\name}[1]{%
  \centerline{\Huge{\color{\themeColor}#1}}
}

% Title - contact sections
\newcommand{\jobTitle}[1]{%
  \centerline{\large{\color{\themeColor}#1}}
}

\newcommand\contact[5]{%
  \centerline{%
    \makebox[0pt][c]{%
      #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\large\textperiodcentered} #4 {\large\textperiodcentered} #5%
    }%
  }%
}

% Section config
% Sections formatting
\titleformat{\section} % Customise the \section command
{\Large\scshape\raggedright\color{\themeColor}} % large, small capitals (\scshape) and left aligned (\raggedright)
{}{0em} % Can be used to give a prefix to all sections, like 'Section ...'
{} % Can be used to insert code before the heading
[\titlerule] % Inserts a horizontal line after the heading
\titlespacing*{\section} {0pt}{2.5ex plus 1ex minus .2ex}{1.3ex plus .2ex}

% Subsection formatting
\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}
\titlespacing*{\subsection} {0pt}{2.25ex plus 1ex minus .2ex}{0.5ex plus .2ex}

\newcommand{\resitem}[1]{\small \item[\textbf{--}] #1 \vspace{-4pt}}

% Education sub-section items
\newcommand{\edsubsection}[5]{%
  \begin{tabular*}{\textwidth}{l@{\cftdotfill{\cftsecdotsep}\extracolsep{\fill}}r}
    \vspace{-0.1pt}
    {\scshape{\bfseries #1}} & #2 \\
    {#3} & {\small#4} \\
    {#5}
  \end{tabular*}
}

% Work sub-section items
\newcommand{\worksubsection}[3]{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}l@{\hspace{0.2em}}r}
    \textbf{#1} & \textbf{#2} \\
  \end{tabular*}
  \parbox{\textwidth}{
    \small
    \begin{itemize}
    {#3}
    \end{itemize}
  }
}

\newcommand{\worksubsectionjobtitle}[2]{%
  \noindent
  \makebox[\textwidth-2.5em][s]{%
    \hspace{-2.5em}{#1}%
    \dotfill%
    #2%
  }%
}
