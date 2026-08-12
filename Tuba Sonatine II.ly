\version "2.26.0"

\header {
    title = "Tuba Sonatine II Serenade"
    instrument = "上低音号"
}

\paper {
    % Add space for instrument names
    indent = 16\mm
}

global = {
    \key c \major
    \time 6/8
    \tempo "Andantino"
}

euphonium = \relative c {
    \global
    r4 r8 r4 b8\p (
    e4 fis8 g4 a8
    b4.) ~ b8 c16 ( b a g
    a4.~ ) a8 b16 ( a g fis
    g8. fis16 e8~ ) e8 r8 b8 (
    \break

    e4 fis8 g4 a8
    b4.) ~ b8 c16 ( b a g
    a8 d fis, e4 d8
    e4.~ ) e8 r8 \mark \markup{\bold \italic "meno"} b'\p (
    c4 b8 c4 b8 c4.~ ) \< c4 b8 (
    \break

    c4 b8 c4 d8 \!
    b4.~ ) \mf b4 g8 ( \(
    a4 g8 a4 g8
    a4.~ ) \> a4 b8 (
    g4 e8 g4 a8
    fis4.~ \) ) \! \mark\markup{\bold "un poco rit."} fis8 r8 b,8\p (
    \break

    \tempo "a tempo"
    e4 fis8 g a c
    b4.~ ) \mf b8 c16 ( b a g
    a8. e16 fis8~ ) fis16 c' ( b a g fis
    g fis e4~ ) e8 r b8 (
    e4 fis8 g a dis
    \break

    b4.~ ) b16 ( d c b a g
    a8 d fis, e4 d8
    e4.~ ) e8 r

}

\score {
    \new Staff \with {
        instrumentName = "上低音号"
        midiInstrument = "trombone"
    } { \clef bass \euphonium }
    \layout {
        ragged-last = ##t
    }
    \midi {
        \tempo 4.=50
    }
}
