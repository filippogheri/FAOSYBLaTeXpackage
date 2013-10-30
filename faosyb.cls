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
\def\newnon@float#1#2#3#4{%
  \expandafter\ifx\csname ftype@#1\endcsname\relax
    \expandafter\edef\csname ftype@#1\endcsname{\the\nonfloat@type}%
    \multiply\nonfloat@type by 2\relax
  \fi
  \expandafter\def\csname ext@#1\endcsname{#2}%
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
    \nf@topskip=\nf@vert@sep
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
    \nf@caption\vfill
    \egroup\par\nointerlineskip\vskip\nf@trianglebase
    \vskip\nf@margin
    \noindent\hskip\dimexpr(\nf@margin+0.5\nf@trianglebase)%
    \box\nf@contentsbox\par\nointerlineskip
    \vskip\nf@margin
    \hskip\dimexpr(\nf@margin+0.5\nf@trianglebase)%
    \vbox to \nf@sourceheight\bgroup
    \ifx\nf@source\@empty\else
    \noindent{\color{@bgcolor}%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}~\rule{.2em}{.2em}~%
      \rule{.2em}{.2em}\par}
    \noindent Source: \nf@source\par\vfill\fi\egroup
    \vfill\egroup
    \edef\nf@currbox{\expandafter\csname nfbox@\nf@size
      @\nf@placement\endcsname}%
    \global\setbox\nf@currbox=
    \vbox{\unvbox\nf@currbox\nointerlineskip\box\nf@mainbox}}
\newnon@float{map}{lom}{Map}{List of Maps}
\newnon@float{table}{lot}{Table}{List of Tables}
\newnon@float{chart}{loc}{Chart}{List of Charts}
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
  \if@firstcolumn\else
  \ClassError{faosyb}{Wide or big nonfloats defined too late.  Move
    them up}{I encountered Big or Wide floats when I already made the
    first column.  Please move them up}
  \fi
  \ifdim\ht\curr@nfbox@B@ul>0.5\baselineskip
     \global\setbox\@outputbox\vsplit\curr@nfbox@B@ul to \textheight
  \else
     \setbox\@tempboxa\vsplit\curr@nfbox@W@ul to \textheight
     \setbox\@tempboxb\vsplit\curr@nfbox@W@ll to \textheight
     \setbox\@outputbox\vbox\bgroup
        \box\@tempboxa
        \nointerlineskip
        \box\@tempboxb
     \egroup
  \fi
  \global\vsize\textheight
  \global\@colht\textheight
  \@outputpage
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
\def\nf@makefncol{%
  \ifdim\@colht>0.9\textheight  % one tall or two squares
    \ifdim\ht\curr@nfbox@T@uc>0.5\baselineskip
      \setbox\@outputbox
      \vsplit \@curr@nfbox@T@uc to \textheight
    \else
     \setbox\@tempboxa\vsplit\curr@nfbox@S@uc to 0.5\textheight
     \setbox\@tempboxb\vsplit\curr@nfbox@S@lc to 0.5\textheight
     \setbox\@outputbox\vbox\bgroup
        \box\@tempboxa
        \nointerlineskip
        \box\@tempboxb
     \egroup
    \fi
  \else  % one square
    \ifdim\ht\curr@nfbox@S@uc>0.49\textheight
      \setbox\@outputbox\vsplit \curr@nfbox@S@uc to 0.5\textheight
    \else
      \setbox\@outputbox\vsplit \curr@nfbox@S@lc to 0.5\textheight
    \fi
  \fi
  \nf@opcol}
\def\nf@makemixedcol{%
  \ifdim\@colroom=\vsize
    \nf@makemixedcol@
  \else
    \global\vsize=\@colroom
    \unvbox\@cclv
  \fi}
\def\nf@makemixedcol@{%
   \ifvoid\footins
     \setbox\@outputbox \box\@cclv
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
     \setbox\@tempboxa\vsplit to 0.5\textheight\curr@nfbox@uc
     \setbox\@outputbox \vbox
       \bgroup
         \box\@tempboxa
         \nointerlineskip
         \box\@outputbox
       \egroup
   \fi
   \ifdim\ht\curr@nfbox@S@lc>0.49\textheight
     \setbox\@tempboxa\vsplit to 0.5\textheight\curr@nfbox@lc
     \setbox\@outputbox \vbox
       \bgroup
         \box\@outputbox
         \nointerlineskip
         \box\@tempboxa
       \egroup
   \fi
   \nf@opcol}
\def\nf@opcol{%
  \message{Starting nf@opcol}%
  \if@firstcolumn
    \global\@firstcolumnfalse
    \global\setbox\@leftcolumn\box\@outputbox
  \else
    \global\@firstcolumntrue
    \ifdim\ht\curr@nfbox@W@ul>0.5\baselineskip
      \setbox\@outputbox\vsplit \curr@nfbox@W@ul to 0.5\textheight
    \else
      \setbox\@tempboxa\box\@outputbox
    \fi
    \setbox\@outputbox \vbox\bgroup
      \box\@outputbox
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
        \box\@outputpage
        \nointerlineskip
        \box\@tempboxa
      \egroup
    \fi
    \global\vsize\textheight
    \global\@colht\textheight
    \@outputpage
   \fi}
\endinput
%%
%% End of file `faosyb.cls'.
