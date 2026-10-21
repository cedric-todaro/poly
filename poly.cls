\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{poly}[2026/09/06 Classe de document personnalisée pour poly de mathematiques]
\DeclareOption*{\PassToOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
\LoadClass[a4paper,11pt,headings=normal,headings=openright,twoside=true]{scrreprt}
% ---------------------------------------------------------------------------------------------------- 
\let\nc\newcommand\let\rnc\renewcommand
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{geometry}
\geometry{a4paper,top=1.8cm,bottom=2.2cm,inner=2.0cm,outer=1.6cm,footskip=10mm}
\RequirePackage{fourier}
\addtokomafont{disposition}{\rmfamily}
\setcounter{tocdepth}{2}
\raggedbottom\hbadness=100000\vbadness=100000
\nc{\pagenotes}{\clearpage\ifodd\value{page}\else\thispagestyle{empty}\null\clearpage\fi\pagestyle{empty}\chapter*{Notes}\foreach \i in {1,...,22}{\dotfill\par~\par}\dotfill}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{setspace}
\setstretch{1.05}
\newlength{\monindent}
\setlength{\monindent}{5mm}
\setlength{\parindent}{\monindent}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{amsmath, amssymb, amsthm}
\newtheoremstyle{plain}{\topsep}{\topsep}{\itshape}{0pt}{\bfseries}{~\dotfill\newline\indent}{0pt}{}
\newtheoremstyle{definition}{\topsep}{\topsep}{\normalfont}{0pt}{\bfseries}{~\dotfill\newline\indent}{0pt}{}
\newtheoremstyle{remark}{\topsep}{\topsep}{\normalfont}{0pt}{\itshape}{~:\newline\indent}{0pt}{}
\theoremstyle{plain}
\newtheorem*{theoreme}{\faCheckCircle\, Théorème}
\newtheorem*{propriete}{\faDraftingCompass\, Propriété}
\theoremstyle{definition}
\newtheorem*{definition}{\faBook\, Définition}
\newtheorem*{methode}{\faLightbulb\, Méthode}
\newtheorem*{exercice}{\faPenSquare\, Exercice}
\newtheorem{exo}{\faPenSquare\, Ex.}[chapter]
\renewcommand{\theexo}{\arabic{exo}}
\theoremstyle{remark}
\newtheorem*{demonstration}{\faSearch\, Démonstration}
\newtheorem*{preuve}{\faSearch\, Preuve}
\newtheorem*{exemple}{Exemple}
\newtheorem*{remarque}{Remarque}
\newtheorem*{correction}{Correction}
\newtheorem*{attention}{\faExclamationTriangle\,\normalfont\bfseries\ Attention}
\newtheorem*{piege}{\faExclamationTriangle\,\normalfont\bfseries Piège classique}
\newtheorem*{ideerecue}{\faExclamationTriangle\,\normalfont\bfseries Idée reçue}
\newtheorem*{erreur}{\faExclamationTriangle\,\normalfont\bfseries Erreur à éviter}
\newtheorem*{fauxami}{\faExclamationTriangle\,\normalfont\bfseries Faux ami}
\newtheorem*{miseengarde}{\faExclamationTriangle\,\normalfont\bfseries Mise en garde}
\newenvironment{thm}{\begin{theoreme}}{\end{theoreme}}
\newenvironment{prop}{\begin{propriete}}{\end{propriete}}
\newenvironment{df}{\begin{definition}}{\end{definition}}
\newenvironment{defn}{\begin{definition}}{\end{definition}}
\newenvironment{defin}{\begin{definition}}{\end{definition}}
\newenvironment{meth}{\begin{methode}}{\end{methode}}
\newenvironment{demo}{\begin{demonstration}}{\end{demonstration}}
\newenvironment{ex}{\begin{exemple}}{\end{exemple}}
\newenvironment{exmpl}{\begin{exemple}}{\end{exemple}}
\newenvironment{rem}{\begin{remarque}}{\end{remarque}}
\newenvironment{rmq}{\begin{remarque}}{\end{remarque}}
\rnc{\qedsymbol}{}
\nc{\nline}{\leavevmode\vspace{-\baselineskip}}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{tabularx}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}b{#1}}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}b{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}b{#1}}
\nc{\ccg}{\cellcolor{gray!40}}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{amsfonts, mathtools, mathrsfs, interval, xfp, relsize, siunitx, esvect, epsdice, numprint, cancel, colortbl}
\mathsurround=1pt
\nc{\R}{\mathbb{R}}
\nc{\D}{\mathbb{D}}
\nc{\Q}{\mathbb{Q}}
\nc{\Z}{\mathbb{Z}}
\nc{\N}{\mathbb{N}}
\nc{\C}{\mathbb{C}}
\nc{\Cf}{\mathcal{C}_f}
\nc{\Cg}{\mathcal{C}_g}
\nc{\Ch}{\mathcal{C}_h}
\rnc{\vec}[1]{\vv{#1}}
\nc{\norm}[1]{\left\lVert#1\right\rVert}
\nc{\abs}[1]{\left\lvert#1\right\rvert}
\nc{\pa}[1]{\left(#1\right)}
\nc{\bra}[1]{\left[#1\right]}
\nc{\brac}[1]{\left\{#1\right\}}
\nc{\pfrac}[2]{\pa{\frac{#1}{#2}}}
\nc{\bfrac}[2]{\bra{\frac{#1}{#2}}}
\nc{\mat}[1]{\begin{matrix}#1\end{matrix}}
\nc{\pmat}[1]{\pa{\mat{#1}}}
\nc{\bmat}[1]{\bra{\mat{#1}}}
\nc{\determinant}[1]{\left|\mat{#1}\right|}
\nc{\coord}[2]{\pmat{#1\\#2}}
\nc{\coordl}[2]{\pa{#1\,;\,#2}}
\nc{\OIJ}{\pa{O;I,J}}
\nc{\vOIJ}{\pa{O~;~\vec{i}~,~\vec{j}}}
\nc{\eqv}{~\Leftrightarrow~}
\rnc{\iff}{~\Leftrightarrow~}
\nc{\rarr}{\rightarrow}
\nc{\larr}{\leftarrow}
\nc{\Rarr}{\Rightarrow}
\nc{\Larr}{\Leftarrow}
\nc{\Lrarr}{\Leftrightarrow}
\let\leq\leqslant
\let\le\leqslant
\let\geq\geqslant
\let\ge\geqslant
\nc{\lt}{\ifmmode{<}\else\textless\fi}
\nc{\gt}{\ifmmode{>}\else\textgreater\fi}
\nc{\dint}{\displaystyle\int}
\nc{\dx}{\mathrm{d}x}
\nc{\dy}{\mathrm{d}y}
\nc{\dz}{\mathrm{d}z}
\nc{\dt}{\mathrm{d}t}
\nc{\pd}{\partial}
\nc{\pdx}[1]{\frac{\pd #1}{\pd x}}
\nc{\pdy}[1]{\frac{\pd #1}{\pd y}}
\nc{\pdz}[1]{\frac{\pd #1}{\pd z}}
\nc{\pdt}[1]{\frac{\pd #1}{\pd t}}
\nc{\np}[1]{\numprint{#1}}
\rnc{\bar}[1]{\overline{#1}}
\rnc{\parallel}{\mathbin{\!/\mkern-4mu/\!}}
\intervalconfig{separator symbol={\,;\,}}
\nc{\intoo}[2]{\interval[open,scaled]{#1}{#2}}
\nc{\intff}[2]{\interval[scaled]{#1}{#2}}
\nc{\intof}[2]{\interval[open left,scaled]{#1}{#2}}
\nc{\intfo}[2]{\interval[open right,scaled]{#1}{#2}}
\nc{\cmath}[1]{\begin{center}\ensuremath{#1}\end{center}}
\nc{\p}[1]{\operatorname{P}\pa{#1}}
\nc{\pc}[2]{\operatorname{P}_{#1}\pa{#2}}
\nc{\card}[1]{\operatorname{Card}\pa{#1}}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{tikz,pgfplots,tkz-tab}
\usetikzlibrary{calc, patterns, positioning, backgrounds}
\usetikzlibrary{arrows.meta, decorations.markings, decorations.text, decorations.fractals, shapes.geometric}
\pgfplotsset{compat=1.18}
\tikzset{arrow style/.style={thick, >={Stealth[scale=1.5]}, ->, shorten <=5pt, shorten >=5pt}}
\tikzset{double style/.style={double distance=3pt, line width=0.5pt}}
\tikzset{>=Stealth}
% ---------------------------------------------------------------------------------------------------- 
\RequirePackage{lipsum, graphicx, fontawesome5, pifont, wrapstuff, xhfill}
\let\faWarning\faExclamationTriangle
\RequirePackage{eurosym}
\nc{\eur}{\,\text{\euro}}
\nc\numero[1]{n\textsuperscript{\small{o}~}#1}
\let\ms\medskip\let\bs\bigskip
% ----------------------------------------------------------------------------------------------------
\RequirePackage{enumitem,multicol}
\setlist[itemize]{label=\textbullet}
\def\bi\begin{itemize}\def\ei\end{itemize}
\def\be\begin{enumerate}\def\ee\end{numerate}
\def\ber{\begin{enumerate}[resume]}
\def\bmc\begin{multicols}\def\emc\end{multicols}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{bleu}{HTML}{0D47A1}
\definecolor{rouge}{HTML}{B71C1C}
\definecolor{vert}{HTML}{1B5E20}
\definecolor{violet}{HTML}{4A148C}
\definecolor{orange}{HTML}{E65100}
\definecolor{indigo}{HTML}{311B92}
\definecolor{bordeaux}{HTML}{880E4F}
\definecolor{prune}{HTML}{6A1B9A}
\definecolor{ocre}{HTML}{A14214}
\definecolor{gris}{HTML}{37474F}
\definecolor{magenta}{HTML}{880E4F}
\definecolor{turquoise}{HTML}{006064}
\colorlet{bleuClair}{bleu!40}
\colorlet{rougeClair}{rouge!40}
\colorlet{vertClair}{vert!40}
\colorlet{violetClair}{violet!40}
\colorlet{orangeClair}{orange!40}
\colorlet{indigoClair}{indigo!40}
\colorlet{bordeauxClair}{bordeaux!40}
\colorlet{pruneClair}{prune!40}
\colorlet{ocreClair}{ocre!40}
\colorlet{grisClair}{gris!40}
\colorlet{magentaClair}{magenta!40}
\colorlet{turquoiseClair}{turquoise!40}
\colorlet{grisLeger}{gris!20}
\definecolor{codegreen}{rgb}{0, 0.6, 0}
\definecolor{codegray}{rgb}{0.45, 0.45, 0.45}
\definecolor{codepurple}{rgb}{0.58, 0, 0.82}
\definecolor{backcolour}{rgb}{0.95, 0.95, 0.97}
\definecolor{codeblue}{rgb}{0, 0.35, 0.75}

\RequirePackage{listings}
\lstset{
	language=Python,
	basicstyle=\ttfamily,
	backgroundcolor=\color{backcolour},
	commentstyle=\color{codegray}\itshape,
	keywordstyle=\color{codeblue}\bfseries,
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codegreen},
	identifierstyle=\color{black},
	tabsize=4,
	showspaces=false,
	showstringspaces=false,
	keepspaces=true,
	breaklines=true,
	breakatwhitespace=true,
	xleftmargin=\parindent,
	xrightmargin=\parindent,
	numbers=left,
	numberstyle=\footnotesize\color{codegray},
	numbersep=8pt,
	framerule=0.8pt,
	frame=single,
	rulecolor=\color{codeblue!40},
	inputencoding=utf8,
	extendedchars=true,
	literate=
		{é}{{\'e}}1 {è}{{\`e}}1 {à}{{\`a}}1 {ê}{{\^e}}1 {ù}{{\`u}}1
		{Â}{{\^A}}1 {Ç}{{\c C}}1 {ç}{{\c c}}1 {É}{{\'E}}1 {È}{{\`E}}1
		{Ê}{{\^E}}1 {Î}{{\^I}}1 {î}{{\^i}}1 {Ô}{{\^O}}1 {ô}{{\^o}}1
		{Û}{{\^U}}1 {û}{{\^u}}1 {«}{{\guillemotleft}}1 {»}{{\guillemotright}}1
}
% ----------------------------------------------------------------------------------------------------
\RequirePackage{hyperref}
\hypersetup{hidelinks, pdftitle={}, pdfauthor={}, psdextra}
\makeatletter\pdfstringdefDisableCommands{\def\HyPsd@Warning#1{}}\makeatother
% ----------------------------------------------------------------------------------------------------
\nc{\figureA}[1]{
	\begin{center}
		\begin{tikzpicture}[#1]
			\foreach \ang in {0,30,...,330} {
					\draw (\ang:3) circle (3);
					\draw (0,0) -- (\ang:{3*sqrt(3)});
					\draw (0,0) -- (\ang+15:{1.5*(sqrt(6)+sqrt(2))});
					\filldraw (\ang+15:{6*cos(75)}) circle (2pt);
					\filldraw (\ang:3) circle (2pt);
					\filldraw (\ang+15:{3*sqrt(2)}) circle (2pt);
					\filldraw (\ang:{3*(sqrt(3))}) circle (2pt);
					\filldraw (\ang+15:{1.5*(sqrt(6)+sqrt(2))}) circle (2pt);
				}
			\draw (0,0) circle ({6*cos(75)});
			\draw (0,0) circle (3);
			\draw (0,0) circle ({3*sqrt(2)});
			\draw (0,0) circle ({3*sqrt(3)});
			\draw (0,0) circle ({1.5*(sqrt(6)+sqrt(2))});
		\end{tikzpicture}
	\end{center}
}

