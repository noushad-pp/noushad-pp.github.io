% Author: Noushad Puthen Peedikayil
% Edited: 22/02/22

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume_base}[2022/02/22 Resume Base class]
\LoadClass{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage{fontawesome}

% Theme color variable
\newcommand\themeColor{RoyalBlue}

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
 
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

% Education sub-section items
\newcommand{\edsubsection}[5]{%
  \begin{tabular*}{\textwidth}{l@{\cftdotfill{\cftsecdotsep}\extracolsep{\fill}}r}
    \vspace{-0.5pt}
    {\scshape{\bfseries #1}} & #2 \\
    {#3} & {\small#4} \\
    {#5}
  \end{tabular*}
}

% Work sub-section items
\newcommand{\worksubsection}[5]{%
%   \vspace{-5pt}
  \begin{tabular*}{\textwidth}{l@{\cftdotfill{\cftsecdotsep}\extracolsep{\fill}}r}
    \textbf{\textsc{#1}} & \textit{#2} \\
    \textit{#3} & \textit{\small#4} \\
  \end{tabular*}\\
  \parbox{\textwidth}{
    \small
    \begin{itemize}
    \vspace{-2pt}
    #5
    \end{itemize}
  }
%
%   \subsubsection[#1]{#1}%
%   \vspace{-5pt}
%   #2 \hfill #3 \\
%   #4
}

\pagestyle{empty}

\newcommand{\name}[1]{%
  \centerline{\Huge{\color{\themeColor}#1}}
}

\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ {\large\textperiodcentered} #4 \ {\large\textperiodcentered} \ #5%
        }%
    }%
}

\newcommand{\resitem}[1]{\small \item[\textbf{--}] #1 \vspace{-4pt}}
