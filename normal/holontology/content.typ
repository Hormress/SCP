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
    margin: (
        x: 1.5cm
    ),

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

= 引言

现实学作为一门独立学科诞生不过30年，其理论与应用成果已经非常丰富，我们也已经看到现有的现实学体系被联合国全球超自然联盟与SCP基金会等受特别许可的超常机构纳入到它们的基本超常处理模式与训练中去。

从2019年起，以费城超现实研究所（PIP）的T. Y. Minovsky与L. Ionesco等学者提倡将现实结构理论作为新的现实学框架的基础，标志着现实学理论体系的基本成熟。现实学理论目前已被应用于现实扭曲者的甄别、交互与压制，Ionesco与圣彼得堡大学的R. Ginzburg还尝试性地利用现实学工具重新解释了奇术过程，在此过程中发现了意识-现实耦合效应，即Ionesco-Ginzburg效应。

2022年，浙江大学的郭志宏教授团队完成了全球范围的基准现实结构测绘。尽管这项研究暂时无法处理超常机构一般称之为“枢纽”的非平凡现实结构，考虑到其令人印象深刻的性能和广度，这项研究仍然被认为是革命性的。

2022年末，复旦大学的陈一鸣教授团队对中国境内最复杂的非平凡现实结构山城进行初步复验。山城由一组相位一致的分立现实层级堆叠而来，其结构表现出复杂的自相似性质，相关测绘工作早在2011年就被完成。陈一鸣教授团队的工作主要是利用2020年以后才逐渐受到认可的Frankhoff方法对2012年山城事件以来，尚未得到确认的不稳定结构进行补全测绘。这项工作不仅推动了我们对山城现实结构的进一步理解，还推动了山城事件后续处理工作的最终完成。

这一系列研究成果让我们看到了现实学理论在刑事案件侦办过程中应用的可能性。本研究从目前受到普遍认可的结构现实学理论出发，结合