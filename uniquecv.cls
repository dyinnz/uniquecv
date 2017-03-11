% use default configure of article
\LoadClass{article}

% package name
\ProvidesClass{uniquecv}

% Chinese support
\RequirePackage{ctex}

% customize section/subsection title
\RequirePackage{titlesec}

% define some colors
\RequirePackage{color}

% set margin
\RequirePackage[
	a4paper,
	left=0.8in,
	right=0.8in,
	top=0.70in,
	bottom=0.55in,
	nohead
]{geometry}

% do not need indent in resume
\setlength\parindent{0pt}

% ----------------------------------------------------------------------------- %

% name of candidate
\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}    % in the center & Huge font size
}

% basic information under the name
\newcommand{\basicinfo}[1]{%
  \centerline{\sffamily\large{#1}}%
}

% define color gray for date
\definecolor{gray}{rgb}{.5,0.5,0.5}

% define color blue for section title
\definecolor{cvblue}{rgb}{.22,0.45,0.75}

% ----------------------------------------------------------------------------- %

\titleformat{\section}
  % customize the section
  {\color{cvblue}\Large\bf\raggedright} 
  % can be used to give a prefix to all sections
  {}{0em} 
  % can be used to insert code before the heading
  {}
  % insert a horizontal line after the heading
  [\titlerule]

% adjust the vertical space before and after the heading
\titlespacing*{\section}{0cm}{*1.8}{*1.8}

\titleformat{\subsection}
  {\normalsize\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.0}{*0.1}

% ----------------------------------------------------------------------------- %

\newcommand{\dateditem}[2]{%
  % set the date text gray
  \subsection[#1]{#1 \hfill \textcolor{gray}{#2}}%
}

\newcommand{\datedaward}[3]{%
  % use the box to align text#2,
  % set text#1, text#2 bf
  \subsection[#1]{\makebox[13em][l]{\textbf{#1}} ~ \textbf{#2} \hfill \textcolor{gray}{#3}}%
}


% same as \datedaward
\newcommand{\datedproject}[3]{%
  \subsection[#1]{\makebox[13em][l]{\textbf{#1}} ~ \textbf{#2} \hfill \textcolor{gray}{#3}}%
}
