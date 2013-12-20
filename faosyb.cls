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
[2013/12/19 v1.6 Typesetting FAO Yearbook]
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
\DeclareOption{web}{\printfalse
  \PassOptionsToPackage{paper=a4paper}{geometry}}
\DeclareOption{print}{\printtrue
  \PassOptionsToPackage{papersize={230mm,317mm},
    layouthoffset=1cm,layoutvoffset=1cm}{geometry}}
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
\RequirePackage{tikz,dcolumn}
\RequirePackage{geometry}
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
\RequirePackage{adjmulticol,lettrine}
\if@issuumode
\RequirePackage{issuulinks}
\fi
\hypersetup{breaklinks,colorlinks=false,pdfborder=0 0 0,
  pdfauthor={FAO},
  pdfsubject={Statistical Yearbook of the Food And Agricultural Organization for the United Nations},
  pdftitle={Statistical Yearbook of the Food And Agricultural Organization for the United Nations},
  pdfkeywords={FAO, Food Security, Undernourishment, Sustainable agriculture},
  pdfpagelayout=TwoColumnLeft,
  pdfnewwindow=true
}
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
\renewcommand\LettrineFontHook{\color{@bgcolor}}
\setlength\DefaultFindent{2pt}
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
\setlength\parindent\z@
\setlength\parskip{6\p@ plus 6\p@ minus 4\p@}
\geometry{layout=a4paper,
    left=5cm,right=3.5cm,bottom=2.3cm,top=76mm,
    footskip=8mm, head=30mm, headsep=3mm,
    columnsep=6mm, twoside}%
\savegeometry{frontmatter}
\geometry{layout=a4paper,
  left=2cm,right=2cm,bottom=2.3cm,top=2.3cm,
  footskip=8mm, head=30mm, headsep=3mm,
  columnsep=6mm, twoside}%
\savegeometry{standard}
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
\fancypagestyle{frontmatterpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset[LR]{1.5cm}%
  \renewcommand\headrulewidth{\z@}%
  \fancyfoot[RO,LE]{%
    \bgroup
    \setlength\fboxsep{10\p@}%
    \raisebox{-\height}{\fcolorbox{white}{white}{\thepage}}%
  \egroup}%
}
\fancypagestyle{spartpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset[LR]{3cm}%
  \renewcommand\headrulewidth{\z@}%
  \fancyfoot[RO,LE]{%
    \bgroup
    \setlength\fboxsep{10\p@}%
    \raisebox{-\height}{\fcolorbox{white}{white}{\thepage}}%
  \egroup}%
}
\def\@foliobox{\bgroup\normalsize\normalfont\fboxsep=5mm\relax
  \fcolorbox{@bgcolor}{@bgcolor}{\parbox{4mm}{\centering
      \color{white}\thepage\strut}}\egroup}
\fancypagestyle{standardpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset[LR]{2.12cm}%
  \renewcommand\headrulewidth{\z@}%
  \fancyhead[LE]{\hspace*{25\p@}\color{@bgcolor}\captionfamily
    \Huge\strut\ifnum\thepart>0\relax
    \thepart\fi\normalsize\dotfill}%
  \fancyhead[LO]{\hspace*{25\p@}\color{@bgcolor}\normalsize\dotfill
    \captionfamily\Huge\strut
    \leftmark\expandafter\ifx\csname @icon@\thepart\endcsname\relax\else\space
      \raisebox{-0.25\totalheight}{%
        \colored@icon[width=1.2cm]{\csname
          @icon@\thepart\endcsname}}\fi
      \hspace*{25\p@}}%
  \fancyfoot[LE]{%
    \bgroup
    \setlength\fboxsep{11\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\@foliobox}%
    \normalsize\dotfill
    \raisebox{-\height}{\@evenfootmark\hspace*{25\p@}}%
  \egroup}%
  \fancyfoot[LO]{%
    \bgroup
    \setlength\fboxsep{11\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\hspace*{25\p@}\@oddfootmark}%
    \normalsize\dotfill
    \raisebox{-\height}{\@foliobox}%
  \egroup}%
}
\pagestyle{standardpagestyle}
\def\@partpagepicture{}
\fancypagestyle{partpagestyle}{%
  \fancyhf{}%
  \fancyhead[L]{%
    \begin{picture}(0,0)
      \@partpagepicture
      \put(-7,63){%
        \raisebox{-\height}{\begin{tikzpicture}
          \fill[color=@bgcolor,opacity=.1]
          (0,0) rectangle ($(\textwidth,\textheight)+(5cm,5cm)$);
        \end{tikzpicture}}}
    \end{picture}}
  \fancyhfoffset[LR]{2.22cm}%
  \renewcommand\headrulewidth{\z@}%
  \fancyfoot[LE]{%
    \bgroup
    \setlength\fboxsep{10\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\@foliobox}%
    \normalsize\dotfill
    \raisebox{-\height}{\@evenfootmark\hspace{20\p@}}%
  \egroup}%
  \fancyfoot[LO]{%
    \bgroup
    \setlength\fboxsep{10\p@}%
    \color{@bgcolor}%
    \raisebox{-\height}{\hspace*{25\p@}\@oddfootmark}%
    \normalsize\dotfill
    \raisebox{-\height}{\@foliobox}%
  \egroup}%
}
\def\fao@partblobtop#1#2{\expandafter\gdef\csname fao@blobstart#1\endcsname{#2}}
\def\fao@partblobbottom#1#2{\expandafter\gdef\csname fao@blobend#1\endcsname{#2}}
\gdef\@toc@ext@list{toc}
\newlength\nf@vert@sep
\setlength\nf@vert@sep{10mm}
\newlength\nf@width
\newlength\nf@height
\newlength\nf@captionheight
\setlength\nf@captionheight{11mm}
\newlength\nf@sourceheight
\setlength\nf@sourceheight{2\baselineskip}
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
  \ifx\nf@size\tempB
    \advance\chartheight by -2\baselineskip
  \fi
  \ifx\nf@size\tempT
    \advance\chartheight by -2\baselineskip
  \fi
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
    \leftskip-\nf@margin\parskip\z@\parindent\z@
    \ifx\nf@source\@empty\else
    \vskip0.5\baselineskip
    \color{@bgcolor}%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}\par\normalcolor
    Source: \nf@source\par\vfill\fi\egroup
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
     \setbox\@tempboxa\vsplit\curr@nfbox@B@ul to \textheight
     \setbox\@outputbox \vbox\bgroup
     \boxmaxdepth \@maxdepth
     \box\@tempboxa
     \vfill
     \egroup
  \else
     \setbox\@tempboxa\vsplit\curr@nfbox@W@ul to 0.5\textheight
     \setbox\@tempboxb\vsplit\curr@nfbox@W@ll to 0.5\textheight
     \setbox\@outputbox\vbox\bgroup
        \boxmaxdepth \@maxdepth
        \box\@tempboxa
        \nointerlineskip
        \box\@tempboxb
        \vfill
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
      \setbox\@outputbox\vbox\bgroup
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
\def\frontmatter{%
  \pagestyle{frontmatterpagestyle}%
  \onecolumn\@mainmatterfalse}
\def\mainmatter{\loadgeometry{standard}\onecolumn
  \@mainmattertrue}
\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{-1}
\renewcommand \thepart {\@arabic\c@part}
\newcounter{fao@partnum}
\setcounter{fao@partnum}{0}
\def\fao@currentpartnum{0}
\renewcommand\part{%
  \secdef\@part\@spart}
\def\EndPartIntro{\clearpage
\end{adjmulticols}\clearspread\twocolumn\normalcolor
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
      @icon@\the\@tempcnta\endcsname}{#3}\hspace{0.3\@tempdima}}%
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
      @icon@\thepart\endcsname}{#3}\hspace{0.2\@tempdima}}%
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
    \put(-15,-500){\rotatebox{30}{%
      \iconfill{1.2cm}{0.4\textwidth}{20}%
      \currenticonfill{1.2cm}{0.6\textwidth}{20}}}%
    \put(40,-550){\rotatebox{30}{%
      \iconfill{1.2cm}{1.2\textwidth}{100}}}%
    \put(40,-600){\rotatebox{30}{%
      \iconfill{1.2cm}{1.2\textwidth}{20}}}%
}
  \markboth{#1}{#1}%
  \null
  \newpage
  \def\@partpagepicture{\put(160,-180){\rotatebox{30}{\iconfill{1.2cm}{13.5cm}{20}}}%
  \gdef\@partpagepicture{}}
  {\interlinepenalty \@M
    \vspace*{80\p@}
    \captionfamily
    \fontsize{240\p@}{240\p@}\selectfont\raggedright\thepart~%
    \parbox[b]{0.8\textwidth}{\fontsize{64\p@}{72\p@}\selectfont
      \raggedright\null#2\par}\par\vskip80\p@
  }\par\normalcolor
  \begin{adjmulticols}{1}{44mm}{0mm}}
\define@choicekey*+{fao}{symbol}[\val\nr]%
{righttriangle,square,rightsemicircle}{%
  \ifcase\nr\relax
    \gdef\@currentsymbol{(0,0) -- (1ex,0) -- (1ex,1ex) -- cycle}%
  \or
   \gdef\@currentsymbol{(0,0) -- (1ex,0) -- (1ex,1ex) -- (0,1ex) --
     cycle}%
  \or
   \gdef\@currentsymbol{(0,0) arc[start angle=90, end angle=-90, x
     radius = 0.5ex, y radius = 0.5ex] -- cycle}%
   \fi
}{\ClassError{faosyb}{Bad symbol value \val}}
\faoset{symbol=square}
\def\@spart#1{%
  \cleardoublepage
  \loadgeometry{frontmatter}%
  \pagestyle{spartpagestyle}%
  \onecolumn
  \selectcolor
  \selecticon
  \rowcolors{2}{@bgcolor!10}{}%
  \phantomsection
  \addcontentsline{toc}{spart}{\hspace{1em}#1}%
  \makebox[0pt]{%
       \raisebox{-\totalheight}%
       [0pt][0pt]{\rotatebox{90}{\fontsize{9mm}{9mm}\selectfont
           \captionfamily
           \tikz\fill[color=@bgcolor]\@currentsymbol;\space
           \color{gray}#1\strut}}%
     \hspace*{50pt}}\par\vspace*{-\baselineskip}%
 \vspace*{-\parskip}}
\def\sectionmark#1{\markright{#1}}
\renewcommand\section{\par\clearspread
  \@startsection {section}{1}{\z@}%
                                   {-1sp}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries\raggedright
                                   \color{@bgcolor}}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-1sp}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries\raggedright
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
\def\@generictoc#1#2{\clearpage\loadgeometry{standard}%
  \pagestyle{frontmatterpagestyle}\onecolumn
  {\fontsize{48pt}{48pt}\selectfont
    \captionfamily\color{black!40}#1\par}\@mkboth{#1}{#1}\bigskip
  \@starttoc{#2}}
\renewcommand\tableofcontents{\clearpage\loadgeometry{standard}%
  \pagestyle{frontmatterpagestyle}\onecolumn
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
\def\nf@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont\color{@bgcolor}#5}%
     \par}%
  \fi}
\newcommand*\l@nonfloat{\nf@dottedtocline{1}{\z@}{2.3em}}
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
\define@key{fao}{indicatorsquarecolor}{%
  \colorlet{@indicatorsquarecolor}[cmyk]{#1}}
\faoset{indicatorsquarecolor=gray}
\def\metadata#1{\bgroup
      \def\meta@key{@@@@}%
    \def\key##1{\NR@gettitle{##1}\phantomsection\label{##1}%
      \gdef\meta@key{##1}}
    \def\source##1{\textbar\,\emph{\bfseries Source: }##1. }%
    \def\owner##1{\textbar\,\emph{\bfseries Owner: }##1. }%
  \begin{list}{}{\topsep8\p@\labelwidth\z@
      \labelsep\z@\itemindent\z@\parsep0.4ex plus 0.5ex minus
      0.2ex\relax\listparindent\z@\leftmargin\z@\rightmargin\z@
    \partopsep\z@}%
  \item{\bfseries{\color{@indicatorsquarecolor}$\blacksquare$}~#1\par\penalty10000}}
\def\endmetadata{%
  \expandafter\ifx\csname
     metaback@\meta@key\endcsname\relax
  \else
    \textbar\,\emph{\bfseries Referenced in: }
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
      {\def\makelabel##1{{##1}\space}\parskip\z@\topsep\z@
        \itemsep\z@\labelwidth\z@\parsep\z@\partopsep\z@
        \leftmargin\z@\labelsep\z@}%
  \fi}
\let\endfitemize =\endlist
\newenvironment{freading}{%
  \bgroup
  \fboxsep=5\p@
  \let\itemize=\fitemize
  \let\enditemize=\endfitemize
  \setbox\@tempboxa=\hbox\bgroup
  \begin{minipage}{0.9\columnwidth}\parskip\z@
  {\color{@bgcolor}\bfseries
    \makebox[\z@][r]{%
      \tikz\fill[color=@bgcolor] (0,0) -- (1.5ex,0) -- (1.5ex, 1.5ex) --
      cycle;\hspace{5\p@}}%
    Further reading\strut\par}}{\end{minipage}\egroup
  \par\vspace{12mm}%
  \hspace{\dimexpr(0.1\columnwidth-10\p@)}%
  \fcolorbox{@bgcolor!10}{@bgcolor!10}{\box\@tempboxa}%
  \egroup}
\newlength{\@publicationskip}
\define@key{fao}{publicationskip}{\setlength{\@publicationskip}{#1}}
\faoset{publicationskip=6pt plus 2pt minus 2pt}
\newlength{\@publicationparskip}
\define@key{fao}{publicationparskip}{\setlength{\@publicationparskip}{#1}}
\faoset{publicationparskip=6pt plus 6pt minus 4pt}
\newenvironment{publication}[2][]{%
  \gdef\@pub@cover{#1}%
  \par
  \raisebox{\dimexpr(\baselineskip-\totalheight)}[0pt]{%
  \ifx\@pub@cover\@empty\rule{0.4\columnwidth}{\z@}\else
    \includegraphics[width=0.4\columnwidth, angle=5,
    origin=c]{\@pub@cover}\fi}
  \hspace{0.1\columnwidth}%
  \begin{minipage}[t]{0.49\columnwidth}%
    \setlength\parskip{\@publicationparskip}%
    {\bfseries\large\color{@bgcolor}#2\par}
    \long\def\pDescription##1{\par##1\par}%
    \def\pEdition##1##2{\par##1: ##2\par}%
    \def\pCycle##1{\par Publication cycle: ##1\par}%
    \def\pWeb##1{\par \raggedright Webpage: \url{##1}\par}}%
  {\end{minipage}%
  \par
  \vspace{\@publicationskip}}
\define@key{fao}{resourcesicon}{\gdef\@resourcesicon{#1}}
\faoset{resourcesicon={}}
\define@key{fao}{resourcesname}{\gdef\@resourcesname{#1}}
\faoset{resourcesname={Key Resources}}
\def\KeyResources{\clearpage\phantomsection
  \ifx\@resourcesicon\@empty\else
  \def\@partpagepicture{%
    \put(190,-36){\colored@icon[width=1.2cm]{\@resourcesicon}}%
    \gdef\@partpagepicture{}}
  \fi
  \addcontentsline{toc}{section}{\@resourcesname}%
  \ifx\@resourcesicon\@empty\else
  \hspace*{1.3cm}%
  \fi
  {\color{@bgcolor}\Large\bfseries\raggedright\@resourcesname\par
    \vspace{2.3ex \@plus.2ex}}}
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
\renewenvironment{thebibliography}[1]
     {\section{\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\setbgcolor{gray}\selectcolor
\loadgeometry{standard}%
\pagestyle{empty}
\normalsize\normalfont
\endinput
%%
%% End of file `faosyb.cls'.
