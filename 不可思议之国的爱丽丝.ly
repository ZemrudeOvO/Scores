\version "2.24.4"

\header {
    title = "不可思议之国的爱丽丝"
    subtitle = "Alice in Wonderland"
    instrument = "Euphonium"
    composer = "ZUN"
}

\paper {
    indent = 16\mm
}

global = {
    \key es \major
    \time 4/4
}

euphonium = \relative c {
    \global

    \tempo 4=140
    \repeat volta 2 {
        \acciaccatura c'8 d4. c8~ c2
        \acciaccatura f,8 g8. f g8 c,8. d ees8
        \acciaccatura c'8 d4. ees8 c2~
        c \acciaccatura c8 d8. ees f8
        \break

        \acciaccatura ees8 f4. ees8~ ees2
        \acciaccatura f8 g8. f g8 c,8. d ees8
        \acciaccatura ees8 f4. g8 ees2~
        ees \acciaccatura c,8 d8. ees f8
        \break

        \acciaccatura c'8 d4. c8~ c2
        \acciaccatura f,8 g8. f g8 c,8. d ees8
        \acciaccatura c'8 d4. ees8 c2~
        c \acciaccatura c8 d8. ees f8
        \break

        \acciaccatura ees8 f4. ees8~ ees2
        \acciaccatura f8 g8. f g8 c,8. d ees8
    }
    \alternative {
        {
            \acciaccatura ees8 f4. g8 ees2~
            ees \acciaccatura c,8 d8. ees f8
            \break
        }
        {
            \acciaccatura ees'8 f4. g8 ees2~
            ees r4 d,16 ees f8
        }
    }

    \repeat volta 2 {
        g2 c,8. ees g8
        c2 c,8. ees \acciaccatura bes'8 c8
        bes2 f8. d bes'8
        \acciaccatura g8 aes4. g16 f g2
        \break

        g8. f e8 f4 c'
        f,8. ees d8 ees4 \acciaccatura bes'8 c4
        b8. c d8 g,2
        b d,8. ees f8
        g2 c,8. ees g8
        \break

        c2 c,8. ees \acciaccatura bes'8 c8
        bes2 f8. d bes'8
        \acciaccatura g8 aes4. g16 f g2
        g8. f e8 f4 c'
        f,8. ees d8 ees4 \acciaccatura bes'8 c4
        \break
    }
    \alternative {
        {
            b8. c d8 g,2
            b d,8. ees f8
        }
        {
            b8. c d8 g,8. f' d8
            ees1
            \break
        }
    }
    \key e \major
    \bar ".|:"
    \acciaccatura cis8 dis4. cis8~ cis2
    \acciaccatura fis,8 gis8. fis gis8 cis,8. dis e8
    \acciaccatura cis'8 dis4. e8 cis2~
    cis \acciaccatura cis8 dis8. e fis8
    \break

    \acciaccatura e8 fis4. eis8~ eis2
    \acciaccatura fis8 gis8. fis gis8 cis,8. dis e8
    \acciaccatura e8 fis4. gis8 e2~
     e \acciaccatura cis,8 dis8. e fis8
    \bar ":|." \key d \major \time 2/4 \break

    r4  cis16 d e8 \time 4/4

    \repeat volta 2 {
        fis2 b8. d fis8
        b2 b,8. d \acciaccatura a'8 b8
        a2 e8. cis a'8
        \acciaccatura fis g4. fis16 e fis2
        \break

        fis8. e dis8 e4 b'4
        e,8. d cis8 d4 \acciaccatura a'8 b4
        ais8. b cis8 fis,2
        ais2 cis,8. d e8
        fis2 b,8. d fis8
        \break

        b2 b,8. d \acciaccatura a'8 b8
        a2 e8. cis a'8
        \acciaccatura fis g4. fis16 e fis2
        fis8. e dis8 e4 b'4
        e,8. d cis8 d4 \acciaccatura a'8 b4
        \break
    }
    \alternative {
        {
            ais8. b cis8 fis,2
            ais2 cis,8. d e8
        }
        {
            ais8. b cis8 fis,8. e' cis8
            d1
        }
    }
    \bar "|."
}

\score {
    \new Staff \with {
        instrumentName = "Euphonium"
        midiInstrument = "trombone"
    } { \clef bass \transpose c g, \euphonium }
    \layout { }
    \midi {
        \tempo 4=140
    }
}
