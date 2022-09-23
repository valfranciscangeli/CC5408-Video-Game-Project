local Font = {}

Font.info = 
    {
    face              = "NicoClean",
    file              = "CleanVictory.png",
    size              = 16,
    bold              = 0,
    italic            = 0,
    charset           = "",
    unicode           = 0,
    stretchH          = 100,
    smooth            = 1,
    aa                = 1,
    padding           = {0, 0, 0, 0},
    spacing           = 2,
    charsCount        = 95,
    kerningsCounts    = 0,
    }

Font.common =
    {
    lineHeight        = 24,
    base              = 13,
    scaleW            = 189,
    scaleH            = 235,
    pages             = 1,
    packed            = 0,
    }

Font.chars =
    {
    {id=32,x=159,y=209,width=0,height=0,xoffset=0,yoffset=23,xadvance=5,page=0,chnl=0,letter="space"},
    {id=33,x=86,y=144,width=11,height=21,xoffset=1,yoffset=2,xadvance=5,page=0,chnl=0,letter="!"},
    {id=34,x=38,y=209,width=13,height=14,xoffset=1,yoffset=2,xadvance=7,page=0,chnl=0,letter=string.char(34)},
    {id=35,x=60,y=28,width=22,height=21,xoffset=0,yoffset=2,xadvance=15,page=0,chnl=0,letter="#"},
    {id=36,x=60,y=2,width=18,height=23,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="$"},
    {id=37,x=138,y=144,width=22,height=20,xoffset=0,yoffset=3,xadvance=15,page=0,chnl=0,letter="%"},
    {id=38,x=90,y=52,width=19,height=21,xoffset=0,yoffset=2,xadvance=12,page=0,chnl=0,letter="&"},
    {id=39,x=53,y=209,width=10,height=14,xoffset=1,yoffset=2,xadvance=4,page=0,chnl=0,letter="'"},
    {id=40,x=80,y=2,width=13,height=23,xoffset=0,yoffset=2,xadvance=6,page=0,chnl=0,letter="("},
    {id=41,x=95,y=2,width=13,height=23,xoffset=0,yoffset=2,xadvance=6,page=0,chnl=0,letter=")"},
    {id=42,x=2,y=209,width=15,height=15,xoffset=0,yoffset=2,xadvance=8,page=0,chnl=0,letter="*"},
    {id=43,x=128,y=189,width=17,height=17,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="+"},
    {id=44,x=65,y=209,width=11,height=13,xoffset=1,yoffset=12,xadvance=5,page=0,chnl=0,letter=","},
    {id=45,x=115,y=209,width=16,height=11,xoffset=0,yoffset=8,xadvance=9,page=0,chnl=0,letter="-"},
    {id=46,x=133,y=209,width=11,height=11,xoffset=1,yoffset=12,xadvance=5,page=0,chnl=0,letter="."},
    {id=47,x=153,y=2,width=16,height=22,xoffset=-1,yoffset=2,xadvance=8,page=0,chnl=0,letter="/"},
    {id=48,x=86,y=75,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="0"},
    {id=49,x=71,y=144,width=13,height=21,xoffset=0,yoffset=2,xadvance=6,page=0,chnl=0,letter="1"},
    {id=50,x=142,y=98,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="2"},
    {id=51,x=161,y=98,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="3"},
    {id=52,x=111,y=52,width=19,height=21,xoffset=-1,yoffset=2,xadvance=11,page=0,chnl=0,letter="4"},
    {id=53,x=2,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="5"},
    {id=54,x=21,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="6"},
    {id=55,x=40,y=121,width=17,height=21,xoffset=-1,yoffset=2,xadvance=9,page=0,chnl=0,letter="7"},
    {id=56,x=59,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="8"},
    {id=57,x=78,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="9"},
    {id=58,x=147,y=189,width=11,height=17,xoffset=1,yoffset=5,xadvance=5,page=0,chnl=0,letter=":"},
    {id=59,x=2,y=167,width=11,height=20,xoffset=1,yoffset=5,xadvance=5,page=0,chnl=0,letter=";"},
    {id=60,x=59,y=189,width=16,height=18,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="<"},
    {id=61,x=160,y=189,width=16,height=15,xoffset=1,yoffset=7,xadvance=10,page=0,chnl=0,letter="="},
    {id=62,x=77,y=189,width=16,height=18,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter=">"},
    {id=63,x=2,y=144,width=16,height=21,xoffset=0,yoffset=2,xadvance=9,page=0,chnl=0,letter="?"},
    {id=64,x=84,y=28,width=22,height=21,xoffset=0,yoffset=2,xadvance=15,page=0,chnl=0,letter="@"},
    {id=65,x=154,y=28,width=20,height=21,xoffset=-1,yoffset=2,xadvance=12,page=0,chnl=0,letter="A"},
    {id=66,x=106,y=75,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="B"},
    {id=67,x=2,y=52,width=20,height=21,xoffset=0,yoffset=2,xadvance=13,page=0,chnl=0,letter="C"},
    {id=68,x=132,y=52,width=19,height=21,xoffset=0,yoffset=2,xadvance=12,page=0,chnl=0,letter="D"},
    {id=69,x=97,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="E"},
    {id=70,x=116,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="F"},
    {id=71,x=24,y=52,width=20,height=21,xoffset=0,yoffset=2,xadvance=13,page=0,chnl=0,letter="G"},
    {id=72,x=126,y=75,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="H"},
    {id=73,x=99,y=144,width=11,height=21,xoffset=0,yoffset=2,xadvance=4,page=0,chnl=0,letter="I"},
    {id=74,x=55,y=144,width=14,height=21,xoffset=-1,yoffset=2,xadvance=6,page=0,chnl=0,letter="J"},
    {id=75,x=153,y=52,width=19,height=21,xoffset=0,yoffset=2,xadvance=12,page=0,chnl=0,letter="K"},
    {id=76,x=20,y=144,width=16,height=21,xoffset=0,yoffset=2,xadvance=9,page=0,chnl=0,letter="L"},
    {id=77,x=108,y=28,width=21,height=21,xoffset=0,yoffset=2,xadvance=14,page=0,chnl=0,letter="M"},
    {id=78,x=2,y=75,width=19,height=21,xoffset=0,yoffset=2,xadvance=12,page=0,chnl=0,letter="N"},
    {id=79,x=131,y=28,width=21,height=21,xoffset=0,yoffset=2,xadvance=14,page=0,chnl=0,letter="O"},
    {id=80,x=146,y=75,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="P"},
    {id=81,x=110,y=2,width=21,height=22,xoffset=0,yoffset=2,xadvance=14,page=0,chnl=0,letter="Q"},
    {id=82,x=23,y=75,width=19,height=21,xoffset=0,yoffset=2,xadvance=12,page=0,chnl=0,letter="R"},
    {id=83,x=166,y=75,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="S"},
    {id=84,x=2,y=98,width=18,height=21,xoffset=-1,yoffset=2,xadvance=10,page=0,chnl=0,letter="T"},
    {id=85,x=22,y=98,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="U"},
    {id=86,x=46,y=52,width=20,height=21,xoffset=-1,yoffset=2,xadvance=12,page=0,chnl=0,letter="V"},
    {id=87,x=34,y=28,width=24,height=21,xoffset=-2,yoffset=2,xadvance=15,page=0,chnl=0,letter="W"},
    {id=88,x=68,y=52,width=20,height=21,xoffset=-1,yoffset=2,xadvance=12,page=0,chnl=0,letter="X"},
    {id=89,x=44,y=75,width=19,height=21,xoffset=-1,yoffset=2,xadvance=11,page=0,chnl=0,letter="Y"},
    {id=90,x=42,y=98,width=18,height=21,xoffset=-1,yoffset=2,xadvance=10,page=0,chnl=0,letter="Z"},
    {id=91,x=2,y=2,width=13,height=24,xoffset=1,yoffset=2,xadvance=7,page=0,chnl=0,letter="["},
    {id=92,x=171,y=2,width=16,height=22,xoffset=0,yoffset=2,xadvance=9,page=0,chnl=0,letter=string.char(92)},
    {id=93,x=17,y=2,width=13,height=24,xoffset=0,yoffset=2,xadvance=6,page=0,chnl=0,letter="]"},
    {id=94,x=19,y=209,width=17,height=14,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="^"},
    {id=95,x=96,y=209,width=17,height=11,xoffset=0,yoffset=14,xadvance=10,page=0,chnl=0,letter="_"},
    {id=96,x=146,y=209,width=11,height=11,xoffset=2,yoffset=2,xadvance=6,page=0,chnl=0,letter="`"},
    {id=97,x=123,y=167,width=17,height=18,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="a"},
    {id=98,x=62,y=98,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="b"},
    {id=99,x=142,y=167,width=17,height=18,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="c"},
    {id=100,x=82,y=98,width=18,height=21,xoffset=0,yoffset=2,xadvance=11,page=0,chnl=0,letter="d"},
    {id=101,x=161,y=167,width=17,height=18,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="e"},
    {id=102,x=38,y=144,width=15,height=21,xoffset=-1,yoffset=2,xadvance=7,page=0,chnl=0,letter="f"},
    {id=103,x=133,y=2,width=18,height=22,xoffset=-1,yoffset=5,xadvance=10,page=0,chnl=0,letter="g"},
    {id=104,x=135,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="h"},
    {id=105,x=112,y=144,width=11,height=21,xoffset=0,yoffset=2,xadvance=4,page=0,chnl=0,letter="i"},
    {id=106,x=32,y=2,width=13,height=24,xoffset=-2,yoffset=2,xadvance=4,page=0,chnl=0,letter="j"},
    {id=107,x=154,y=121,width=17,height=21,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="k"},
    {id=108,x=125,y=144,width=11,height=21,xoffset=0,yoffset=2,xadvance=4,page=0,chnl=0,letter="l"},
    {id=109,x=40,y=167,width=21,height=18,xoffset=0,yoffset=5,xadvance=14,page=0,chnl=0,letter="m"},
    {id=110,x=2,y=189,width=17,height=18,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="n"},
    {id=111,x=63,y=167,width=18,height=18,xoffset=0,yoffset=5,xadvance=11,page=0,chnl=0,letter="o"},
    {id=112,x=102,y=98,width=18,height=21,xoffset=0,yoffset=5,xadvance=11,page=0,chnl=0,letter="p"},
    {id=113,x=122,y=98,width=18,height=21,xoffset=0,yoffset=5,xadvance=11,page=0,chnl=0,letter="q"},
    {id=114,x=112,y=189,width=14,height=18,xoffset=0,yoffset=5,xadvance=7,page=0,chnl=0,letter="r"},
    {id=115,x=95,y=189,width=15,height=18,xoffset=0,yoffset=5,xadvance=8,page=0,chnl=0,letter="s"},
    {id=116,x=162,y=144,width=15,height=20,xoffset=-1,yoffset=3,xadvance=7,page=0,chnl=0,letter="t"},
    {id=117,x=21,y=189,width=17,height=18,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="u"},
    {id=118,x=83,y=167,width=18,height=18,xoffset=-1,yoffset=5,xadvance=10,page=0,chnl=0,letter="v"},
    {id=119,x=15,y=167,width=23,height=18,xoffset=-1,yoffset=5,xadvance=15,page=0,chnl=0,letter="w"},
    {id=120,x=103,y=167,width=18,height=18,xoffset=-1,yoffset=5,xadvance=10,page=0,chnl=0,letter="x"},
    {id=121,x=65,y=75,width=19,height=21,xoffset=-1,yoffset=5,xadvance=11,page=0,chnl=0,letter="y"},
    {id=122,x=40,y=189,width=17,height=18,xoffset=-1,yoffset=5,xadvance=9,page=0,chnl=0,letter="z"},
    {id=123,x=2,y=28,width=14,height=22,xoffset=-1,yoffset=2,xadvance=6,page=0,chnl=0,letter="{"},
    {id=124,x=47,y=2,width=11,height=24,xoffset=1,yoffset=2,xadvance=5,page=0,chnl=0,letter="|"},
    {id=125,x=18,y=28,width=14,height=22,xoffset=0,yoffset=2,xadvance=7,page=0,chnl=0,letter="}"},
    {id=126,x=78,y=209,width=16,height=12,xoffset=1,yoffset=8,xadvance=10,page=0,chnl=0,letter="~"},
    }

Font.kerning =
    {
    }

return Font