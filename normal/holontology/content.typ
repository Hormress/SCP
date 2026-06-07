#import "@preview/echarm:0.3.1"
#import "@preview/lilaq:0.6.0" as lq

#set text(
    font: ((name: "CMU Serif", covers: "latin-in-cjk"), "Source Han Serif"),
    weight: 400,
    lang: "zh"
)

#set list(
    indent: 2em,
    marker: "・"
)

#set enum(
    indent: 2em
)

#show <cn>: set text(
    font: ("SimSun")
)

#show strong: set text(
    font: ((name: "CMU Serif", covers: "latin-in-cjk"), "Source Han Sans"),
    weight: 500
)

#set par(
    justify: true,
    first-line-indent: (
        amount: 2em,
        all: true
    )
)

#set heading(
        numbering: "1.1"
)

#show heading: it => {
    set block(
        below: 1em
    )

    set text(
        font: ((name: "CMU Serif", covers: "latin-in-cjk"), "Source Han Sans")
    )
    
    it
}

#show heading.where(level: 1): it => {
    set block(
        below: 1em
    )

    set text(
        size: 16pt
    )
    
    it
}

#show <track>: set text(
    tracking: 1em
)

#show <en>: set text(
    font: "CMU Serif"
)

#show <en>: set par(
    justify: true,
    first-line-indent: (
        amount: 0em,
        all: true
    )
)

#show outline: it => {
    show strong: set text(
        font: "SimSun"
    )

    it
}

#let parencite(key, ..args) = [
    文献~#cite(key, style: "ieee", ..args)
]

#set page(
    header: [
        #grid(
            columns: (1fr, 1fr),
            [#par[*完全现实 HOLONREALITY*]<en>],
            align(right)[Vol. 67, No. 10 (2025)　100331]
        )
        
        #line(
            length: 100%,
            stroke: 5pt + rgb("#EEE"),
        )
    ],
    footer: [
        #line(
            length: 100%,
            stroke: 5pt + rgb("#EEE")
        )

        #align(center)[
            100331 -
            #context(
                counter(page).display(
                    "1"
                )
            )
        ]<en>
    ]
)

#align(center)[

    #par(leading: 0.1em)[
        #text(size: 20pt, weight: 700, font: "Source Han Sans")[
            超现实犯罪
        ]
    ]

    #par(leading: 0.1em)[
        #text(size: 16pt, weight: 500, font: "Source Han Sans")[
            复杂现实学异常犯罪几例
        ]
    ]

    刘耀辰#super[1]，张蒙韵#super[2,3]，二阶堂晓#super[3]，王华#super[4]

    #text(size: 10pt)[
        #super[1] SCP基金会中国分部七号区域第二研究所\ 
        #super[2] 联合国全球超自然联盟远东分部奇术事务部门\ 
        #super[3] 联合国全球超自然联盟远东现实学与奇术学研究所\ 
        #super[4] 异常事务局刑事司
    ]
]

#heading(numbering: none)[摘要]

本研究以现实学分析的视角，对2014至2024年间的6次典型异常犯罪案例进行了重新审视，发现这些犯罪者在作案过程中对现实学效应有意或无意的运用，并利用一系列模拟实验加以实证，为这些案例的复杂现实学背景进行了建模。本研究为从现实学角度防范异常影响提供参考，并给出了异常犯罪调查的新方向。

*关键词：*现实学；异常犯罪

#v(5em)

#align(center)[

    #par(leading: 0.1em)[
        #text(size: 20pt, weight: 700, font: "CMU Serif")[
            SURREAL CRIMES
        ]
    ]

    #par(leading: 0.1em)[
        #text(size: 13pt, weight: 700, font: "CMU Serif")[
            Several Examples of Complicated Holontological Anomalous Crimes
        ]
    ]

    #text[LIU Yaochen#super[1], ZHANG Mengyun#super[2,3], NIKAID$upright(hat(O))$ Akira#super[3], WANG Hua#super[4]]<en>

    #text(size: 10pt)[
        #super[1] 2#super(baseline: -0.35em)[nd] Research Institute, Area-CN-07, SCP Foundation\ 
        #super[2] Department of Thaumatology Affairs, Far East Branch, UNGOC\ 
        #super[3] Research Institute of Holontology and Thaumatology in Far East, UNGOC\ 
        #super[4] Criminal Division, MSS Bureau of Anomalous Affairs
    ]
]

#heading(numbering: none)[Abstract]

#par[
Holontological analysis methods have received great attentions in researches of anomalous crimes. Here, we reviewed 6 typical anomalous crime cases between 2014 and 2024 from a holontological perspective, revealing the intentional or unintentional exploitation of holontological effects by the perpetrators during their crimes. Through a series of simulation experiments, we provide empirical evidence and construct models for the complicated holontological backgrounds of these cases. This study provides a reference of preventing anomalous effects from a holontological standpoint and suggests new directions for the investigations of anomalous crimes.
]<en>

#par[
_*Keywords*_　holontology; anomalous crime
]<en>

#set page(
    columns: 2
)

= 研究背景