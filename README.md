# Homework template

This is a LaTeX template to format papers and other homework assignments so I can write them in org-mode and export to PDF.

On my Mac I have made the `hw` class available globally by linking `hw.cls` into the `~/texmf/tex/latex/` directory:

```bash
ln -s ~/projects/hw-template/hw.cls ~/Library/texmf/tex/latex/hw.cls
```

To get org-mode to recognize the `hw` class I added the following to my Emacs init file:


```elisp
(add-to-list 'org-latex-classes
             '("hw"
               "\\documentclass{hw}
               [NO-DEFAULT-PACKAGES]
               [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
```

## Usage

The start of the org-mode file should look something like the following:

```org
#+OPTIONS: toc:nil
#+LaTeX_CLASS: hw
#+TITLE: Title of Document
#+AUTHOR: Author Name
#+DATE: November 27, 2015
#+LATEX_HEADER: \course{Course name}
```

If the document should be double spaced, then add another line: `#+LATEX_HEADER: \linespread{2}`.

Headings and subheadings are designated like so:

```
* Heading

Some text blah blah blah

* Another heading

Blah blah blah

** Subheading

   More text here
```


To export the document to PDF, use `M-x org-latex-export-to-pdf`.

## TODO:

A lot of stuff. Like almost everything.

+ Add example documents to repo
+ Make the layout look nicedr
+ Something something bibtex something something
