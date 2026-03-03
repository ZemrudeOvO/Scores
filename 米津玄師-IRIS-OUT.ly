\version "2.24.4"

\header {
  title = "IRIS OUT"
  instrument = "上低音号"
  composer = "米津玄師"
  arranger = "米津玄師"
}

\paper {
  % Add space for instrument names
  indent = 16\mm
}

global = {
  \key b \major
  \time 4/4
}

euphonium = \relative c {
  \global
  \tempo 4 = 135
  \compressEmptyMeasures {R1 R1}
  cis8 gis' cis16 cis,8 e16~ e gis g gis e8 cis
  gis' dis' gis16 gis,8 gis16~ gis dis' d dis b8 gis
  \break
  
  e dis' gis16 dis8 e16~ e dis cis b ais gis g8
  gis dis' gis16 dis8 gis,16~ gis gis ais c r4
  \break
  
  cis,8 gis' cis16 cis,8 e16~ e gis g gis e8 cis
  gis' dis' gis16 gis,8 gis16~ gis dis' d dis b8 gis
  \break
  
  e dis' gis16 dis8 e16~ e dis cis b ais gis g8
  gis dis' gis16 dis8 gis,16 r2
  \break
  
  cis8 dis cis b gis b r cis~
  cis dis cis dis fis dis cis b
  \break
  
  ais b ais fis dis ais' ais b
  ais gis gis gis gis4 r
  cis8 dis cis b gis b r cis~
  cis dis d dis fis dis cis b
  \break
  
  ais b ais fis dis ais'4 b8
  ais gis gis gis gis4 gis16 gis gis gis
  gis8 gis' gis,16 gis gis8 cis4 gis16 gis gis gis
  gis8 gis'8 gis,16 gis gis8 cis,4 gis'16 gis gis gis
  \break
}

\score {
  \new Staff \with {
    instrumentName = "上低音号"
    midiInstrument = "trombone"
  } { \clef bass \euphonium }
  \layout { }
  \midi {
    \tempo 4=135
  }
}
