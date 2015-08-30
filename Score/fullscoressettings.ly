\version "2.18.2"
\language "english"

#(set! paper-alist (cons '("my size" . (cons (* 10 in) (* 13 in))) paper-alist))

\paper {
  #(set-paper-size "my size")
  size = 1\in
  left-margin  = \size
  right-margin = \size
  top-margin   = \size
  bottom-margin = \size
  %system-system-space.padding = #100
  %max-systems-per-page = #5
}