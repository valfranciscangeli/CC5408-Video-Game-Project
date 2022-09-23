local Font = {}

Font.info = 
    {
    face              = "NicoBold",
    file              = "BoldBubblegum.png",
    size              = 16,
    bold              = 1,
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
    lineHeight        = 20,
    base              = 13,
    scaleW            = 147,
    scaleH            = 184,
    pages             = 1,
    packed            = 0,
    }

Font.chars =
    {
    {id=32,x=78,y=162,width=0,height=0,xoffset=0,yoffset=16,xadvance=6,page=0,chnl=0,letter="space"},
    {id=33,x=68,y=114,width=7,height=16,xoffset=1,yoffset=1,xadvance=6,page=0,chnl=0,letter="!"},
    {id=34,x=115,y=148,width=11,height=9,xoffset=0,yoffset=1,xadvance=8,page=0,chnl=0,letter=string.char(34)},
    {id=35,x=99,y=24,width=16,height=16,xoffset=1,yoffset=1,xadvance=14,page=0,chnl=0,letter="#"},
    {id=36,x=106,y=2,width=12,height=17,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="$"},
    {id=37,x=42,y=24,width=17,height=16,xoffset=1,yoffset=1,xadvance=16,page=0,chnl=0,letter="%"},
    {id=38,x=56,y=42,width=15,height=16,xoffset=1,yoffset=1,xadvance=14,page=0,chnl=0,letter="&"},
    {id=39,x=11,y=162,width=6,height=9,xoffset=1,yoffset=1,xadvance=4,page=0,chnl=0,letter="'"},
    {id=40,x=45,y=2,width=9,height=18,xoffset=0,yoffset=1,xadvance=6,page=0,chnl=0,letter="("},
    {id=41,x=56,y=2,width=9,height=18,xoffset=0,yoffset=1,xadvance=6,page=0,chnl=0,letter=")"},
    {id=42,x=128,y=148,width=11,height=9,xoffset=0,yoffset=1,xadvance=8,page=0,chnl=0,letter="*"},
    {id=43,x=89,y=148,width=10,height=10,xoffset=0,yoffset=3,xadvance=8,page=0,chnl=0,letter="+"},
    {id=44,x=2,y=162,width=7,height=9,xoffset=1,yoffset=10,xadvance=6,page=0,chnl=0,letter=","},
    {id=45,x=66,y=162,width=10,height=6,xoffset=1,yoffset=6,xadvance=8,page=0,chnl=0,letter="-"},
    {id=46,x=34,y=162,width=7,height=7,xoffset=1,yoffset=10,xadvance=6,page=0,chnl=0,letter="."},
    {id=47,x=134,y=2,width=11,height=17,xoffset=2,yoffset=1,xadvance=10,page=0,chnl=0,letter="/"},
    {id=48,x=114,y=60,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="0"},
    {id=49,x=30,y=114,width=11,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="1"},
    {id=50,x=17,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="2"},
    {id=51,x=31,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="3"},
    {id=52,x=2,y=60,width=14,height=16,xoffset=0,yoffset=1,xadvance=12,page=0,chnl=0,letter="4"},
    {id=53,x=45,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="5"},
    {id=54,x=59,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="6"},
    {id=55,x=129,y=60,width=13,height=16,xoffset=0,yoffset=1,xadvance=10,page=0,chnl=0,letter="7"},
    {id=56,x=73,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="8"},
    {id=57,x=2,y=78,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="9"},
    {id=58,x=80,y=148,width=7,height=12,xoffset=1,yoffset=3,xadvance=6,page=0,chnl=0,letter=":"},
    {id=59,x=117,y=114,width=8,height=15,xoffset=1,yoffset=5,xadvance=6,page=0,chnl=0,letter=";"},
    {id=60,x=127,y=114,width=13,height=14,xoffset=0,yoffset=2,xadvance=10,page=0,chnl=0,letter="<"},
    {id=61,x=101,y=148,width=12,height=9,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="="},
    {id=62,x=2,y=132,width=13,height=14,xoffset=1,yoffset=2,xadvance=12,page=0,chnl=0,letter=">"},
    {id=63,x=87,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="?"},
    {id=64,x=117,y=24,width=16,height=16,xoffset=1,yoffset=3,xadvance=14,page=0,chnl=0,letter="@"},
    {id=65,x=2,y=42,width=16,height=16,xoffset=0,yoffset=1,xadvance=14,page=0,chnl=0,letter="A"},
    {id=66,x=17,y=78,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="B"},
    {id=67,x=73,y=42,width=15,height=16,xoffset=0,yoffset=1,xadvance=12,page=0,chnl=0,letter="C"},
    {id=68,x=90,y=42,width=15,height=16,xoffset=1,yoffset=1,xadvance=14,page=0,chnl=0,letter="D"},
    {id=69,x=101,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="E"},
    {id=70,x=115,y=96,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="F"},
    {id=71,x=61,y=24,width=17,height=16,xoffset=0,yoffset=1,xadvance=14,page=0,chnl=0,letter="G"},
    {id=72,x=18,y=60,width=14,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="H"},
    {id=73,x=77,y=114,width=7,height=16,xoffset=1,yoffset=1,xadvance=6,page=0,chnl=0,letter="I"},
    {id=74,x=129,y=96,width=12,height=16,xoffset=0,yoffset=1,xadvance=10,page=0,chnl=0,letter="J"},
    {id=75,x=107,y=42,width=15,height=16,xoffset=1,yoffset=1,xadvance=14,page=0,chnl=0,letter="K"},
    {id=76,x=43,y=114,width=11,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="L"},
    {id=77,x=2,y=24,width=18,height=16,xoffset=0,yoffset=1,xadvance=16,page=0,chnl=0,letter="M"},
    {id=78,x=20,y=42,width=16,height=16,xoffset=1,yoffset=1,xadvance=14,page=0,chnl=0,letter="N"},
    {id=79,x=80,y=24,width=17,height=16,xoffset=0,yoffset=1,xadvance=14,page=0,chnl=0,letter="O"},
    {id=80,x=32,y=78,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="P"},
    {id=81,x=87,y=2,width=17,height=17,xoffset=0,yoffset=1,xadvance=14,page=0,chnl=0,letter="Q"},
    {id=82,x=34,y=60,width=14,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="R"},
    {id=83,x=2,y=114,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="S"},
    {id=84,x=47,y=78,width=13,height=16,xoffset=0,yoffset=1,xadvance=10,page=0,chnl=0,letter="T"},
    {id=85,x=50,y=60,width=14,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="U"},
    {id=86,x=38,y=42,width=16,height=16,xoffset=0,yoffset=1,xadvance=14,page=0,chnl=0,letter="V"},
    {id=87,x=22,y=24,width=18,height=16,xoffset=0,yoffset=1,xadvance=16,page=0,chnl=0,letter="W"},
    {id=88,x=66,y=60,width=14,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="X"},
    {id=89,x=124,y=42,width=15,height=16,xoffset=0,yoffset=1,xadvance=12,page=0,chnl=0,letter="Y"},
    {id=90,x=82,y=60,width=14,height=16,xoffset=0,yoffset=1,xadvance=12,page=0,chnl=0,letter="Z"},
    {id=91,x=67,y=2,width=8,height=18,xoffset=1,yoffset=1,xadvance=6,page=0,chnl=0,letter="["},
    {id=92,x=120,y=2,width=12,height=17,xoffset=0,yoffset=1,xadvance=10,page=0,chnl=0,letter=string.char(92)},
    {id=93,x=77,y=2,width=8,height=18,xoffset=0,yoffset=1,xadvance=6,page=0,chnl=0,letter="]"},
    {id=94,x=17,y=132,width=15,height=13,xoffset=1,yoffset=1,xadvance=14,page=0,chnl=0,letter="^"},
    {id=95,x=52,y=162,width=12,height=6,xoffset=1,yoffset=13,xadvance=10,page=0,chnl=0,letter="_"},
    {id=96,x=43,y=162,width=7,height=7,xoffset=0,yoffset=1,xadvance=4,page=0,chnl=0,letter="`"},
    {id=97,x=73,y=132,width=13,height=12,xoffset=1,yoffset=5,xadvance=12,page=0,chnl=0,letter="a"},
    {id=98,x=62,y=78,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="b"},
    {id=99,x=30,y=148,width=11,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="c"},
    {id=100,x=77,y=78,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="d"},
    {id=101,x=103,y=132,width=12,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="e"},
    {id=102,x=56,y=114,width=10,height=16,xoffset=0,yoffset=1,xadvance=8,page=0,chnl=0,letter="f"},
    {id=103,x=92,y=78,width=13,height=16,xoffset=1,yoffset=5,xadvance=12,page=0,chnl=0,letter="g"},
    {id=104,x=16,y=114,width=12,height=16,xoffset=1,yoffset=1,xadvance=10,page=0,chnl=0,letter="h"},
    {id=105,x=86,y=114,width=7,height=16,xoffset=1,yoffset=1,xadvance=6,page=0,chnl=0,letter="i"},
    {id=106,x=2,y=2,width=9,height=20,xoffset=-1,yoffset=1,xadvance=6,page=0,chnl=0,letter="j"},
    {id=107,x=107,y=78,width=13,height=16,xoffset=1,yoffset=1,xadvance=12,page=0,chnl=0,letter="k"},
    {id=108,x=95,y=114,width=7,height=16,xoffset=1,yoffset=1,xadvance=6,page=0,chnl=0,letter="l"},
    {id=109,x=54,y=132,width=17,height=12,xoffset=1,yoffset=5,xadvance=16,page=0,chnl=0,letter="m"},
    {id=110,x=117,y=132,width=12,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="n"},
    {id=111,x=131,y=132,width=12,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="o"},
    {id=112,x=122,y=78,width=13,height=16,xoffset=1,yoffset=5,xadvance=12,page=0,chnl=0,letter="p"},
    {id=113,x=2,y=96,width=13,height=16,xoffset=1,yoffset=5,xadvance=12,page=0,chnl=0,letter="q"},
    {id=114,x=56,y=148,width=10,height=12,xoffset=1,yoffset=5,xadvance=8,page=0,chnl=0,letter="r"},
    {id=115,x=68,y=148,width=10,height=12,xoffset=1,yoffset=5,xadvance=8,page=0,chnl=0,letter="s"},
    {id=116,x=104,y=114,width=11,height=15,xoffset=0,yoffset=2,xadvance=8,page=0,chnl=0,letter="t"},
    {id=117,x=2,y=148,width=12,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="u"},
    {id=118,x=88,y=132,width=13,height=12,xoffset=0,yoffset=5,xadvance=10,page=0,chnl=0,letter="v"},
    {id=119,x=34,y=132,width=18,height=12,xoffset=0,yoffset=5,xadvance=16,page=0,chnl=0,letter="w"},
    {id=120,x=16,y=148,width=12,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="x"},
    {id=121,x=98,y=60,width=14,height=16,xoffset=0,yoffset=5,xadvance=12,page=0,chnl=0,letter="y"},
    {id=122,x=43,y=148,width=11,height=12,xoffset=1,yoffset=5,xadvance=10,page=0,chnl=0,letter="z"},
    {id=123,x=21,y=2,width=10,height=18,xoffset=-1,yoffset=1,xadvance=6,page=0,chnl=0,letter="{"},
    {id=124,x=13,y=2,width=6,height=19,xoffset=1,yoffset=1,xadvance=4,page=0,chnl=0,letter="|"},
    {id=125,x=33,y=2,width=10,height=18,xoffset=0,yoffset=1,xadvance=8,page=0,chnl=0,letter="}"},
    {id=126,x=19,y=162,width=13,height=8,xoffset=0,yoffset=7,xadvance=10,page=0,chnl=0,letter="~"},
    }

Font.kerning =
    {
    }

return Font