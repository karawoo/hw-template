% Homework style
% 
% Copyright (c) 2016 by Kara Woo

% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:

% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hw}[2015/11/12 v0.0 Homework class]
\LoadClass[12pt]{article}

% Margins
\usepackage[margin=1.0in]{geometry} 

% Indentation
\setlength\parindent{1cm}

% Load setspace package
\usepackage{setspace}
%\linespread{2}                  % uncomment this line if you want double spaced

% Define course field for use on first page
\def\@course{}
\newcommand{\course}[1]{
  \def\@course{#1}
}

% Format bginning of document with name, date, course at top, right-aligned,
% then title in center
\makeatletter \renewcommand{\maketitle}{
  % Even if text is double spaced, name/date/etc. shouldn't be
  \begin{singlespace} 
    % Put name, date, course in top right
    \begin{flushright}
      \@author\\
      \@date\\
      % Course is in a parbox to force the line to wrap if the course name is too long
      \parbox{0.4\textwidth}{\strut \raggedleft\@course}
    \end{flushright}
    % Title should be centered
    \begin{center}
      \LARGE\@title
    \end{center}
  \end{singlespace}
} \makeatother

% Format of section and subsection headers
\usepackage{titlesec}

\titleformat{\section}         
{\Large\center}
{}{0em}                      
{}

\titleformat{\subsection}
{\Large\raggedright}
{}{0em}
{}

\titleformat{\subsubsection}
{\large\raggedright\itshape}
{}{0em}
{}

% Indent first paragraph after a section heading
\usepackage{indentfirst}

% This is here to stop emacs from putting a bunch of empty metadata in the top
% of my PDF
\usepackage{hyperref}
