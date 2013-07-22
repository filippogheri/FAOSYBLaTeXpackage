%%
%% This is file `faoyearbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% faoyearbook.dtx  (with options: `class')
%% Copyright (c) 2011, Food and Agriculture Organization of the  United Nations
%% 
%% All rights reserved.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{faoyearbook}
[2013/03/23 v1.11 Typesetting FAO Yearbook]
\newif\if@factbook
\@ifclassloaded{faofactbook}{\@factbooktrue}{\@factbookfalse}
\if@factbook\else
\PassOptionsToPackage{a4paper,twoside}{geometry}
\fi
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
  \if@factbook
  \PassOptionsToPackage{papersize={12cm,21cm},layoutsize={10cm,19cm},
    layouthoffset=1cm,layoutvoffset=1cm,twoside}{geometry}%
  \else
  \PassOptionsToPackage{papersize={230mm,317mm},layout=a4paper,
    layouthoffset=1cm,layoutvoffset=1cm,twoside}{geometry}%
   \fi}
\newif\if@altMargins
\@altMarginsfalse
\DeclareOption{altMargins}{\printtrue\@altMarginstrue
  \PassOptionsToPackage{papersize={220mm,307mm},layout=a4paper,
    layouthoffset=5mm,layoutvoffset=5mm,twoside}{geometry}
    \setlength{\footskip}{10pt}}
\newif\if@altMarginsNarrow
\@altMarginsNarrowfalse
\DeclareOption{altMarginsNarrow}{\printtrue\@altMarginsNarrowtrue
  \PassOptionsToPackage{papersize={220mm,307mm},layout=a4paper,
    layouthoffset=5mm,layoutvoffset=5mm,twoside}{geometry}
    \setlength{\footskip}{10pt}}
\newif\ifDraft
\Draftfalse
\DeclareOption{Draft}{\Drafttrue}
\DeclareOption{draft}{\Drafttrue}
\newif\if@issuumode
\@issuumodefalse
\DeclareOption{issuu}{\@issuumodetrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax
\if@factbook
\LoadClass[10pt,twoside,twocolumn,a4paper]{report}
\else
\LoadClass[10pt,twoside,twocolumn]{report}
\fi
\RequirePackage{graphicx,xkeyval}
\RequirePackage[table,cmyk]{xcolor}
\RequirePackage{tikz,geometry,dcolumn}
\RequirePackage{fancyhdr,pdfcolparcolumns,pdfcolparallel}
\RequirePackage{float,caption,lscape,longtable,siunitx,booktabs}
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
\if@factbook
\AtBeginDocument{%
  \geometry{layoutsize={10cm,19cm},
  left=1cm,right=1cm,bottom=1cm,top=1cm,twoside}%
  \setlength\columnsep{10pt}%
\savegeometry{standard}\@twosidetrue}
\else\if@altMargins
\AtBeginDocument{\geometry{layout=a4paper,
  left=2cm,right=1.5cm,bottom=2cm,top=2cm,twoside}%
  \setlength\columnsep{50pt}%
\savegeometry{standard}\@twosidetrue}
\else\if@altMarginsNarrow
\AtBeginDocument{\geometry{layout=a4paper,
  left=1.5cm,right=1cm,bottom=2cm,top=2cm,twoside}%
  \setlength\columnsep{50pt}%
\savegeometry{standard}\@twosidetrue}
\else
\AtBeginDocument{\geometry{layout=a4paper,
  left=2cm,right=2cm,bottom=2cm,top=2cm,twoside}%
  \setlength\columnsep{50pt}%
\savegeometry{standard}\@twosidetrue}
\fi\fi\fi
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
    \AtBeginShipoutUpperLeftForeground{%
      \color{black}%
      \@tempdima=\Gm@layouthoffset
      \@tempdimb=\Gm@layoutvoffset
      \advance\@tempdima by 0.2\Gm@layoutwidth
      \advance\@tempdimb by 0.7\Gm@layoutheight
      \put(\@tempdima,-\@tempdimb){%
        \rotatebox{45}{%
          \fontsize{5cm}{5cm}\selectfont
          \tikz\node[opacity=0.25,inner sep=\z@]{DRAFT};}}}}\fi}
\def\fao@partblobtop#1#2{\expandafter\gdef\csname fao@blobstart#1\endcsname{#2}}
\def\fao@partblobbottom#1#2{\expandafter\gdef\csname fao@blobend#1\endcsname{#2}}
\newlength{\fao@blobposition}
\newlength{\fao@blobheight}
\def\fao@oddstrip{%
  \if@altMargins
    \begin{picture}(0,0)%
      \put(530,-219){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@bgcolor}\rule{0.6cm}{1.017\Gm@layoutheight}}}%
    \end{picture}%
  \else\if@altMarginsNarrow
    \begin{picture}(0,0)%
      \put(544,-219){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@bgcolor}\rule{0.6cm}{1.017\Gm@layoutheight}}}%
    \end{picture}%
  \else
    \begin{picture}(0,0)%
      \put(530,-219){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@bgcolor}\rule{0.6cm}{1.017\Gm@layoutheight}}}%
    \end{picture}%
  \fi\fi}
\def\fao@evenstrip{%
  \if@altMargins
    \begin{picture}(0,0)%
      \put(-49,-219){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@bgcolor}\rule{0.6cm}{1.017\Gm@layoutheight}}}%
     \end{picture}%
   \else\if@altMarginsNarrow
     \begin{picture}(0,0)%
       \put(-35,-219){\raisebox{-0.717\Gm@layoutheight}{%
           \color{@bgcolor}\rule{0.6cm}{1.017\Gm@layoutheight}}}%
      \end{picture}%
    \else
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor}\rule{0.6cm}{1.017\Gm@layoutheight}}}%
      \end{picture}%
  \fi\fi}
\fancypagestyle{standardpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset{\z@}%
  \fancyhead[LO]{\fao@oddstrip}
  \fancyhead[LE]{\fao@evenstrip}%
  \fancyhead[RO]{%
    \color{black}\leftmark}%
  \fancyfoot[RO,LE]{\color{black}\thepage}%
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}}
\fancypagestyle{partpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset{\z@}%
  \fancyhead[LO]{%
    \begin{picture}(0,0)%
      \put(-216,-174){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@bgcolor!10}\rule{0.295\Gm@layoutwidth}{1.017\Gm@layoutheight}%
          \color{@bgcolor!7}\rule{0.728\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \fancyhead[LE]{%
    \begin{picture}(0,0)%
      \put(-63,-174){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@bgcolor!7}\rule{0.728\Gm@layoutwidth}{1.017\Gm@layoutheight}%
          \color{@bgcolor!10}\rule{0.295\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}}
\fancypagestyle{indicatorfirstpagestyle}{%
  \fancyhf{}%
    \if@altMargins
    \fancyhead[LE]{%
      \begin{picture}(0,0)
        \put(-105,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{white}\rule{0.6\Gm@layoutwidth}{1.017\Gm@layoutheight}%
            \color{@bgcolor!7}\rule{0.515\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)
        \put(-63,75){\raisebox{-0.717\Gm@layoutheight}{%
            \color{white}\rule{0.6\Gm@layoutwidth}{1.017\Gm@layoutheight}%
            \color{@bgcolor!7}\rule{0.515\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
    \else\if@altMarginsNarrow
    \fancyhead[LE]{%
      \begin{picture}(0,0)
        \put(-91,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{white}\rule{0.6\Gm@layoutwidth}{1.017\Gm@layoutheight}%
            \color{@bgcolor!7}\rule{0.515\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)
        \put(-63,75){\raisebox{-0.717\Gm@layoutheight}{%
            \color{white}\rule{0.6\Gm@layoutwidth}{1.017\Gm@layoutheight}%
            \color{@bgcolor!7}\rule{0.515\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
    \else
    \fancyhead[LE]{%
      \begin{picture}(0,0)
        \put(-120,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{white}\rule{0.6\Gm@layoutwidth}{1.017\Gm@layoutheight}%
            \color{@bgcolor!7}\rule{0.515\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)
        \put(-63,75){\raisebox{-0.717\Gm@layoutheight}{%
            \color{white}\rule{0.6\Gm@layoutwidth}{1.017\Gm@layoutheight}%
            \color{@bgcolor!7}\rule{0.515\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \fi\fi
  \fancyhead[RO]{\color{black}\leftmark}%
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}%
  \fancyfoot[RO]{\color{black}\thepage}%
  \fancyfoot[LE]{\color{black}\thepage}}
\fancypagestyle{indicatorpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset{\z@}
  \if@altMargins
    \fancyhead[LE]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \else\if@altMarginsNarrow
    \fancyhead[LE]{%
      \begin{picture}(0,0)%
        \put(-49,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)%
        \put(-49,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \else
    \fancyhead[LE]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \fi\fi
  \fancyhead[RO]{\color{black}\leftmark}%
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}%
  \fancyfoot[RO,LE]{\color{black}\thepage}}
\fancypagestyle{indicatorDpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset{\z@}
  \if@altMargins
    \fancyhead[LE]{%
      \begin{picture}(0,0)%
        \put(-49,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{0.5\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{0.5\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \else\if@altMarginsNarrow
    \fancyhead[LE]{%
      \begin{picture}(0,0)%
        \put(-35,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{0.5\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)%
        \put(-49,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{0.5\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \else
    \fancyhead[LE]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{0.5\Gm@layoutheight}}}%
      \end{picture}\fao@evenstrip}%
    \fancyhead[LO]{%
      \begin{picture}(0,0)%
        \put(-63,-219){\raisebox{-0.717\Gm@layoutheight}{%
            \color{@bgcolor!7}\rule{1.02\Gm@layoutwidth}{0.5\Gm@layoutheight}}}%
      \end{picture}\fao@oddstrip}%
  \fi\fi
  \fancyhead[RO]{\color{black}\leftmark}%
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}%
  \fancyfoot[RO]{\color{black}\thepage}%
  \fancyfoot[LE]{\color{black}\thepage}}
\fancypagestyle{tablepage}{%
  \fancyhf{}%
  \fancyhfoffset{\z@}
  \if@altMargins
  \fancyhead[LE]{%
    \begin{picture}(0,0)%
      \put(-48,-255){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@tablebg!10}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \fancyhead[LO]{%
    \begin{picture}(0,0)%
      \put(-62,-255){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@tablebg!10}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \else\if@altMarginsNarrow
  \fancyhead[LE]{%
    \begin{picture}(0,0)%
      \put(-34,-255){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@tablebg!10}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \fancyhead[LO]{%
    \begin{picture}(0,0)%
      \put(-48,-255){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@tablebg!10}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \else
  \fancyhead[LE]{%
    \begin{picture}(0,0)%
      \put(-20,-260){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@tablebg!10}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \fancyhead[LO]{%
    \begin{picture}(0,0)%
      \put(-20,-260){\raisebox{-0.717\Gm@layoutheight}{%
          \color{@tablebg!10}\rule{1.02\Gm@layoutwidth}{1.017\Gm@layoutheight}}}%
    \end{picture}}%
  \setlength{\footskip}{15pt}%
  \fi\fi
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}%
  \fancyfoot[RO,LE]{\thepage}}
\fancypagestyle{conceptpagestyle}{%
  \fancyhf{}%
  \fancyhfoffset{\z@}%
  \fancyhead[LE]{\color{black}}%
  \fancyhead[RO]{%
    \color{black}\leftmark}%
  \fancyfoot[RO,LE]{\color{black}\thepage}%
  \renewcommand{\headrulewidth}{\z@}%
  \renewcommand{\footrulewidth}{\z@}}
\newif\if@mainmatter
\def\frontmatter{\cleardoublepage
  \pagenumbering{roman}\onecolumn\@mainmatterfalse}
\def\mainmatter{\cleardoublepage\pagenumbering{arabic}\twocolumn
  \@mainmattertrue}
\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{-1}
\renewcommand \thepart {\@arabic\c@part}
\newcounter{fao@partnum}
\setcounter{fao@partnum}{0}
\def\fao@currentpartnum{0}
\renewcommand\part{%
  \cleardoublepage
  \addtocontents{toc}{\string\colorlet{@bgcolor}[cmyk]{\fao@color@string}}%
  \stepcounter{fao@partnum}%
  \expandafter\ifx\csname fao@blobstart\thefao@partnum\endcsname\relax
     \setlength{\fao@blobposition}{-100em}%
  \else
     \setlength{\fao@blobposition}{\csname
       fao@blobstart\thefao@partnum\endcsname}%
  \fi
  \typeout{DEBUG: position \the\fao@blobposition}%
  \setlength{\fao@blobheight}{-\fao@blobposition}%
  \expandafter\ifx\csname fao@blobend\thefao@partnum\endcsname\relax
     \setlength{\fao@blobheight}{0em}%
  \else
     \addtolength{\fao@blobheight}{\csname
       fao@blobend\thefao@partnum\endcsname}%
  \fi
  \typeout{DEBUG: height \the\fao@blobheight}%
  \addtocontents{toc}{%
    \string\gdef\string\fao@currentpartnum{\thefao@partnum}}%
  \ifprint
    \if@altMargins
     \newgeometry{layout=a4paper,left=0.5\textwidth,right=2cm,
      layouthoffset=5mm,layoutvoffset=5mm}%
    \else\if@altMarginsNarrow
     \newgeometry{layout=a4paper,left=0.5\textwidth,right=2cm,
      layouthoffset=5mm,layoutvoffset=5mm}%
    \else
     \newgeometry{layout=a4paper,left=0.5\textwidth,right=2cm,
      layouthoffset=1cm,layoutvoffset=1cm}%
    \fi\fi
  \else
  \newgeometry{layout=a4paper,left=0.5\textwidth,right=2cm}%
  \fi
  \selectcolor
\rowcolors{2}{@bgcolor!10}{}%
  \pagestyle{partpagestyle}%
  \if@twocolumn
    \onecolumn
  \fi
  \secdef\@part\@spart}
\def\@part[#1]#2{%
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \markboth{\MakeUppercase{#1}}{\MakeUppercase{\partname}~\thepart}%
    {\interlinepenalty \@M
     \normalfont\null\hspace{-70mm}%
     \fontsize{24\p@}{32\p@}\selectfont \bfseries
     \raisebox{25\p@}{\color{@bgcolor!70}\MakeUppercase{\partname}}%
     \hspace{35\p@}%
     \raisebox{-180\p@}{\fontsize{250\p@}{200\p@}\selectfont \bfseries
       \color{@bgcolor}\begin{tikzpicture}%
         \node[opacity=0.25,inner sep=\z@]{\thepart};%
       \end{tikzpicture}}%
     \parbox[t]{0.8\textwidth}{\raggedright
       \color{@bgcolor}#2}\par}\vspace{100\p@}\bgroup
 \large}
\def\@spart#1{%
     \phantomsection
      \addcontentsline{toc}{spart}{#1}%
    \markboth{#1}{#1}%
    {\interlinepenalty \@M
     \normalfont\null\hspace{-70mm}%
     \fontsize{24\p@}{32\p@}\selectfont \bfseries
     \raisebox{25\p@}{\color{@bgcolor!70}\phantom{\MakeUppercase{\partname}}}%
     \hspace{35\p@}%
     \raisebox{-180\p@}{\fontsize{250\p@}{200\p@}\selectfont \bfseries
       \color{@bgcolor!20}\begin{tikzpicture}%
         \node[opacity=0.25,inner sep=\z@]{\phantom{\thepart}};%
       \end{tikzpicture}}%
     \parbox[t]{0.8\textwidth}{\raggedright
       \color{@bgcolor}#1}\par}\vspace{100\p@}\bgroup
 \large}
\def\EndPartIntro{%
  \egroup\twocolumn
  \pagecolor{white}\color{black}%
  \loadgeometry{standard}%
  \pagestyle{standardpagestyle}}
\renewcommand{\chaptermark}[1]{\markright{#1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {\z@ plus 6\p@}%
                                   {\parskip}%
                                   {\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
                                   {\z@ plus 6\p@}%
                                   {\parskip}%
                                   {\normalfont\large\itshape}}
\def\fao@color@string{0,0,0}
\def\setbgcolor#1{\colorlet{@bgcolor@next}[cmyk]{#1}%
  \addtocontents{toc}{\string\colorlet{@bgcolor}[cmyk]{#1}}%
  \gdef\fao@color@string{#1}}
\setbgcolor{red}
\define@key{fao}{bgcolor}{\setbgcolor{#1}}
\define@key{fao}{tableheadcolor}{\colorlet{@tableheadcolor}[cmyk]{#1}}
\def\selectcolor{\colorlet{@bgcolor}{@bgcolor@next}%
  \colorlet{@tableheadcolor}{@bgcolor!30}}
\selectcolor
\define@key{fao}{tablebg}{\colorlet{@tablebg}[cmyk]{#1}}
\newenvironment{indicatorText}{\PackageError{faoyearbook}{%
  Environment `indicatorText' in a wrong place!}{%
This environment must be inside indicator pages.}}{}
\newenvironment{indicatorGraphics}{\PackageError{faoyearbook}{%
  Environment `indicatorGraphics' in a wrong place!}{%
This environment must be inside indicator pages.}}{}
\def\indicatorA{%
  \clearpage\ifodd\c@page\hbox{}\newpage\fi
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \pagestyle{indicatorfirstpagestyle}%
  \bgroup
  \def\ParallelParOnePage{\FAO@ParallelParOnePage}%
  \begin{Parallel}{0.45\textwidth}{0.45\textwidth}%
\def\indicatorText{\ParallelLText\bgroup\columnwidth=\ParallelLWidth
  \strut}%
\def\endindicatorText{\egroup}
\def\indicatorGraphics{\ParallelRText\bgroup\strut
  \columnwidth=\ParallelRWidth}%
\def\endindicatorGraphics{\egroup}}%
\def\endindicatorA{\end{Parallel}\egroup
    \if@tempswa\twocolumn\else\onecolumn\fi
    \clearpage\color{black}%
    \global\let\default@color\current@color\normalcolor
    \loadgeometry{standard}%
    \pagestyle{standardpagestyle}}
\def\FAO@ParallelParOnePage{%
  \ifnum\ParallelBoolVar=\@ne
    \par
    \begingroup
      \leftmargin=\z@
      \rightmargin=\z@
      \vbadness=10000 %
      \vfuzz=3ex %
      \splittopskip=\z@skip
      \@tempdima=\@colroom
      \advance\@tempdima by -\baselineskip
      \loop
        \ifnum\ParallelBoolVar=\@ne
          \noindent
          \hbox to\textwidth{%
            \hskip\ParallelLeftMargin
            \hbox to\ParallelTextWidth{%
              \ifvoid\ParallelLBox
                \hskip\ParallelLWidth
              \else
                \pcp@SetCurrent{Left}%
                \ParallelWhichBox=\z@
                \vtop{%
                  \setbox\ParallelBoxVar
                      =\vsplit\ParallelLBox to\@tempdima
                  \unvbox\ParallelBoxVar
                }%
              \fi
              \ifnum\ParallelBoolMid=\@ne
                \hskip\ParallelMainMidSkip
                \begingroup
                  \pcp@RuleBetweenColor
                  \vrule
                \endgroup
              \else
                \hss
              \fi
              \hss
              \ifvoid\ParallelRBox
                \hskip\ParallelRWidth
              \else
                \pcp@SetCurrent{Right}%
                \ParallelWhichBox=\@ne
                \vtop{%
                  \setbox\ParallelBoxVar
                      =\vsplit\ParallelRBox to\@tempdima
                      \vfill
                  \unvbox\ParallelBoxVar
                }%
              \fi
            }%
          }%
          \ifvoid\ParallelLBox
            \ifvoid\ParallelRBox
              \global\ParallelBoolVar=\z@
            \fi
          \fi%
        \fi%
      \ifnum\ParallelBoolVar=\@ne
        \penalty\interlinepenalty
      \repeat
      \par
    \endgroup
    \pcp@SetCurrent{}%
  \fi}
\def\indicatorB{%
  \clearpage\ifodd\c@page\hbox{}\clearpage\fi
  \if@twocolumn
    \@tempswatrue
  \else
    \twocolumn
    \@tempswafalse
  \fi
  \pagestyle{indicatorpagestyle}%
  \bgroup
  \def\indicatorText{\bgroup\twocolumn
    \clearpage\ifodd\c@page\hbox{}\clearpage\fi
    \thispagestyle{indicatorfirstpagestyle}}%
  \def\endindicatorText{\newpage\egroup}
  \def\indicatorGraphics{\bgroup}%
  \def\endindicatorGraphics{\egroup}}%
\def\endindicatorB{\egroup\color{black}%
  \global\let\default@color\current@color\normalcolor
  \if@tempswa\twocolumn\else\onecolumn\fi
  \clearpage\loadgeometry{standard}%
  \pagestyle{standardpagestyle}}
\def\indicatorC{%
  \clearpage\ifodd\c@page\hbox{}\clearpage\fi
  \if@twocolumn
    \@tempswatrue
  \else
    \twocolumn
    \@tempswafalse
  \fi
  \pagestyle{indicatorpagestyle}%
  \bgroup
  \def\indicatorText{\PackageError{faoyearbook}{%
    Bad place for indicatorText}{%
  On indicatorC pages only graphics is allowed}}%
  \def\endindicatorText{\newpage\egroup}
  \def\indicatorGraphics{\bgroup}%
  \def\endindicatorGraphics{\egroup}}%
\def\endindicatorC{\egroup\color{black}%
  \global\let\default@color\current@color\normalcolor
  \if@tempswa\twocolumn\else\onecolumn\fi
  \clearpage\loadgeometry{standard}%
  \pagestyle{standardpagestyle}}
\def\indicatorD{%
  \clearpage\ifodd\c@page\hbox{}\clearpage\fi
  \if@twocolumn
    \@tempswatrue
    \onecolumn
  \else
    \@tempswafalse
  \fi
  \thispagestyle{indicatorDpagestyle}%
  \pagestyle{indicatorpagestyle}%
  \bgroup
  \def\indicatorText{\begin{minipage}[t][0.5\textheight]{\textwidth}%
      \begin{multicols}{2}}%
  \def\endindicatorText{\end{multicols}\end{minipage}}
  \def\indicatorGraphics{\bgroup}%
  \def\endindicatorGraphics{\egroup}}%
\def\endindicatorD{\egroup\color{black}%
  \global\let\default@color\current@color\normalcolor
  \if@tempswa\twocolumn\else\onecolumn\fi
  \clearpage\loadgeometry{standard}%
  \pagestyle{standardpagestyle}}
\let\indicator\indicatorB
\let\endindicator\endindicatorB
\let\indicatorPage\indicatorB
\let\endindicatorPage\endindicatorB
\let\float@caption\@undefined
\newcommand\listchartname{List of Charts}
\newcommand\listmapname{List of Maps}
\newcommand\chartname{Chart}
\newcommand\minitabname{Mini Table}
\newcommand\mapname{Map}
\newfloat{chart}{H}{loc}
\floatname{chart}{\chartname}
\newfloat{minitab}{H}{loc}
\floatname{minitab}{\minitabname}
\newfloat{map}{H}{lom}
\floatname{map}{\mapname}
\def\listofcharts{\listof{chart}{\protect\hypertarget{list:chart}{\listchartname}}}
\def\listofmaps{\listof{map}{\protect\hypertarget{list:map}{\listmapname}}}
\def\listoftables{\listof{table}{\protect\hypertarget{list:table}{\listtablename}}}
\define@key{fao}{floatwidth}{\def\@floatwidth{#1}}
\faoset{floatwidth=\columnwidth}
\define@key{fao}{floatheight}{\def\@floatheight{#1}}
\faoset{floatheight=0.45\textheight}
\define@boolkey{fao}{fixedfloatheight}{}
\faoset{fixedfloatheight=false}
\def\@beginfloat@hook{}
\def\@endfloat@hook{}
\def\@nonfloat#1{\@beginfloat@hook
  \ifKV@fao@fixedfloatheight
    \begin{minipage}[t][\@floatheight]{\@floatwidth}\begin{list}{}{%
          \topsep=\z@\partopsep=\z@\leftmargin=\z@\rightmargin=\z@}%
        \def\@captype{#1}\item
        \global\let\default@color\current@color\normalcolor
  \else
    \begin{minipage}{\@floatwidth}\begin{list}{}{%
          \topsep=\z@\partopsep=\z@\leftmargin=\z@\rightmargin=\z@}%
        \def\@captype{#1}\item
        \global\let\default@color\current@color\normalcolor
  \fi}
\def\end@nonfloat{\end{list}\end{minipage}%
\ifKV@fao@fixedfloatheight\else\vspace{\belowdisplayskip}\fi
\@endfloat@hook}
\renewenvironment{table}{\begin{@nonfloat}{table}}{\end{@nonfloat}}
\renewenvironment{chart}{\begin{@nonfloat}{chart}}{\end{@nonfloat}}
\renewenvironment{minitab}{\begin{@nonfloat}{minitab}}{\end{@nonfloat}}
\renewenvironment{map}{\begin{@nonfloat}{map}}{\end{@nonfloat}}
\DeclareCaptionLabelFormat{uppercase}{\hyperlink{list:\@captype}{\MakeUppercase{#1}~#2}}
\captionsetup{position=top,labelformat=uppercase,format=plain,
  textfont=bf,justification=centering,
  singlelinecheck=false}
\captionsetup{aboveskip=\z@}
\AtEndCaption{\par}
\define@boolkey{fao}{fixedcaptionheight}{%
  \ifKV@fao@fixedcaptionheight
    \def\caption@parbox{\parbox[t][\@fao@captionheight]}%
  \else
    \def\caption@parbox{\parbox[t]}%
  \fi}
\faoset{fixedfloatheight=false}
\define@key{fao}{captionheight}{\def\@fao@captionheight{#1}}
\faoset{captionheight=2\baselineskip}
\def\footnotebar{\par\vskip\skip\@mpfootins\footnoterule\footnotesize}
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
\def\tablepages{\clearpage\bgroup\normalcolor
  \ifprint
    \if@altMargins
    \newgeometry{layout=a4paper,
      layouthoffset=5mm,layoutvoffset=5mm,
      left=2cm,right=1.5cm,bottom=1.7cm,top=.7cm,twoside}%
    \else\if@altMarginsNarrow
    \newgeometry{layout=a4paper,
      layouthoffset=5mm,layoutvoffset=5mm,
      left=1.5cm,right=1cm,bottom=1.7cm,top=.7cm,twoside}%
    \else
    \newgeometry{layout=a4paper,
      layouthoffset=1cm,layoutvoffset=1cm,
      left=0.2in,right=0.2in,top=0.2in,bottom=0.25in}%
    \fi\fi
  \else
  \newgeometry{layout=a4paper,
    left=0.2in,right=0.2in,top=0.2in,bottom=0.25in}%
  \fi
  \pagestyle{tablepage}\onecolumn}
\def\endtablepages{\egroup\loadgeometry{standard}%
  \pagestyle{standardpagestyle}\clearpage}
\aboverulesep\z@
\belowrulesep\z@
\setlength\minrowclearance{\z@}
\def\arraystretch{1.5}
\setlength{\arrayrulewidth}{0.9pt}
\def\vline{\vrule \@width 7\p@ \relax}
\def\TwoPlusFourPlots{\bgroup
  \faoset{fixedfloatheight=true,floatheight=0.45\textheight}%
  \faoset{fixedcaptionheight=true,captionheight=2\baselineskip}}%
\def\endTwoPlusFourPlots{\pagebreak\egroup}
\newcount\@fao@plotnum
\def\TwoPlusTwoPlots{\bgroup
  \faoset{fixedfloatheight=true,floatheight=0.45\textheight}%
  \faoset{fixedcaptionheight=true,captionheight=2\baselineskip}%
  \global\@fao@plotnum=0\relax
  \def\@beginfloat@hook{\global\advance\@fao@plotnum by 1\relax
    \ifnum\@fao@plotnum=3\relax\onecolumn\fi}}
\def\endTwoPlusTwoPlots{\egroup\twocolumn}
\def\OnePlusTwoPlots{\bgroup
  \faoset{fixedfloatheight=true,floatheight=0.95\textheight}%
  \faoset{fixedcaptionheight=true,captionheight=2\baselineskip}%
  \global\@fao@plotnum=0\relax
  \def\@beginfloat@hook{\global\advance\@fao@plotnum by 1\relax
    \ifnum\@fao@plotnum=2\relax\onecolumn\fi
    \ifnum\@fao@plotnum>1\faoset{floatheight=0.45\textheight}\fi}}
\def\endOnePlusTwoPlots{\egroup\twocolumn}
\define@key{Gin}{rviewport}
           {\let\Gin@viewport@code\Gin@rviewport\Gread@parse@rvp#1 \\}
\def\Gread@parse@rvp#1 #2 #3 #4 #5\\{%
  \def\Gin@vllx{#1}%
  \def\Gin@vlly{#2}%
  \def\Gin@vurx{#3}%
  \def\Gin@vury{#4}%
}%
\def\Gin@rviewport{%
  \let\Gin@ollx\Gin@llx
  \let\Gin@olly\Gin@lly
  \let\Gin@ourx\Gin@urx
  \let\Gin@oury\Gin@ury
  \Gin@nat@width\Gin@urx\p@
  \advance\Gin@nat@width-\Gin@llx\p@
  \Gin@nat@height\Gin@ury\p@
  \advance\Gin@nat@height-\Gin@lly\p@
  \dimen@\Gin@vurx\Gin@nat@width
                      \edef\Gin@vurx{\strip@pt\dimen@}%
  \advance\dimen@\Gin@llx\p@
                      \edef\Gin@urx{\strip@pt\dimen@}%
  \dimen@\Gin@vury\Gin@nat@height
                      \edef\Gin@vury{\strip@pt\dimen@}%
  \advance\dimen@\Gin@lly\p@
                      \edef\Gin@ury{\strip@pt\dimen@}%
  \dimen@\Gin@vllx\Gin@nat@width
                      \edef\Gin@vllx{\strip@pt\dimen@}%
  \advance\dimen@\Gin@llx\p@
                    \edef\Gin@llx{\strip@pt\dimen@}%
  \dimen@\Gin@vlly\Gin@nat@height
                      \edef\Gin@vlly{\strip@pt\dimen@}%
  \advance\dimen@\Gin@lly\p@
                     \edef\Gin@lly{\strip@pt\dimen@}%
}
\setkeys{Gin}{keepaspectratio=true}
\def\Gin@getbase#1{%
  \ifprint\def\filename@add{_print}\else\def\filename@add{_web}\fi
  \edef\Gin@tempa{%
    \def\noexpand\@tempa####1#1\space{%
      \def\noexpand\Gin@base{####1}}}%
  \IfFileExists{\filename@area\filename@base\filename@add#1}%
  {\Gin@tempa
    \expandafter\@tempa\@filef@und
    \edef\Gin@ext{#1}}{%
    \IfFileExists{\filename@area\filename@base#1}%
    {\Gin@tempa
      \expandafter\@tempa\@filef@und
      \edef\Gin@ext{#1}}{}}}%
\long\def\largeGraphicsNotes#1{%
  \long\gdef\@largeGraphicsNotes{#1}}
\largeGraphicsNotes{}
\newinsert\@largegraphics@footnotes
\define@key{Gin}{leftfraction}{\def\Gin@leftfraction{#1}}
\setkeys{Gin}{leftfraction=0.415}
\newdimen\Gin@leftpartoffset
\define@key{Gin}{leftpartoffset}{\Gin@leftpartoffset=#1\relax}
\setkeys{Gin}{leftpartoffset=-87pt}
\newdimen\Gin@rightpartoffset
\define@key{Gin}{rightpartoffset}{\Gin@rightpartoffset=#1\relax}
\setkeys{Gin}{rightpartoffset=0pt}
\newif\if@extra@large@graphics
\@extra@large@graphicsfalse
\def\@includeLargeGraphics{\@ifnextchar[% ] To make Emacs happy
   {\@@includeLargeGraphics}{\@@includeLargeGraphics[]}}
\def\@@includeLargeGraphics[#1]#2{%
  \setkeys{Gin}{#1}%
  \ifx\@captype\@undefined\PackageError{faoyearbook}{%
    Wrong place for \string\includeLargeGraphics{} or
    \string\includeExtraLargeGraphics}{%
    The commands \string\includeLargeGraphics{} and
    \string\includeExtraLargeGraphics{} should be inside
    map or chart environment}\fi
  \if@extra@large@graphics
    \if@twocolumn\PackageError{faoyearbook}{%
    Wrong place for \string\includeExtraLargeGraphics}{%
    The command \string\includeExtraLargeGraphics{} should be inside
    a one column page}\fi
  \else
    \if@twocolumn\else\PackageError{faoyearbook}{%
    Wrong place for \string\includeLargeGraphics}{%
    The command \string\includeLargeGraphics{} should be inside
    a two column page}\fi
  \fi
 \ifvoid\@mpfootins\else
   \global\setbox\@largegraphics@footnotes\vbox{\unvbox\@mpfootins}%
 \fi
  \end{list}\end{minipage}%
  \if@extra@large@graphics
    \def\end@nonfloat{\end{list}\end{minipage}}%
  \else
    \def\end@nonfloat{\end{list}\end{minipage}\afterpage{\twocolumn}}%
  \fi
  \par
  \@tempdima=-\topskip
  \advance\@tempdima\pagetotal
    \ifvoid\@largegraphics@footnotes\else
      \global\setbox\@mpfootins\vbox{%
        \unvbox\@largegraphics@footnotes}%
    \fi
    \begin{minipage}{\@floatwidth}\begin{list}{}{%
          \setkeys{Gin}{#1}%
          \topsep=\z@
          \partopsep=\z@\leftmargin=\z@\rightmargin=\z@}%
          \let\default@color\current@color\normalcolor\item
          \hspace*{\Gin@leftpartoffset}%
          \includegraphics[rviewport=0 0 {\Gin@leftfraction} 1,clip]{#2}\par
          \@largeGraphicsNotes
         \largeGraphicsNotes{}%
   \end{list}\end{minipage}%
    \if@extra@large@graphics\newpage\else\onecolumn\fi
    \vspace*{\@tempdima}%
    \begin{minipage}{\@floatwidth}\begin{list}{}{%
          \setkeys{Gin}{#1}%
          \topsep=\z@
          \partopsep=\z@\leftmargin=\z@\rightmargin=\z@}%
          \let\default@color\current@color\normalcolor\item
          \hspace*{\Gin@rightpartoffset}%
          \includegraphics[rviewport={\Gin@leftfraction} 0 1 1,clip]{#2}}
\def\includeLargeGraphics{%
  \@extra@large@graphicsfalse
  \setkeys{Gin}{leftfraction=0.415, leftpartoffset=-87\p@}%
  \@includeLargeGraphics}
\def\includeExtraLargeGraphics{%
  \@extra@large@graphicstrue
  \setkeys{Gin}{leftfraction=0.5}%
  \@includeLargeGraphics}
\newenvironment{graphicKey}[1][]{\vfill\par\hfill
  \def\@tempa{#1}\ifx\@empty\@tempa\else\begin{minipage}{#1}\fi}{%
    \ifx\@tempa\@empty\else\end{minipage}\fi}
\renewcommand\tableofcontents{\cleardoublepage
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
    \if@altMarginsNarrow\hspace{10mm}\fi
    \color{@bgcolor}\rule{41\p@}{\@fao@tocrule@height}}%
  \par\vspace{-0.5\baselineskip}\egroup}
\def\@draw@tocrule@section{\@fao@tocrule@height=\pagetotal
  \protected@write\@auxout{}{\string\fao@partblobbottom{\fao@currentpartnum}{\the\@fao@tocrule@height}}%
  \advance\@fao@tocrule@height-\@fao@tocrule@start
  \advance\@fao@tocrule@height5\p@
  \bgroup\parskip\z@\small
  \raisebox{\baselineskip}[\z@][\z@]{\parbox[b][\z@]{\z@}{\hspace*{-35\p@}\color{@bgcolor}\rule{2\p@}{\@fao@tocrule@height}}}%
  \raisebox{\baselineskip}[\z@][\z@]{\parbox[b][\z@]{\z@}{\hspace*{310\p@}%
    \if@altMarginsNarrow\hspace{10mm}\fi
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
\def\metadata#1#2{\bgroup
  \def\meta@key{#2}%
    \def\source##1{\par\penalty10000\emph{Source: }##1\par\penalty10000}%
    \def\owner##1{\par\penalty10000\emph{Owner: }##1\par\penalty10000}%
  \begin{list}{}{\topsep4\p@\labelwidth\z@
      \labelsep\z@\itemindent\z@\parsep0.4ex plus 0.5ex minus
      0.2ex\relax\listparindent\z@\leftmargin\z@\rightmargin\z@
    \partopsep\z@}%
  \NR@gettitle{#1}\phantomsection\label{metadata:#2}%
  \item{\bfseries#1\par\penalty10000}}
\def\endmetadata{%
  \expandafter\ifx\csname
     metaback@\meta@key\endcsname\relax
  \else
    \par\penalty10000\emph{Referenced in: }
    \csname metaback@\meta@key\endcsname
     \par\penalty10000
  \fi
  \end{list}\egroup}
\def\refMetadataname{Metadata:}
\def\refMetadata#1{%
  \ifx\@captype\@undefined\def\@captype{table}\fi
    \if@filesw
      \immediate\write\@mainaux{%
        \string\fao@metaback{#1}{\@captype}{\csname the\@captype\endcsname}{\thepage}{\@currentHref}}%
    \addtocontents{\csname ext@\@captype\endcsname}{\string\listmetadata{#1}}%
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
\define@boolkey{fao}{metadataInLists}{}
\faoset{metadataInLists=false}
\def\listmetadata#1{\ifKV@fao@metadataInLists
  \bgroup\small
  \ifvmode\relax
    \leavevmode
    \textit{\refMetadataname}~%
   \else
     \unskip;~%
  \fi
  \nameref{metadata:#1}, page~\pageref{metadata:#1}%
  \egroup\hangafter=0\hangindent=3.8em\rightskip=3.8em\relax
  \fi}
\newenvironment{MetadataCollection}{\clearpage\twocolumn\small
  \loadgeometry{standard}%
  \pagestyle{conceptpagestyle}}{\clearpage\pagestyle{standardpagestyle}\normalsize}
\def\conceptsname{Concepts and Methods}
\newenvironment{ConceptsAndMethods}{\clearpage\twocolumn\small
  \loadgeometry{standard}%
  \pagestyle{conceptpagestyle}%
  \section{\conceptsname}}{\clearpage\pagestyle{standardpagestyle}\normalsize}
\newenvironment{concept}[1]{\begin{description}\item[#1:]}{\end{description}}
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
\twocolumn
\endinput
%%
%% End of file `faoyearbook.cls'.
