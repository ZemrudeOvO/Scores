\version "2.24.4"

\header {
    title = "西班牙女郎"
    instrument = "上低音号"
}

\paper {
    % Add space for instrument names
    indent = 16\mm
}

global = {
    \key as \major
    \time 3/4
}

euphonium = \relative c' {
    \global
    \compressEmptyMeasures {
        R2.*20
    }
    c4 c c
    c des ees
    \tuplet 3/2 {des8( ees des)} c2~
    c2.
    bes4 bes bes
    \break

    \tuplet 3/2 {bes8( c bes)} aes4 g
    f2.~
    f
    c'4 c c
    c des ees
    \break

    \tuplet 3/2 {des8( ees des)} c2~
    c2.
    bes4 bes bes
    \tuplet 3/2 {bes8( c bes)} aes4 g
    f2.~
    \break

    f
    g4 g g
    g aes bes
    c2( aes4)
    c2.
    \break

    g4 g g
    g aes bes
    c2.~
    c
    f4 f f
    \break

    \tuplet 3/2 {f8( g f8)} ees4 des
    c( aes bes)
    c2.
    b4 b b
    \tuplet 3/2 {b8( c b)} a4 g
    \break

    c r r
    R2.
    R2.
    R2.
    R2.
    c2.\fermata
    \break

    \key f \major
    a2. c c e,
    e4 g bes d2 e4
    \break

    c2.~ c
    f4 r f8 r
    f r e r d r
    e4 r e8 r
    bes2.
    \break

    e4 r e8 r
    e r d r c r
    d4 r d8 r
    a2.
    a
    \break

    c2. c e,
    e4 g bes
    d2 e4
    c2.~
    \break

    c
    f4 r f8 r
    f r e r d r
    e4 r e8 r
    \stemUp bes4 a bes
    \break

    c bes a
    c <<{\voiceOne \stemDown e(_\fermata f)_\fermata}\\{\voiceTwo \stemUp \magnifyMusic0.8 {\parenthesize g(} f)}>>
    \stemNeutral f2.~ f~ f4 r r \bar "|."
}

\score {
    \new Staff \with {
        instrumentName = "上低音号"
        midiInstrument = "trombone"
    } { \clef bass \euphonium }
    \layout { }
    \midi {
        \tempo 4=66
    }
}
