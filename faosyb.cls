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
[2013/08/18 v0.1 Typesetting FAO Yearbook]
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
\RequirePackage{fancyhdr}
\RequirePackage{caption,lscape,longtable,siunitx,booktabs}
\RequirePackage{multicol,atbegshi,picture,hhline,afterpage}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{pdfpages}
\RequirePackage[authoryear]{natbib}
\RequirePackage[breaklinks]{hyperref}
\RequirePackage{bookmark}
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
  left=2cm,right=2cm,bottom=2cm,top=2cm,twoside,
  columnsep=30pt, twoside}%
\savegeometry{standard}
\setlength\parindent\z@
\setlength\parskip{6\p@ plus 6\p@ minus 4\p@}
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
\newlength\nf@vert@sep
\setlength\nf@vert@sep{60pt}
\newlength\nf@width
\newlength\nf@height
\newlength\nf@captionheight
\setlength\nf@captionheight{48\p@}
\newlength\nf@sourceheight
\setlength\nf@sourceheight{48\p@}
\newlength\nf@margin
\setlength\nf@margin{5\p@}
\newlength\nf@trianglebase
\setlength\nf@margin{10\p@}
\newlength\chartwidth
\newlength\chartheight
\newcount\nonfloat@type
\nonfloat@type=4\relax
\def\newnon@float#1#2#3#4{%
  \expandafter\ifx\csname ftype@#1\endcsname\relax
    \expandafter\edef\csname ftype@#1\endcsname{\the\nonfloat@type}%
    \multiply\nonfloat@type by 2\relax
  \fi
  \expandafter\def\csname ext@#1\endcsname{#2}%
  \expandafter\ifx\csname the#1\endcsname\relax
  \newcounter{#1}\fi
  \expandafter\edef\csname fnum@#1\endcsname{#3~\csname
    the#1\endcsname}%
  \expandafter\let\csname #1\endcsname\relax
  \expandafter\let\csname end#1\endcsname\relax
  \newenvironment{#1}{\non@float{#1}}{\endnon@float}}
\def\non@float#1#2#3{
  \def\@captype{#1}%
  \def\nf@size{#2}%
  \def\nf@placement{#3}%
  \let\nf@source\@empty
  \nf@width=\columnwidth
  \nf@height=\dimexpr(\textheight/2-\nf@vert@sep/2)%
  \def\tempW{W}%
  \def\tempT{T}%
  \def\tempB{B}%
  \ifx\nf@size\tempW
    \nf@width=\textwidth
  \fi
  \ifx\nf@size\tempT
    \nf@height=\textheight
  \fi
  \ifx\nf@size\tempB
    \nf@width=\textwidth
    \nf@height=\textheight
  \fi
  \chartheight=
  \dimexpr(\nf@height-2\nf@margin-\nf@captionheight-\nf@sourceheight)%
  \chartwidth=\dimexpr(\nf@width-2\nf@margin)%
}
\def\endnon@float{}
\newnon@float{map}{lom}{Map}{List of Maps}
\newnon@float{table}{lot}{Table}{List of Tables}
\newnon@float{chart}{loc}{Chart}{List of Charts}
\endinput
%%
%% End of file `faosyb.cls'.
