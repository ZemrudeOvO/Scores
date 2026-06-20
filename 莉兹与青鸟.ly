\version "2.26.0"

\header {
    title = "Liz and the blue bird"
}

\paper {
    % Add space for instrument names
    indent = 15\mm
}

global = {
    \key c \major
    \time 4/4
}

oboe = \relative c'' {
    \global
    d4.\mp \( e16 c d2~
    d8 e c4~ c8 b a4
    d4. e16 c d4. a'8
    g8 fis e2 \) e8 \( g
    \break

    a2 g4 e8 c
    d e a,2 \) a8 e'
    d4. \tuplet 3/2 {e16 d c} d2~
    d1 \bar "||"
    \break

    \mark \default e8 \( \mf g fis2 \grace {g16 fis} e8 d
    e b' e,2 \) e8 \( g
    a d a2 \grace {b16 c} b8 g
    a d a2. \)
    r1
    r1
    \break
}

\score {
    \new Staff \with {
        instrumentName = "单簧管"
        midiInstrument = "oboe"
    }\transpose bes, c \oboe
    \layout { }
    \midi {
        \tempo 4=72
    }
}
