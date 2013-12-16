%%
%% This is file `faosyb.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% faosyb.dtx  (with options: `class')
%% Copyright (c) 2013, Food and Agriculture Organization of the  United Nations
%% 
%% All rights reserved.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{faosyb}
[2013/12/15 v1.2 Typesetting FAO Yearbook]
\long\def\faoyearbook@size@warning#1{%
  \ClassWarning{faoyearbook}{Size-changing option #1 will not be
    honored}}%
\DeclareOption{8pt}{\faoyearbook@size@warning{\CurrentOption}}%
\DeclareOption{9pt}{\faoyearbook@size@warning{\CurrentOption}}%
\DeclareOption{10pt}{\faoyearbook@size@warning{\CurrentOption}}%
\DeclareOption{11pt}{\faoyearbook@size@warning{\CurrentOption}}%
\DeclareOption{12pt}{\faoyearbook@size@warning{\CurrentOption}}%
\newif\ifprint
\printfalse
\DeclareOption{web}{\printfalse}
\DeclareOption{print}{\printtrue
  \PassOptionsToPackage{papersize={230mm,317mm},layout=a4paper,
    layouthoffset=1cm,layoutvoffset=1cm,twoside}{geometry}}
\newif\ifDraft
\Draftfalse
\DeclareOption{Draft}{\Drafttrue}
\DeclareOption{draft}{\Drafttrue}
\newif\if@issuumode
\@issuumodefalse
\DeclareOption{issuu}{\@issuumodetrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\LoadClass[10pt,twoside,twocolumn]{report}
\RequirePackage{graphicx,xkeyval}
\RequirePackage[table,cmyk]{xcolor}
\RequirePackage{tikz,geometry,dcolumn}
\usetikzlibrary{calc}
\RequirePackage{fancyhdr}
\RequirePackage{lscape,longtable,siunitx,booktabs}
\RequirePackage{multicol,atbegshi,picture,hhline,afterpage}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{pdfpages}
\RequirePackage[authoryear]{natbib}
\RequirePackage[breaklinks]{hyperref}
\RequirePackage{bookmark}
\RequirePackage{adjmulticol}
\if@issuumode
\RequirePackage{issuulinks}
\fi
\ifprint
\hypersetup{breaklinks,colorlinks=false,pdfborder=0 0 0,
  pdfauthor={FAO},
  pdfsubject={Statistical Yearbook of the Food And Agricultural Organization for the United Nations},
  pdftitle={Statistical Yearbook of the Food And Agricultural Organization for the United Nations},
  pdfkeywords={FAO, Food Security, Undernourishment, Sustainable agriculture},
  pdfpagelayout=TwoColumnLeft,
  pdfnewwindow=true
}
\else
\hypersetup{breaklinks,colorlinks=false,pdfborder=0 0 0,
  pdfauthor={FAO},
  pdfsubject={Statistical Yearbook of the Food And Agricultural Organization for the United Nations},
  pdftitle={Statistical Yearbook of the Food And Agricultural Organization for the United Nations},
  pdfkeywords={FAO, Food Security, Undernourishment, Sustainable agriculture},
  pdfpagelayout=TwoColumnRight,
  pdfnewwindow=true
}
\fi
\def\@pctchar{\expandafter\@gobble\string\%}
\def\@bchar{\expandafter\@gobble\string\\}
\immediate\pdfobj stream attr{/N 4}  file{FOGRA39L.icc}
\edef\OBJ@CVR{\the\pdflastobj}
\pdfcatalog{/OutputIntents [ <<
  /Type/OutputIntent
  /S/GTS_PDFX
  /OutputCondition (FOGRA39)
  /OutputConditionIdentifier (FOGRA39 \@bchar(ISO Coated v2
   300\@pctchar\space \@bchar(ECI\@bchar)\@bchar))
  /DestOutputProfile \OBJ@CVR\space 0 R
  /RegistryName(http://www.color.org)
 >> ]}
\def\faoset#1{\setkeys{fao}{#1}}
\define@key{fao}{year}{\gdef\fao@year{#1}}
\faoset{year=20XX}
\RequirePackage{arevmath}
\def\PTSans@scale{0.95}
\def\PTSansNarrow@scale{0.95}
\def\PTSansCaption@scale{0.95}
\renewcommand{\sfdefault}{PTSans-TLF}
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\bfdefault}{b}
\DeclareRobustCommand\narrowfamily{\fontfamily{PTSansNarrow-TLF}\selectfont}
\DeclareTextFontCommand{\textnarrow}{\narrowfamily}
\DeclareRobustCommand\captionfamily{\fontfamily{PTSansCaption-TLF}\selectfont}
\DeclareTextFontCommand{\textcaption}{\captionfamily}
\renewcommand\normalsize{%
   \@setfontsize\normalsize{9.6pt}{\@xiipt}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
   \@setfontsize\small\@ixpt{10}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
\urlstyle{sf}
\geometry{layout=a4paper,
  left=2cm,right=2cm,bottom=2.8cm,top=1.5cm,
  columnsep=30pt, twoside}%
\savegeometry{standard}
\setlength\parindent\z@
\setlength\parskip{6\p@ plus 6\p@ minus 4\p@}
\setlength\footskip{27\p@}
\setlength\headheight{35\p@}
\AtBeginDocument{\ifprint
  \AtBeginShipout{%
    \AtBeginShipoutUpperLeftForeground{%
      \color{black}%
      \@tempdima=\Gm@layouthoffset
      \@tempdimb=\Gm@layoutvoffset
      \put(\@tempdima,-\@tempdimb+6\p@){\line(0,1){50}}%
      \put(\@tempdima-6\p@,-\@tempdimb){\line(-1,0){50}}%
      \advance\@tempdima by \Gm@layoutwidth
      \put(\@tempdima,-\@tempdimb+6\p@){\line(0,1){50}}%
      \put(\@tempdima+6\p@,-\@tempdimb){\line(1,0){50}}%
      \advance\@tempdimb by \Gm@layoutheight
      \put(\@tempdima,-\@tempdimb-6\p@){\line(0,-1){50}}%
      \put(\@tempdima+6\p@,-\@tempdimb){\line(1,0){50}}%
      \advance\@tempdima by -\Gm@layoutwidth
      \put(\@tempdima-6\p@,-\@tempdimb){\line(-1,0){50}}%
      \put(\@tempdima,-\@tempdimb-6\p@){\line(0,-1){50}}%
    }}\fi}
\AtBeginDocument{\ifDraft
  \AtBeginShipout{%
    \AtBeginShipoutUpperLeft{%
      \color{black!25}%
      \@tempdima=\Gm@layouthoffset
      \@tempdimb=\Gm@layoutvoffset
      \advance\@tempdima by 0.2\Gm@layoutwidth
      \advance\@tempdimb by 0.7\Gm@layoutheight
      \put(\@tempdima,-\@tempdimb){%
        \rotatebox{45}{%
          \fontsize{6cm}{6cm}\selectfont
          DRAFT}}}}\fi}
\def\fao@color@string{0,0,0}
\def\setbgcolor#1{\colorlet{@bgcolor@next}[cmyk]{#1}%
  \@for\curr@ext:=\@toc@ext@list\do{%
    \addtocontents{\curr@ext}{\string\colorlet{@bgcolor}[cmyk]{#1}}}%
  \addtocontents{toc}{\string\colorlet{@bgcolor}[cmyk]{#1}}%
  \gdef\fao@color@string{#1}}
\colorlet{@bgcolor@next}[cmyk]{white}
\define@key{fao}{bgcolor}{\setbgcolor{#1}}
\define@key{fao}{tableheadcolor}{\colorlet{@tableheadcolor}[cmyk]{#1}}
\def\selectcolor{\colorlet{@bgcolor}{@bgcolor@next}%
  \colorlet{@tableheadcolor}{@bgcolor}}
\selectcolor
\define@key{fao}{tablebg}{\colorlet{@tablebg}[cmyk]{#1}}
\def\seticon#1{\gdef\next@icon{#1}}
\define@key{fao}{icon}{\seticon{#1}}
\def\selecticon{\gdef\currenticon{\next@icon}}
\def\next@icon{}
\def\newicon#1#2{\expandafter\gdef\csname @icon@#1\endcsname{#2}}
\newcommand\colored@icon[2][]{\bgroup\fboxsep=-1pt%
  \fcolorbox{white}{@bgcolor}{\includegraphics[#1]{#2}}\egroup}
\newcommand\colored@icon@fg[3][]{\bgroup\fboxsep=-1\p@%
  \fcolorbox{white}{@bgcolor!#3}{\includegraphics[#1]{#2}}\egroup}
\def\evenfootmark#1{\gdef\@evenfootmark{#1}}
\evenfootmark{\textbf{FAO} Statistical Yearbook \textbf{\fao@year}}
\def\oddfootmark#1{\gdef\@oddfootmark{#1}}
\oddfootmark{\rightmark}
\fancypagestyle{standardpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset[LR]{2.22cm}%
  \renewcommand\headrulewidth{\z@}%
  \fancyhead[LE]{\hspace*{25\p@}\color{@bgcolor}\captionfamily
    \Huge\strut\ifnum\thepart>0\relax
    \thepart\fi\normalsize\dotfill}%
  \fancyhead[LO]{\hspace*{25\p@}\color{@bgcolor}\normalsize\dotfill\captionfamily
    \Huge\leftmark\expandafter\ifx\csname @icon@\thepart\endcsname\relax\else\space
      \raisebox{-0.25\totalheight}{%
        \colored@icon[width=1.1cm]{\csname
          @icon@\thepart\endcsname}}\fi
      \hspace*{25\p@}}%
  \fancyfoot[LE]{
    \bgroup
    \setlength\fboxsep{10\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\fcolorbox{@bgcolor}{@bgcolor}{\color{white}\thepage}}%
    \normalsize\dotfill
    \raisebox{-\height}{\@evenfootmark\hspace*{25\p@}}%
  \egroup}%
  \fancyfoot[LO]{
    \bgroup
    \setlength\fboxsep{10\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\hspace*{25\p@}\@oddfootmark}%
    \normalsize\dotfill
    \raisebox{-\height}{\fcolorbox{@bgcolor}{@bgcolor}{\color{white}\thepage}}%
  \egroup}%
}
\pagestyle{standardpagestyle}
\def\@partpagepicture{}
\fancypagestyle{partpagestyle}{%
  \fancyhf{}%
  \fancyhead[L]{%
    \begin{picture}(0,0)
      \@partpagepicture
      \put(-14,50){%
        \raisebox{-\height}{\begin{tikzpicture}
          \fill[color=@bgcolor,opacity=.1]
          (0,0) rectangle ($(\textwidth,\textheight)+(5cm,5cm)$);
        \end{tikzpicture}}}
    \end{picture}}
  \fancyhfoffset[LR]{2.22cm}%
  \renewcommand\headrulewidth{\z@}%
  \fancyfoot[LE]{
    \bgroup
    \setlength\fboxsep{10\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\fcolorbox{@bgcolor}{@bgcolor}{\color{white}\thepage}}%
    \normalsize\dotfill
    \raisebox{-\height}{\@evenfootmark\hspace{20\p@}}%
  \egroup}%
  \fancyfoot[LO]{
    \bgroup
    \setlength\fboxsep{10\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\hspace*{25\p@}\@oddfootmark}%
    \normalsize\dotfill
    \raisebox{-\height}{\fcolorbox{@bgcolor}{@bgcolor}{\color{white}\thepage}}%
  \egroup}%
}
\def\fao@partblobtop#1#2{\expandafter\gdef\csname fao@blobstart#1\endcsname{#2}}
\def\fao@partblobbottom#1#2{\expandafter\gdef\csname fao@blobend#1\endcsname{#2}}
\gdef\@toc@ext@list{toc}
\newlength\nf@vert@sep
\setlength\nf@vert@sep{30pt}
\newlength\nf@width
\newlength\nf@height
\newlength\nf@captionheight
\setlength\nf@captionheight{32\p@}
\newlength\nf@sourceheight
\setlength\nf@sourceheight{48\p@}
\newlength\nf@margin
\setlength\nf@margin{12\p@}
\newlength\nf@trianglebase
\setlength\nf@trianglebase{12\p@}
\newlength\chartwidth
\newlength\chartheight
\newskip\nf@topskip
\newskip\nf@bottomskip
\newcount\nonfloat@type
\nonfloat@type=4\relax
\newbox\nf@contentsbox
\newbox\nf@mainbox
\def\newnon@float#1#2#3{%
  \expandafter\ifx\csname ftype@#1\endcsname\relax
    \expandafter\edef\csname ftype@#1\endcsname{\the\nonfloat@type}%
    \multiply\nonfloat@type by 2\relax
  \fi
  \expandafter\def\csname ext@#1\endcsname{#2}%
  \xdef\@toc@ext@list{\@toc@ext@list,#2}%
  \expandafter\ifx\csname the#1\endcsname\relax
  \newcounter{#1}\fi
  \expandafter\def\csname fnum@#1\endcsname{#3~\csname
    the#1\endcsname}%
  \expandafter\let\csname #1\endcsname\relax
  \expandafter\let\csname end#1\endcsname\relax
  \newenvironment{#1}{\non@float{#1}}{\endnon@float}}
\def\@getfirstletter#1{\@@getfirstletter#1}
\def\@@getfirstletter#1{#1\@gobbleword}
\def\@gobbleword#1\@endword{}
\def\non@float#1#2#3{
  \def\@captype{#1}%
  \def\nf@size{#2}%
  \def\nf@placement{#3}%
  \lowercase{\xdef\nf@vert@pos{\@getfirstletter#3\@endword}}
  \global\let\nf@source\@empty
  \def\source##1{\gdef\nf@source{##1}}
\long\def\@makecaption##1##2{\long\gdef\nf@caption{%
    {\bfseries\large\color{white}
      \MakeUppercase{##1}: ##2}}}%
\gdef\nf@caption{}%
  \nf@width=\columnwidth
  \nf@height=\dimexpr(\textheight/2-\nf@vert@sep)%
  \if\nf@vert@pos u\relax
    \nf@topskip=\z@
    \nf@bottomskip=\nf@vert@sep
  \else
    \nf@topskip=\nf@vert@sep%
    \nf@bottomskip=\z@
  \fi
  \def\tempW{W}%
  \def\tempT{T}%
  \def\tempB{B}%
  \ifx\nf@size\tempW
    \nf@width=\textwidth
  \fi
  \ifx\nf@size\tempT
    \nf@height=\textheight
    \nf@topskip=\z@
    \nf@bottomskip=\z@
  \fi
  \ifx\nf@size\tempB
    \nf@width=\textwidth
    \nf@height=\textheight
    \nf@topskip=\z@
    \nf@bottomskip=\z@
  \fi
  \chartheight=
    \dimexpr(\nf@height-\nf@captionheight-\nf@sourceheight
    -2\nf@margin-\nf@trianglebase)%
  \chartwidth=\dimexpr(\nf@width-2\nf@margin-0.5\nf@trianglebase)%
  \nf@height=\dimexpr(\nf@height+\nf@topskip+\nf@bottomskip)%
  \global\setbox\nf@contentsbox
    \color@vbox
     \normalcolor
     \vbox to \chartheight
     \bgroup
     \hsize\chartwidth
     \@parboxrestore
     \@floatboxreset
}
\def\endnon@float{\@endfloatbox\par
  \hsize=\nf@width
  \setbox\nf@mainbox=\vbox to \nf@height\bgroup
    \hsize=\chartwidth
    \vskip\nf@topskip
    \noindent
    \begin{picture}(0,0)%
      \put(0,0){\color{@bgcolor}%
        \begin{tikzpicture}[baseline=(current bounding box.north)]
          \fill (0,0) -- (\nf@trianglebase,0) --
          (0.5\nf@trianglebase,-\nf@trianglebase) -- cycle;
        \end{tikzpicture}}
    \end{picture}%
    \def\@tempa{chart}%
    \ifx\@tempa\@captype
    \begin{picture}(0,0)%
      \put(0,0){\color{@bgcolor}%
        \begin{tikzpicture}[baseline=(current bounding box.north)]
          \draw(0,0) -- (\nf@width,0);
          \draw (0.5\nf@trianglebase,-2\nf@trianglebase) --
          (0.5\nf@trianglebase,-\chartheight-2\nf@trianglebase
          -\nf@margin) --
          (\nf@width-\pgflinewidth, -\chartheight-2\nf@trianglebase
          -\nf@margin) -- (\nf@width-\pgflinewidth, 0);
        \end{tikzpicture}}
    \end{picture}%
    \fi
    {\color{@bgcolor}\color@block{\nf@width}{\nf@captionheight}{.1\p@}}%
    \hskip\dimexpr(\nf@margin+0.5\nf@trianglebase)%
    \vbox to \nf@captionheight\bgroup
    \nf@caption\vfill\normalcolor
    \egroup\par\nointerlineskip\vskip\nf@trianglebase
    \vskip\nf@margin
    \noindent\hskip\dimexpr(\nf@margin+0.5\nf@trianglebase)%
    \box\nf@contentsbox\par\nointerlineskip
    \vskip\nf@margin
    \hskip\dimexpr(\nf@margin+0.5\nf@trianglebase)%
    \vbox to \nf@sourceheight\bgroup
    \ifx\nf@source\@empty\else
    \noindent\color{@bgcolor}%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}\par\normalcolor
    \noindent Source: \nf@source\par\vfill\fi\egroup
    \vfill\egroup
    \edef\nf@currbox{\expandafter\csname nfbox@\nf@size
      @\nf@placement\endcsname}%
    \global\setbox\nf@currbox=
    \vbox{\box\nf@currbox\nointerlineskip\penalty0\box\nf@mainbox}}
\newnon@float{map}{lom}{Map}
\def\listofmapsname{List of Maps}
\newnon@float{table}{lot}{Table}
\newnon@float{chart}{loc}{Chart}
\def\listofchartsname{List of charts}
\newbox\nfbox@S@ul
\newbox\nfbox@S@ur
\newbox\nfbox@S@ll
\newbox\nfbox@S@lr
\newbox\nfbox@S@UL
\newbox\nfbox@S@UR
\newbox\nfbox@S@LL
\newbox\nfbox@S@LR
\newbox\nfbox@T@ul
\newbox\nfbox@T@ur
\newbox\nfbox@T@UL
\newbox\nfbox@T@UR
\newbox\nfbox@W@ul
\newbox\nfbox@W@ll
\newbox\nfbox@W@UL
\newbox\nfbox@W@LL
\newbox\nfbox@B@ul
\newbox\nfbox@B@UL
\ifx\@tempboxb\@undefined
  \newbox\@tempboxb
\fi
\edef\standard@output{\the\output}
\output{\if@twocolumn\the\nf@output\else\standard@output\fi}
\newtoks\nf@output
\nf@output {%
  \ifodd\c@page
    \global\let\curr@nfbox@S@ul\nfbox@S@UL
    \global\let\curr@nfbox@S@ur\nfbox@S@UR
    \global\let\curr@nfbox@S@ll\nfbox@S@LL
    \global\let\curr@nfbox@S@lr\nfbox@S@LR
    \global\let\curr@nfbox@T@ul\nfbox@T@UL
    \global\let\curr@nfbox@T@ur\nfbox@T@UR
    \global\let\curr@nfbox@W@ul\nfbox@W@UL
    \global\let\curr@nfbox@W@ll\nfbox@W@LL
    \global\let\curr@nfbox@B@ul\nfbox@B@UL
  \else
    \global\let\curr@nfbox@S@ul\nfbox@S@ul
    \global\let\curr@nfbox@S@ur\nfbox@S@ur
    \global\let\curr@nfbox@S@ll\nfbox@S@ll
    \global\let\curr@nfbox@S@lr\nfbox@S@lr
    \global\let\curr@nfbox@T@ul\nfbox@T@ul
    \global\let\curr@nfbox@T@ur\nfbox@T@ur
    \global\let\curr@nfbox@W@ul\nfbox@W@ul
    \global\let\curr@nfbox@W@ll\nfbox@W@ll
    \global\let\curr@nfbox@B@ul\nfbox@B@ul
  \fi
  \if@firstcolumn
    \global\let\curr@nfbox@S@uc\curr@nfbox@S@ul
    \global\let\curr@nfbox@S@lc\curr@nfbox@S@ll
    \global\let\curr@nfbox@T@uc\curr@nfbox@T@ul
  \else
    \global\let\curr@nfbox@S@uc\curr@nfbox@S@ur
    \global\let\curr@nfbox@S@lc\curr@nfbox@S@lr
    \global\let\curr@nfbox@T@uc\curr@nfbox@T@ur
  \fi
  \let \par \@@par
  \global\@colht=\textheight
  \ifdim\ht\curr@nfbox@B@ul>0.5\baselineskip
    \global\advance\@colht by -\textheight
  \fi
  \ifdim\ht\curr@nfbox@W@ul>0.5\baselineskip
    \global\advance\@colht by -0.5\textheight
  \fi
  \ifdim\ht\curr@nfbox@W@ll>0.5\baselineskip
    \global\advance\@colht by -0.5\textheight
  \fi
  \ifdim\@colht < \baselineskip
    \nf@output@widepage
  \else
    \nf@makecol
  \fi
}
\def\nf@output@widepage{%
  \unvbox\@cclv
  \penalty\outputpenalty
  \if@firstcolumn\else
  \ClassError{faosyb}{Wide or big nonfloats defined too late.  Move
    them up}{I encountered Big or Wide floats when I already made the
    first column.  Please move them up}
  \fi
  \ifdim\ht\curr@nfbox@B@ul>0.5\baselineskip
     \global\setbox\@outputbox\vsplit\curr@nfbox@B@ul to \textheight
  \else
     \setbox\@tempboxa\vsplit\curr@nfbox@W@ul to 0.5\textheight
     \setbox\@tempboxb\vsplit\curr@nfbox@W@ll to 0.5\textheight
     \setbox\@outputbox\vbox\bgroup
        \box\@tempboxa
        \nointerlineskip
        \box\@tempboxb
     \egroup
  \fi
  \global\vsize\textheight
  \global\@colht\textheight
  \@outputpage
  \@firstcolumntrue
}
\def\nf@makecol{%
  \global\@colroom\@colht
  \ifdim\ht\curr@nfbox@T@uc>0.5\baselineskip
     \global\@colroom=0pt
  \fi
  \ifdim\ht\curr@nfbox@S@uc>0.5\baselineskip
     \global\advance\@colroom by -0.5\textheight
  \fi
  \ifdim\ht\curr@nfbox@S@lc>0.5\baselineskip
     \global\advance\@colroom by -0.5\textheight
  \fi
  \ifdim\@colroom<0.5\baselineskip
    \nf@makenfcol
  \else
    \nf@makemixedcol
  \fi}
\def\nf@makenfcol{%
  \unvbox\@cclv
  \penalty\outputpenalty
  \ifdim\@colht>0.9\textheight  % one tall or two squares
    \ifdim\ht\curr@nfbox@T@uc>0.5\baselineskip
      \setbox\@outputbox\vbox\bgroup
      \boxmaxdepth \@maxdepth
      \vsplit \curr@nfbox@T@uc to \textheight
      \egroup
    \else
     \setbox\@outputbox\vbox\bgroup
      \boxmaxdepth \@maxdepth
      \vsplit\curr@nfbox@S@uc to 0.5\textheight
       \nointerlineskip
       \vsplit\curr@nfbox@S@lc to 0.5\textheight
     \egroup
    \fi
  \else  % one square
    \ifdim\ht\curr@nfbox@S@uc>0.49\textheight
      \setbox\@outputbox\vsplit \curr@nfbox@S@uc to 0.5\textheight
    \else
      \setbox\@outputbox\vsplit \curr@nfbox@S@lc to 0.5\textheight
    \fi
  \fi
  \nf@opcol
}
\def\nf@makemixedcol{%
  \ifdim\@colroom=\vsize
    \nf@makemixedcol@
  \else
    \global\vsize=\@colroom
    \unvbox\@cclv
    \penalty\outputpenalty
  \fi}
\def\nf@makemixedcol@{%
   \ifvoid\footins
     \setbox\@outputbox \box \@cclv
   \else
     \setbox\@outputbox \vbox {%
       \boxmaxdepth \@maxdepth
       \unvbox \@cclv
       \vskip \skip\footins
       \color@begingroup
         \normalcolor
         \footnoterule
         \unvbox \footins
       \color@endgroup
       }%
   \fi
   \ifdim\ht\curr@nfbox@S@uc>0.49\textheight
     \setbox\@tempboxa\vsplit\curr@nfbox@S@uc to 0.5\textheight
     \setbox\@outputbox \vbox
       \bgroup
         \box\@tempboxa
         \nointerlineskip
         \box\@outputbox
       \egroup
   \fi
   \ifdim\ht\curr@nfbox@S@lc>0.49\textheight
     \setbox\@tempboxa\vsplit\curr@nfbox@S@lc to 0.5\textheight
     \setbox\@outputbox \vbox
       \bgroup
         \box\@outputbox
         \nointerlineskip
         \box\@tempboxa
       \egroup
   \fi
   \nf@opcol}
\def\nf@opcol{%
  \if@firstcolumn
    \global\@firstcolumnfalse
    \global\setbox\@leftcolumn\box\@outputbox
  \else
    \global\@firstcolumntrue
    \ifdim\ht\curr@nfbox@W@ul>0.5\baselineskip
      \setbox\@tempboxa\vsplit \curr@nfbox@W@ul to 0.5\textheight
    \else
      \setbox\@tempboxb\box\@tempboxa
    \fi
    \setbox\@outputbox \vbox\bgroup
      \box\@tempboxa
      \nointerlineskip
      \hb@xt@\textwidth {%
        \hb@xt@\columnwidth {%
          \box\@leftcolumn \hss}%
        \hfil
        {\normalcolor\vrule \@width\columnseprule}%
        \hfil
        \hb@xt@\columnwidth {%
          \box\@outputbox \hss}%
      }%
    \egroup
    \ifdim\ht\curr@nfbox@W@ll>0.5\baselineskip
      \setbox\@tempboxa\vsplit \curr@nfbox@W@ll to 0.5\textheight
      \setbox\@ouputbox\vbox\bgroup
        \box\@outputbox
        \nointerlineskip
        \box\@tempboxa
      \egroup
    \fi
    \@outputpage
    \global\vsize\textheight
    \global\@colht\textheight
    \global\@colroom\textheight
   \fi}
\let\standard@clearpage\clearpage
\def\clearpage{%
  \if@twocolumn
    \nf@clearpage
  \else
    \standard@clearpage
\fi}
\def\nf@totalheight{\dimexpr(%
  \ht\nfbox@S@UL+
  \ht\nfbox@S@UR+
  \ht\nfbox@S@LL+
  \ht\nfbox@S@LR+
  \ht\nfbox@T@UL+
  \ht\nfbox@T@UR+
  \ht\nfbox@W@UL+
  \ht\nfbox@W@LL+
  \ht\nfbox@B@UL+
  \ht\nfbox@S@ul+
  \ht\nfbox@S@ur+
  \ht\nfbox@S@ll+
  \ht\nfbox@S@lr+
  \ht\nfbox@T@ul+
  \ht\nfbox@T@ur+
  \ht\nfbox@W@ul+
  \ht\nfbox@W@ll+
  \ht\nfbox@B@ul)}
 \def\nf@clearpage{%
  \write\m@ne{}%
  \if@firstcolumn
    \ifdim\dimexpr(\pagetotal+\nf@totalheight)>\baselineskip
    \leavevmode
     \null\vfill\newpage
     \null\vfill\newpage
    \fi
  \else
    \leavevmode
   \null\vfill\newpage
  \fi
  \ifdim\nf@totalheight>\baselineskip
  \nf@clearpage\fi
}
\def\clearspread{\clearpage\ifodd\c@page
    \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\@firstcolumntrue}
\AtEndDocument{\if@twocolumn
  \ifdim\nf@totalheight>\baselineskip
  \null\vfill\clearpage\fi
\fi}
\newif\if@mainmatter
\def\frontmatter{\cleardoublepage\setbgcolor{gray}\selectcolor
  \pagenumbering{roman}\pagestyle{standardpagestyle}%
  \onecolumn\@mainmatterfalse}
\def\mainmatter{\cleardoublepage\onecolumn
  \pagenumbering{arabic}\pagestyle{standardpagestyle}%
  \@mainmattertrue}
\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{-1}
\renewcommand \thepart {\@arabic\c@part}
\newcounter{fao@partnum}
\setcounter{fao@partnum}{0}
\def\fao@currentpartnum{0}
\renewcommand\part{%
  \secdef\@part\@spart}
\def\EndPartIntro{\clearspread\twocolumn
  \pagestyle{standardpagestyle}}
\def\@maxpart{1}
\def\iconfill#1#2#3{%
  \expandafter\ifx\csname @icon@1\endcsname\relax\strut\else
  \@tempcnta=1
  \setbox\@tempboxa=\hbox{}%
  \loop
  \@tempdima=#1
  \setbox\@tempboxa=\hbox{\unhbox\@tempboxa
    \colored@icon@fg[width=\@tempdima]{\csname
      @icon@\the\@tempcnta\endcsname}{#3}}%
  \advance\@tempcnta by 1\relax
  \ifnum\@tempcnta>\@maxpart\relax\@tempcnta=1\fi
  \ifdim\wd\@tempboxa>#2\else\repeat
  \unhbox\@tempboxa
  \fi}
\def\currenticonfill#1#2#3{%
  \expandafter\ifx\csname @icon@\thepart\endcsname\relax\strut\else
  \setbox\@tempboxa=\hbox{}%
  \@tempdima=#1
  \loop
  \@tempdima=1.44\@tempdima
  \setbox\@tempboxa=\hbox{\unhbox\@tempboxa
    \colored@icon@fg[width=\@tempdima]{\csname
      @icon@\thepart\endcsname}{#3}}%
  \ifdim\wd\@tempboxa>#2\else\repeat
  \unhbox\@tempboxa
  \fi}
\def\@part[#1]#2{%
  \clearspread
  \onecolumn
  \clearspread
  \selectcolor
  \selecticon
  \color{@bgcolor}%
  \rowcolors{2}{@bgcolor!10}{}%
  \pagestyle{partpagestyle}%
  \refstepcounter{part}%
  \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
  \protected@write\@auxout{}%
  {\string\newicon{\thepart}{\currenticon}
    \string\gdef\string\@maxpart{\thepart}}%
  \def\@partpagepicture{%
    \put(-20,-500){\rotatebox{30}{\parbox{\textwidth}{%
      \iconfill{1cm}{0.5\textwidth}{20}\currenticonfill{1cm}{0.4\textwidth}{20}\\
      \iconfill{1cm}{1.15\textwidth}{100}\\
      \iconfill{1cm}{1.14\textwidth}{20}}}}}%
  \markboth{#1}{#1}%
  \null
  \newpage
  \def\@partpagepicture{\put(150,-200){\rotatebox{30}{\iconfill{1cm}{12cm}{20}}}%
  \gdef\@partpagepicture{}}
  {\interlinepenalty \@M
    \vspace*{80\p@}
    \captionfamily
    \fontsize{240\p@}{240\p@}\selectfont\raggedright\thepart~%
    \parbox[b]{0.8\textwidth}{\fontsize{64\p@}{72\p@}\selectfont
      \raggedright\null#2\par}\par\vskip80\p@
  }\par}
\def\@spart#1{%
  \clearspread
  \onecolumn
  \clearspread
  \selectcolor
  \selecticon
  \color{@bgcolor}%
  \rowcolors{2}{@bgcolor!10}{}%
  \pagestyle{partpagestyle}%
  \phantomsection
  \addcontentsline{toc}{spart}{\hspace{1em}#1}%
   \def\@partpagepicture{%
     \put(20,-500){\rotatebox{30}{\parbox{\textwidth}{%
       \iconfill{1cm}{1.14\textwidth}{20}\\
       \iconfill{1cm}{1.15\textwidth}{100}\\
       \iconfill{1cm}{1.14\textwidth}{20}}}}}%
   \markboth{#1}{#1}%
   \null
   \newpage
   \def\@partpagepicture{\put(150,-150){\rotatebox{30}{\iconfill{1cm}{12cm}{20}}}%
   \gdef\@partpagepicture{}}
   {\interlinepenalty \@M
     \vspace*{80\p@}
     \captionfamily
     \parbox[b]{0.8\textwidth}{\fontsize{64\p@}{72\p@}\selectfont
       \raggedright\null#1\par}\par\vskip80\p@
   }%
\par}
\def\sectionmark#1{\markright{#1}}
\renewcommand\section{\par\clearspread
  \@startsection {section}{1}{\z@}%
                                   {-1sp}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries\raggedright
                                   \color{@bgcolor}}}
\newenvironment{tablepages}{\onecolumn
  \bgroup\narrowfamily\multicolsep=\z@
  \vspace*{-2cm}%
  \def\emph{\textsl}%
  \begin{adjmulticols}{1}{-1.3cm}{-1.3cm}\centering\normalcolor}%
  {\end{adjmulticols}\egroup}
\AtBeginDocument{\providecommand{\tablemph}[1]{\emph{#1}}}
\newcolumntype{d}[1]{D{.}{.}{#1}}
\newcolumntype{H}{>{\columncolor{@tableheadcolor}[1.01\tabcolsep][1.01\tabcolsep]}c}
\newcolumntype{P}[1]{>{\columncolor{@tableheadcolor}[1.01\tabcolsep][1.01\tabcolsep]%
    \@fao@Pentry{#1}}c<{\end@fao@Pentry}}
\def\@fao@Pentry#1#2\end@fao@Pentry{%
\parbox[t]{#1}{\centering\strut\hspace{\z@}#2\strut}}
\newcolumntype{C}[1]{>{\columncolor{@tableheadcolor}[1.01\tabcolsep][1.01\tabcolsep]%
    \@fao@Centry{#1}}c<{\end@fao@Centry}}
\def\@fao@Centry#1#2\end@fao@Centry{%
\settowidth{\@tempdima}{$-99.999$}%
\@tempdima=#1\@tempdima\relax
\parbox[t]{\@tempdima}{\centering\strut\hspace{\z@}#2\strut}}
\def\LT@makecaption#1#2#3{%
  \LT@mcol\LT@cols {@{}l}{\cellcolor{white}%
    \rlap{\fcolorbox{white}{@tableheadcolor}{\normalsize
      \captionfamily\large\strut
      \textcolor{white}{#1{\MakeUppercase{#2}: }#3}}}%
    \begin{picture}(0,0)%
      \put(.5,-7){\color{@bgcolor}%
        \begin{tikzpicture}[baseline=(current bounding box.north)]
          \fill (0,0) -- (\nf@trianglebase,0) --
          (.5\nf@trianglebase,-\nf@trianglebase) -- cycle;
        \end{tikzpicture}}
    \end{picture}\normalcolor
    \raisebox{-17pt}{\strut}}}
\def\@generictoc#1#2{\clearspread
  {\fontsize{48pt}{48pt}\selectfont
    \captionfamily\color{black!40}#1\par}\@mkboth{#1}{#1}\bigskip
  \@starttoc{#2}}
\renewcommand\tableofcontents{\clearspread
  \@mkboth{\contentsname}{\contentsname}%
  \makebox[0pt][l]{\fontsize{24pt}{32pt}\selectfont \bfseries
    \color{black!70}\MakeUppercase{\contentsname}\space}%
  \par\vspace{-2\baselineskip}\vspace{-\parskip}%
  \@starttoc{toc}}
\newlength{\@tocpartskip}
\define@key{fao}{tocpartskip}{\setlength{\@tocpartskip}{#1}}
\faoset{tocpartskip=\z@}
\newdimen\@fao@tocrule@start
\newdimen\@fao@tocrule@height
\def\@draw@tocrule@part{\@fao@tocrule@height=\pagetotal
  \protected@write\@auxout{}{\string\fao@partblobbottom{\fao@currentpartnum}{\the\@fao@tocrule@height}}%
  \advance\@fao@tocrule@height-\@fao@tocrule@start
  \bgroup\parskip\z@
  \parbox[b][\z@]{\z@}{\hspace*{-15\p@}\color{@bgcolor}\rule{2\p@}{\@fao@tocrule@height}}%
  \parbox[b][\z@]{\z@}{\hspace*{330\p@}%
    \color{@bgcolor}\rule{41\p@}{\@fao@tocrule@height}}%
  \par\vspace{-0.5\baselineskip}\egroup}
\def\@draw@tocrule@section{\@fao@tocrule@height=\pagetotal
  \protected@write\@auxout{}{\string\fao@partblobbottom{\fao@currentpartnum}{\the\@fao@tocrule@height}}%
  \advance\@fao@tocrule@height-\@fao@tocrule@start
  \advance\@fao@tocrule@height5\p@
  \bgroup\parskip\z@\small
  \raisebox{\baselineskip}[\z@][\z@]{\parbox[b][\z@]{\z@}{\hspace*{-35\p@}\color{@bgcolor}\rule{2\p@}{\@fao@tocrule@height}}}%
  \raisebox{\baselineskip}[\z@][\z@]{\parbox[b][\z@]{\z@}{\hspace*{310\p@}%
      \color{@bgcolor}\rule{41\p@}{\@fao@tocrule@height}}}%
  \par\vspace{-\baselineskip}\egroup}
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{3em}%
    \addvspace{\@tocpartskip}%
    \begingroup
     \@fao@tocrule@start=\pagetotal
     \protected@write\@auxout{}{\string\fao@partblobtop{\fao@currentpartnum}{\the\@fao@tocrule@start}}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leftskip180\p@
      {\leavevmode
       \color{@bgcolor}\bfseries\partname\space#1:
       \hfil \hb@xt@\@pnumwidth{\hss #2}}%
     \par\@draw@tocrule@part
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@spart[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{3em}%
    \begingroup
     \@fao@tocrule@start=\pagetotal
     \protected@write\@auxout{}{\string\fao@partblobtop{\fao@currentpartnum}{\the\@fao@tocrule@start}}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leftskip180\p@
      {\leavevmode
       \color{@bgcolor}\bfseries#1:
       \hfil \hb@xt@\@pnumwidth{\hss #2}}%
     \par\@draw@tocrule@part
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{3em}%
    \begingroup
    \small
     \@fao@tocrule@start=\pagetotal
     \leftskip200\p@\relax\parskip\z@
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode\small\strut
       #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par\@draw@tocrule@section
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand\appendix{%
  \bookmarksetup{startatroot}%
  \addtocontents{toc}{\string\let\string\@draw@tocrule@part\string\relax
    \string\let\string\@draw@tocrule@section\string\relax}}
\AtEndDocument{%
  \immediate\write\@auxout{\string\@writefile{loc}{\string\par}}%
  \immediate\write\@auxout{\string\@writefile{lot}{\string\par}}%
  \immediate\write\@auxout{\string\@writefile{lom}{\string\par}}}
\newcommand*\l@nonfloat{\@dottedtocline{1}{\z@}{2.3em}}
\def\numberline#1{%
  \raisebox{\z@}[\z@][\z@]{%
    \fcolorbox{@bgcolor}{@bgcolor}{%
      \hb@xt@\@tempdima{\color{white}#1\strut\hfil}}}\hspace{2em}}
\newcommand\listofmaps{\@generictoc{\listofmapsname}{lom}}
\let\l@map\l@nonfloat
\renewcommand\listoftables{\@generictoc{\listtablename}{lot}}
\let\l@table\l@nonfloat
\newcommand\listofcharts{\@generictoc{\listofchartsname}{loc}}
\let\l@chart\l@nonfloat
\newcommand\metadatasection[1]{\clearspread\twocolumn\normalcolor
  \section{#1}}
\def\metadata#1{\bgroup
      \def\meta@key{@@@@}%
    \def\key##1{\NR@gettitle{##1}\phantomsection\label{##1}%
      \gdef\meta@key{##1}}
    \def\source##1{\emph{Source: }##1. }%
    \def\owner##1{\emph{Owner: }##1. }%
  \begin{list}{}{\topsep8\p@\labelwidth\z@
      \labelsep\z@\itemindent\z@\parsep0.4ex plus 0.5ex minus
      0.2ex\relax\listparindent\z@\leftmargin\z@\rightmargin\z@
    \partopsep\z@}%
  \item{\bfseries\textbullet~#1\par\penalty10000}}
\def\endmetadata{%
  \expandafter\ifx\csname
     metaback@\meta@key\endcsname\relax
  \else
    \emph{Referenced in: }
    \csname metaback@\meta@key\endcsname
  \fi
  \end{list}\egroup}
\def\refMetadata#1{%
  \ifx\@captype\@undefined\def\@captype{table}\fi
    \if@filesw
      \immediate\write\@mainaux{%
        \string\fao@metaback{#1}{\@captype}{\csname the\@captype\endcsname}{\thepage}{\@currentHref}}%
    \fi
}
\def\fao@metaback#1#2#3#4#5{%
  \expandafter\ifx\csname metaback@#1\endcsname\relax
    \expandafter\gdef\csname metaback@#1\endcsname{%
    \hyper@linkstart{link}{#5}#2~#3\hyper@linkend}%
  \else
    \expandafter\g@addto@macro\csname metaback@#1\endcsname{,
    \hyper@linkstart{link}{#5}#2~#3\hyper@linkend}%
  \fi}
\def\fitemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {\def\makelabel##1{\color{@bgcolor}{##1}\space}%
        \itemsep\z@\labelwidth\z@
        \leftmargin\z@\labelsep\z@}%
  \fi}
\let\endfitemize =\endlist
\newenvironment{freading}{%
  \vfill\section*{Further reading}\par
  \vspace{-\baselineskip}{\color{@bgcolor}{\rule{\columnwidth}{1.5pt}}}\par
  \vspace{-\baselineskip}\bgroup
  \let\itemize=\fitemize
  \let\enditemize=\endfitemize}{\egroup}
\newlength{\@publicationskip}
\define@key{fao}{publicationskip}{\setlength{\@publicationskip}{#1}}
\faoset{publicationskip=6pt plus 2pt minus 2pt}
\newlength{\@publicationparskip}
\define@key{fao}{publicationparskip}{\setlength{\@publicationparskip}{#1}}
\faoset{publicationparskip=6pt plus 6pt minus 4pt}
\newenvironment{publication}[2][]{%
  \par{\bfseries#2\par}\begin{minipage}[t]{0.49\columnwidth}%
    \setlength\parskip{\@publicationparskip}%
    \gdef\@pub@cover{#1}%
    \long\def\pDescription##1{\par##1\par}%
    \def\pEdition##1##2{\par##1: ##2\par}%
    \def\pCycle##1{\par Publication cycle: ##1\par}%
    \def\pWeb##1{\par \raggedright Webpage: \url{##1}\par}}%
  {\end{minipage}%
  \ifx\@pub@cover\@empty\else
  \hspace{0.1\columnwidth}%
  \raisebox{\dimexpr\baselineskip-\totalheight}{%
    \includegraphics[width=0.4\columnwidth]{\@pub@cover}}\fi\par
  \vspace{\@publicationskip}}
\DeclareRobustCommand*\textsubscript[1]{%
  \@textsubscript{\selectfont#1}}
\def\@textsubscript#1{%
  {\m@th\ensuremath{_{\mbox{\fontsize\sf@size\z@#1}}}}}
\newenvironment{lyxlist}[1]
{\begin{list}{}
{\settowidth{\labelwidth}{#1}
 \setlength{\leftmargin}{\labelwidth}
 \addtolength{\leftmargin}{\labelsep}
 \renewcommand{\makelabel}[1]{##1\hfil}}}
{\end{list}}
\setbgcolor{gray}\selectcolor
\pagestyle{standardpagestyle}
\normalsize\normalfont
\endinput
%%
%% End of file `faosyb.cls'.
