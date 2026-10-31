%% Nessun dorma (今夜无人入睡) — melody for Euphonium
%% Bass clef, concert pitch, C major. Range: G2–E4.
%% Solo edition: the orchestral interlude is shortened to a pause.
%% Compile: lilypond nessun_dorma_euphonium_C.ly

\version "2.26.0"
#(set-global-staff-size 21)
\language "english"

\header {
  title = "Nessun dorma"
  subtitle = "今夜无人入睡"
  subsubtitle = "from Turandot · for Euphonium (bass clef, concert pitch)"
  composer = "Giacomo Puccini (1858–1924)"
  arranger = "Solo melody edition in C major"
  tagline = \markup \small \italic "Solo edition — the orchestral interlude is shortened to a pause."
}

\paper {
  #(set-paper-size "a4")
  top-margin = 17\mm
  bottom-margin = 17\mm
  left-margin = 20\mm
  right-margin = 20\mm
  ragged-last-bottom = ##f
  system-system-spacing.padding = #5
  markup-system-spacing.padding = #4
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante sostenuto" 4 = 56
  \set Score.tempoHideNote = ##f
}

melody = {
  \clef bass
  \numericTimeSignature
  \set Staff.midiInstrument = "trombone"
  \override TextScript.padding = #2.5

  % A — opening
  \mark \markup \box "A"
  r2. g8.(^\p^\markup \italic "dolce" g16 |
  g4 g4) r4 g,8.( g,16 |
  g,4 g,4) r2\breathe |
  \break

  % B
  \mark \markup \box "B"
  r4. g8(^\mp g g g8. f16) |
  e4( e4 \tuplet 3/2 { e8 e e } ds8. b,16) |
  c4( c4 b4 b8. a16) |
  g4(^\mf g8 g g g g8. f16) |
  \break

  e4( e4. e8 ds8. b,16) |
  \tempo "rit." 4 = 48
  c4( c4.)\fermata r4.\breathe |
  \tempo "a tempo" 4 = 56
  r8 g8(^\p a b a g a8. fs16) |
  \time 2/4
  e2 |
  \time 4/4
  \break

  % C
  \mark \markup \box "C"
  r8 a8(^\p b c' b a b8. g16) |
  fs4( g4 a8 a b c') |
  d'2(^\mf d'4 d'8. b16) |
  b2~ b8 b8( b8. g16) |
  \break

  d2(^"espress." d4 a8. fs16) |
  g4.^\f\fermata r2 r8 |
  r2 r8 g8(^\p g8. f16) |
  e8-. e-. e-. g-. b4.( a8) |
  g4(^\< g4. e8 ds8. b,16) |
  c4( c4) r2\!\breathe |
  \bar "||"
  \break

  % D — return after the orchestral interlude
  \mark \markup \box "D"
  \tempo "Con anima" 4 = 60
  r2 r8 a8(^\mf b c') |
  d'4( d'4 d'8 d' d'8. b16) |
  b4( b4 b8 b b8. g16) |
  d4( d8 d d d a8. fs16) |
  \break

  g2.(^\markup \italic "cresc. molto" e8. g16) |
  \tempo "poco allarg." 4 = 52
  c'2.( g8. e'16->) |
  d'1\fermata_\ff
  \bar "|."
}

\score {
  \new Staff = "euphonium" \with {
    instrumentName = "Euphonium"
    shortInstrumentName = "Euph."
  } {
    \global
    \melody
  }
  \layout {
    \context {
      \Score
      \override RehearsalMark.self-alignment-X = #LEFT
      \override RehearsalMark.padding = #3
    }
    \context {
      \Staff
      \override TimeSignature.break-align-symbol = #'key-signature
    }
  }
}

\score {
  \new Staff = "euphonium" {
    \global
    \melody
  }
  \midi { }
}
