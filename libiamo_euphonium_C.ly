%% Libiamo ne' lieti calici (饮酒歌) — melody for Euphonium
%% Bass clef, concert pitch, C major. Range: G2–A3.
%% Solo edition: one repeated verse omitted; sections A–B–C–D.
%% Compile: lilypond libiamo_euphonium_C.ly

\version "2.26.0"
#(set-global-staff-size 24)
\language "english"

\header {
  title = "Libiamo ne' lieti calici"
  subtitle = "饮酒歌"
  subsubtitle = "Brindisi from La traviata · for Euphonium (bass clef, concert pitch)"
  composer = "Giuseppe Verdi (1813–1901)"
  arranger = "Solo melody edition in C major"
  tagline = \markup \small \italic "Solo edition — one repeated verse is omitted; sections A–B–C–D."
}

\paper {
  #(set-paper-size "a4")
  top-margin = 16\mm
  bottom-margin = 16\mm
  left-margin = 20\mm
  right-margin = 20\mm
  ragged-last-bottom = ##f
  system-system-spacing.padding = #3
  markup-system-spacing.padding = #3
}

global = {
  \key c \major
  \time 3/8
  \tempo "Allegretto" 4. = 69
  \set Score.tempoHideNote = ##f
}

melody = {
  \clef bass
  \numericTimeSignature
  \set Staff.midiInstrument = "trombone"
  \override TextScript.padding = #2.5

  \partial 8 g,8_\p^\markup \italic "con grazia" |
    \mark \markup \box "A" e4.(~ | % bar 1
  e8 g,8 e8) | % bar 2
  e8( g,8 e8 | % bar 3
  e8 ds8 e8) | % bar 4
  g4.(~ | % bar 5
  g8 f8 e8) | \break % bar 6
  d8( d16 cs16 d16 e16 | % bar 7
  d8 d16 cs16 d16 e16 | % bar 8
  d4 c8) | % bar 9
  g,8 r8 g,8( | % bar 10
  e4.)\breathe | \break % bar 11
    \mark \markup \box "B" e4_\mf^\markup \italic "leggerissimo"( g,8 | % bar 12
  d4 d8) | % bar 13
  r8 d16( cs16 d16 e16 | % bar 14
  d4.) | % bar 15
  c8 r8 c8( | % bar 16
  f4 f8) | \break % bar 17
  f8( f16 e16 f16 g16 | % bar 18
  f4.) | % bar 19
  e4( g8 | % bar 20
  b,4 b,8) | % bar 21
  b,8( b,16 as,16 b,16 c16 | % bar 22
  b,4.)\breathe | \break % bar 23
    \mark \markup \box "C" b,8_\f^\markup \italic "con brio"( d8 g,8 | % bar 24
  e4.~ | % bar 25
  e8 g,8 e8) | % bar 26
  e8( g,8 e8 | % bar 27
  e8 ds8 e8) | % bar 28
  a4.(~ | \break % bar 29
  a8 g8 f8) | % bar 30
  e8( e16 ds16 e16 f16 | % bar 31
  d8 d16 cs16 d16 e16) | % bar 32
  c8( e4~ | % bar 33
  e8 g8 f8 | % bar 34
  e8 e16 ds16 e16 f16) | \break % bar 35
    \mark \markup \box "D" d8_\p^\markup \italic "dolce"( d16 cs16 d16 e16 | % bar 36
  c8 e4~ | % bar 37
  e8 g8 f8) | % bar 38
  r8 e16\<( ds16 e16 f16~ | % bar 39
  f16 r16 d16 cs16 d16 e16 | % bar 40
  c4\f\fermata) r8 | % bar 41
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
      \override RehearsalMark.padding = #2
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