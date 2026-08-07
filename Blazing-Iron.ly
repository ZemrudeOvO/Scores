\version "2.26.0"

\header {
    title = "Blazing Iron"
    instrument = "上低音号"
    composer = "泓"
}

\paper {
    % Add space for instrument names
    indent = 16\mm
    ragged-last = ##t
}

global = {
    \key a \major
    \numericTimeSignature
    \time 4/4
    \tempo 4=120
    \mark "maestosa"
}

euphonium = \relative c' {
    \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
    \global
    r2 r8 r8 \mark \default r4 |
    r8  cis16 -\p  cis16  bis8 -.  cis8 -.  a'2 |
    r4 b4 (  gis2 ) |
    r4  cis,4 (  gis'2 ) |
    r4 cis8. -. b16 ( cis2 ) |
    \break

    fis,4 r8  fis16  gis16  ais4 cis4 |
    b2  a4.  gis8 |
    fis4 -.  fis4  d4 -.  d8.  b16 |
    cis1 -\mf |
    r2 r4  cis4 -\mf \bar "||"
    \break

    \mark \default
    fis4 -. fis4 -.  fis4 -.  fis4 -. |
    cis4 -.  cis4 -.  cis4 -.  cis4 -. |
    d4 -.  d4 -.  d4 -.  d4 -. |
    cis4 -.  cis4 -.  cis4 -.  c4 |
    b4 -.  b4 -.  b4 -.  b4 -. |
    \break

    a4 -.  a4 -.  a4 -.  a4 -. |
    gis'4 -.  gis4 -.  gis4 -.  gis8  gis8 |
    cis,4 -.  cis4 -.  dis4 -.  eis4 -. \bar "||"
    \mark \default
    d4 -. -\f  a'4 -.  d,4 -.  a'8  d,8 |
    cis4 -.  gis'4 -.  cis,4 -.  gis'8  cis,8 |
    \break

    b4 -.  fis'4 -.  b,4 -.  fis'8  b8 |
    a4 -.  e4 -.  ais4 -.  fis4 -. |
    b,4 -.  b4 -.  cis8  cis8  dis8  eis8 |
    fis4 -.  fis4 -.  b,4 -.  b8  fis8 |
    b4 -.  b4 -.  cis4 -.  cis8  gis'8 |
    \break

    fis4 -.  fis4 -.  fis4 -.  fis4 -. \bar "||"
    \mark \default
    b,4 -\ff  fis'4 -.  b,4 -.  fis'4 -. |
    e4 -.  b4 -.  e4 -.  b8  e8 |
    a,4 -.  e'4 -.  a,4 -.  e'4 -. |
    d4 -.  a4 -.  d8  cis8  b8  a8 |
    \break

    gis'4 -.  d4 -.  gis4 -.  d4 -. |
    cis4 -.  gis'4 -.  cis8  b8  a8  gis8 |
    e4 -. b'4 -.  e,8  e8  fis8  g8 |
    fis4 -.  fis4 -.  fis4 -.  fis4 -. \bar "||"
    \mark \default
    b,4 -.  fis'4 -.  b,4 -.  fis'4 -. |
    \break

    e4 -.  b4 -.  e4 -.  b8  e8 |
    a,4 -.  e'4 -.  a,4 -.  e'4 -. |
    fis4 -.  fis4 -.  fis8  fis8  gis8  ais8 |
    b,4 -.  fis'4 -.  b,4 -.  fis'4 -. |
    cis4 -.  gis4 -.  cis'8  b8  a8  gis8 |
    \break

    fis4 ->  fis4 ->  fis4 ->  fis4 -> |
    fis4 -.  fis4 -^  fis4 -^ r4 \bar "|."
}

\score {
    \new Staff \with {
        instrumentName = "上低音号"
        midiInstrument = "trombone"
    } { \clef bass \transpose c bes,, \euphonium }
    \layout { }
    \midi {
        \tempo 4=120
    }
}
