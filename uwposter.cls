%% uwposter.cls Implemented by Andrew Hoffman (hoffmaao@uw.edu)


\NeedsTeXFormat{LaTeX2e}


\ProvidesClass{uwposter}


\DeclareOption{english}{\def\uwposter@lang{english}}

\DeclareOption{portrait}
{
    \PassOptionsToPackage{orientation = portrait}{beamerposter}
    \def\uwposter@orientation{}
}
\DeclareOption{landscape}
{
    \PassOptionsToPackage{orientation = landscape}{beamerposter}
    \def\uwposter@orientation{landscape}
}


\DeclareOption{a0paper}{\def\uwposter@size{a0paper}}
\DeclareOption{a1paper}{\def\uwposter@size{a1paper}}
\DeclareOption{a2paper}{\def\uwposter@size{a2paper}}
\DeclareOption{a3paper}{\def\uwposter@size{a3paper}}
\DeclareOption{a4paper}{\def\uwposter@size{a4paper}}
\DeclareOption{a5paper}{\def\uwposter@size{a5paper}}
\DeclareOption{a6paper}{\def\uwposter@size{a6paper}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}


\ExecuteOptions{a0paper}
\ExecuteOptions{english}
\ExecuteOptions{portrait}
\ProcessOptions
\relax


\LoadClass[t]{beamer}


\RequirePackage[size = a0, scale = 1.5]{beamerposter}
\RequirePackage{etoolbox}
\RequirePackage{pgfpages}
\RequirePackage[utf8]{inputenx}
\RequirePackage[T1]{fontenc}
\RequirePackage{calc}
\RequirePackage[final]{microtype}
\RequirePackage{lmodern}
\RequirePackage[scaled]{beramono}


\hypersetup{colorlinks,
            urlcolor  = uwlink,
            linkcolor =,
            citecolor =,
            filecolor =}
\renewcommand{\sfdefault}{phv}
\DeclareFontShape{OMX}{cmex}{m}{n}
{
    <-7.5>    cmex7
    <7.5-8.5> cmex8
    <8.5-9.5> cmex9
    <9.5->    cmex10
}{}
\SetSymbolFont{largesymbols}{normal}{OMX}{cmex}{m}{n}
\SetSymbolFont{largesymbols}{bold}  {OMX}{cmex}{m}{n}
\setlength{\marginparwidth}{2cm}
\setlength{\emergencystretch}{1em}
\frenchspacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usefonttheme{serif}
\useinnertheme{rectangles}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{caption label separator}{: }
\setbeamertemplate{qed symbol}{\(\blacksquare\)}
\setbeamertemplate{itemize items}{\color{itemize item.fg}\(\blacksquare\)}


\setlength{\labelsep}{3ex}
\setlength{\leftmargini}{18ex}
\setbeamersize{text margin left = 3cm, text margin right = 3cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{uwpurple}{HTML}{4b2e83}
\definecolor{uwgold}{HTML}{b7a57a}
\definecolor{uwmetallicgold}{HTML}{85754d}
\definecolor{uwwhite}{cmyk}{0, 0, 0, 0}
\definecolor{uwblack}{cmyk}{0, 0, 0, 1}
\definecolor{uwheader}{HTML}{b7a57a}
\definecolor{uwbackground}{cmyk}{0, 0, 0, 0.2}
\definecolor{uwlink}{HTML}{b7a57a}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamercolor{structure}{fg = uwheader}
\setbeamercolor{alerted text}{fg = uwpurple}
\setbeamercolor{background canvas}{fg = uwblack, bg = uwwhite}
\setbeamercolor{headline}{fg = uwwhite, bg = uwpurple}
\setbeamercolor{title in headline}{fg = uwwhite}
\setbeamercolor{author in headline}{fg = uwwhite}
\setbeamercolor{footline}{fg = uwwhite, bg = uwgold}


\setbeamercolor{block title}{fg = uwwhite, bg = structure}
\setbeamercolor{block title example}{fg = uwwhite, bg = uwblack}
\setbeamercolor{block title alerted}{fg = uwwhite, bg = uwpurple}


\setbeamercolor{block body} {fg = uwblack, bg = white}
\setbeamercolor{block body example} {fg = uwblack, bg = uwwhite}
\setbeamercolor{block body alerted} {fg = uwblack, bg = uwwhite}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamerfont{title in headline}{family = \sffamily,
                                  series = \bfseries,
                                  size   = \VeryHuge}
\setbeamerfont{author in headline}{family = \sffamily,
                                   series = \bfseries,
                                   size   = \Large}
\setbeamerfont{institute}{family = \sffamily,
                          series = \mdseries,
                          size   = \normalsize}


\setbeamerfont{block title}{family = \sffamily,
                            series = \bfseries,
                            size   = \large}
\setbeamerfont{block title alerted}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}
\setbeamerfont{block title example}{family = \sffamily,
                                    series = \bfseries,
                                    size   = \large}


\setbeamerfont{block body}{family = \rmfamily,
                           series = \normalfont,
                           size   = \normalsize}
\setbeamerfont{block body example}{family = \rmfamily,
                                   series = \normalfont,
                                   size   = \normalsize}
\setbeamerfont{block body alerted}{family = \rmfamily,
                                   series = \normalfont,
                                   size   = \normalsize}


\setbeamerfont{item projected}{family = \sffamily,
                               series = \bfseries,
                               size   = \small}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{headline}
{
    \begin{beamercolorbox}[wd = \paperwidth,
                           leftskip  = 3cm,
                           rightskip = 3cm plus 20cm]{headline}
        \vskip2.0cm
        \includegraphics[scale = 1.5]
        {uwposter-images/Signature_Stacked_White}
        \usebeamerfont{title in headline}
        \usebeamercolor{title in headline}
        \color{fg}
        \hskip-0.05ex
        \inserttitle
        \usebeamerfont{author in headline}
        \usebeamercolor{author in headline}
        \color{fg}
        \insertauthor
        \ifdefempty{\insertinstitute}{}
        {
            \usebeamerfont{institute}
            \def\beamer@andinst{\quad}
            \insertinstitute
        }
        \vskip2cm
    \end{beamercolorbox}
    \vskip1cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{footline}
{
    \leavevmode
    \begin{beamercolorbox}[wd = \paperwidth]{footline}
        \vskip3cm
        \hskip4.1cm
        \includegraphics[scale = 1.5]{uwposter-images/W-Logo_Purple1}
        \vskip3cm
    \end{beamercolorbox}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block begin}
{
    \setbeamercolor{itemize item}  {fg = block title.bg}
    \setbeamercolor{item projected}{fg = block title.fg,
                                    bg = block title.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title}

        \usebeamerfont*{block title}
        \insertblocktitle
        
    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body}

        \usebeamerfont{block body}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block example begin}
{
    \setbeamercolor{itemize item}  {fg = block title example.bg}
    \setbeamercolor{item projected}{fg = block title example.fg,
                                    bg = block title example.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title example}

        \usebeamerfont*{block title example}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body example}

        \usebeamerfont{block example body}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block example end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{block alerted begin}
{
    \setbeamercolor{itemize item}  {fg = block title alerted.bg}
    \setbeamercolor{item projected}{fg = block title alerted.fg,
                                    bg = block title alerted.bg}
    \setbeamercolor{description item}{fg = structure}

    \begin{beamercolorbox}[ht        = 3.2 ex,
                           dp        = 1.3 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex]
                          {block title alerted}

        \usebeamerfont*{block title alerted}
        \insertblocktitle

    \end{beamercolorbox}

    \nointerlineskip

    \begin{beamercolorbox}[dp        = 2 ex,
                           leftskip  = 2 ex,
                           rightskip = 2 ex,
                           vmode]
                          {block body alerted}

        \usebeamerfont{block body alerted}
        \vskip2ex
        \begin{minipage}{\textwidth-4ex}
             \setlength{\parskip}{1.5ex}
             \setlength{\abovecaptionskip}{1ex}
}


\setbeamertemplate{block alerted end}
{
        \end{minipage}
    \vskip0.2ex
    \end{beamercolorbox}
    \vskip3cm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\enumitem}[1]
{{%
    \leavevmode\unskip
    \def\insertenumlabel{#1}
    \usebeamertemplate*{enumerate item}%
}}


\newcommand{\enumref}[1]{\enumitem{\ref{#1}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pgfpagesdeclarelayout{resize and center}
{
    \def\pgfpageoptionborder{0pt}
}
{
    \pgfpagesphysicalpageoptions
    {
        logical pages   = 1,
        physical height = \pgfpageoptionheight,
        physical width  = \pgfpageoptionwidth
    }
    \pgfpageslogicalpageoptions{1}
    {
        resized width  = \pgfphysicalwidth,
        resized height = \pgfphysicalheight,
        border shrink  = \pgfpageoptionborder,
        center         = \pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}
    }
}


\ifdefstring{\uwposter@size}{a0paper}{}
{
    \pgfpagesuselayout{resize and center}[\uwposter@size,
                                          \uwposter@orientation]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput