\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ltgposter12}[2012/11/19 LTG poster class]

\def\@ltgposter@align{t}

% TODO: Better option handling?
\DeclareOption{grid}{\PassOptionsToPackage{\CurrentOption}{beamerthemeltg}}
\DeclareOption{t}{\gdef\@ltgposter@align{t}}
\DeclareOption{c}{\gdef\@ltgposter@align{c}}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{beamerposter}}
\ProcessOptions\relax

\LoadClass{beamer}
\RequirePackage{beamerposter}
\RequirePackage{etoolbox}

\AfterEndPreamble{\begin{frame}[t]\relax}
\let\@ltgposter@oldenddoc=\enddocument
\def\enddocument{\end{frame}\@ltgposter@oldenddoc}

\usetheme{ltg12}
