\version "2.24.4"

\header {
    title = "三日月之舞-Solo"
    instrument = "Euphonium"
}

\paper {
    % Add space for instrument names
    indent = 16\mm
    score-system-spacing.basic-distance = #20
    score-system-spacing.padding = #10
}

global = {
    \key c \major
    \time 4/4
    \tempo \markup{Lento con espressione(\note {4} #1 =66 ca.)}
}

euphonium = \relative c' {
    \global
    \mark \markup { \box \bold "H" }
    r2 r4 g~\fermata (
    g4. fis16 g e fis d e \tuplet 3/2 {c8 d b}
    \tuplet 3/2 {c fis e} a2 ) g4~\fermata (
    g4. fis16 g e fis d e \tuplet 3/2 {c8 d b}
    \tuplet 3/2 {c d b} c2 ) \tuplet 7/4 {b16 \< ( c d e f g a \!}
    b4. a16 b g f e f \tuplet 3/2 {g8 a e}
    g4 f4. ) cis8 ( \tuplet 3/2 {d e f}
    f4 e2.~ \time 3/4
    e2 ) r4 \time 4/4
    g4. ( a16 b c8 b16 a g8 c~
    c8 c,4.~ c8 r e d~
    d c4.~ c2~
    c2. ) r4


}

\score {
    \new Staff \with {
        instrumentName = "T.C."
        midiInstrument = "trombone"
    } { \clef treble \transpose c c'' \euphonium }
    \layout { }
    \midi {
        \tempo 4=66
    }
}

\score {
    \new Staff \with {
        instrumentName = "B.C."
        midiInstrument = "trombone"
    } { \clef bass \transpose c bes \euphonium }
    \layout { }
    \midi {
        \tempo 4=66
    }
}

\score {
    \new Staff \with {
        instrumentName = "B.C. 8vb"
        midiInstrument = "trombone"
    } { \clef bass \ottava #1 \transpose c bes \euphonium }
    \layout { }
    \midi {
        \tempo 4=66
    }
}
