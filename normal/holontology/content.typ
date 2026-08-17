#import "@preview/echarm:0.3.1"
#import "@preview/lilaq:0.6.0" as lq

#set text(
    font: ((name: "STIX Two Text", covers: "latin-in-cjk"), "Source Han Serif"),
    weight: 300,
    size: 10.5pt,
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
    font: ((name: "STIX Two Text", covers: "latin-in-cjk"), "Source Han Sans"),
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
        font: ((name: "STIX Two Text", covers: "latin-in-cjk"), "Source Han Sans")
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
    font: "STIX Two Text"
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

#show math.equation.where(block: false): it => {
    h(0.25em)
    it
    h(0.25em)
}

#set super(
    typographic: false
)

#show bibliography: set text(
    size: 8.5pt
)

#show math.equation: set text(
    font: ("STIX Two Math", "Source Han Serif"),
)

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

#v(2em)

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
        #text(size: 20pt, weight: 700, font: "STIX Two Text")[
            SURREAL CRIMES
        ]
    ]

    #par(leading: 0.1em)[
        #text(size: 13pt, weight: 700, font: "STIX Two Text")[
            Several Examples of Complicated Holontological Anomalous Crimes
        ]
    ]

    #text[LIU Yaochen#super[1], ZHANG Mengyun#super[2,3], NIKAID$upright(macron(O))$ Akira#super[3], WANG Hua#super[4]]<en>

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

从2019年起，以费城超现实研究所（PIP）的T. Y. Minovsky与L. Ionesco等学者提倡将现实结构理论作为新的现实学框架的基础@structure@strbook，标志着现实学理论体系的基本成熟。现实学理论目前已被应用于现实扭曲者的甄别、交互与压制@rb，Ionesco与圣彼得堡大学的R. Ginzburg还尝试性地利用现实学工具重新解释了奇术过程，在此过程中发现了意识-现实耦合效应，即Ionesco-Ginzburg效应@thaum。

2022年，浙江大学的郭志宏教授团队完成了全球范围的基准现实结构测绘@guo。尽管这项研究暂时无法处理超常机构一般称之为“枢纽”的非平凡现实结构，考虑到其令人印象深刻的性能和广度，这项研究仍然被认为是革命性的。

2022年末，复旦大学的陈一鸣教授团队对中国境内最复杂的非平凡现实结构山城进行初步复验@chen1@chen2。山城由一组相位一致的分立现实层级堆叠而来，其结构表现出复杂的自相似性质，相关测绘工作早在2011年就被完成@shan。陈一鸣教授团队的工作主要是利用2020年以后才逐渐受到认可的Frankhoff方法对2012年山城事件以来，尚未得到确认的不稳定结构进行补全测绘@chen3。这项工作不仅推动了我们对山城现实结构的进一步理解，还推动了山城事件后续处理工作的最终完成。

这一系列研究成果让我们看到了现实学理论在刑事案件侦办过程中应用的可能性。本研究为目前受到普遍认可、具有应用价值的结构现实学理论进行了综述，并从这些理论出发，重新审视了中外6个仍有事实不清的异常犯罪案例，为这些案例中涉及到的实际超常过程机理给出了更具说服力的解释，为其复杂现实学背景进行了建模。

= 理论背景

== 现实的概念与基本度量

在传统现实扭曲理论中，现实强度（reality strength）这一概念先于现实学这一学科诞生。相对现实强度最早被定义为一个无量纲常数@lorenz：

$ cal(R) equiv P_s/P_0 $

这是一个特定局域现实量相对于基准现实量的比值，物理量 $P$ 是所谓的现实扭曲程度。这个定义的问题在于，其既没有给出现实本身的定义，也没有给出衡量现实扭曲程度的方向，事实上，现实扭曲程度可以是任意选取的物理守恒量，例如经历现实扭曲前后同一物体的质量 $m$。这使得在早期实践中，相对现实强度的衡量极为随意，难以作为可信的定量描述。

1977年，SCP基金会的C. Rzewski教授在三波特兰各现实门径分别进行了许多基本物理常数的测量，在此期间他敏锐地观察到：测得的精细结构常数 $alpha$ 在隔离现实扭曲效应的空间中严格恒定，但不同空间内存在极小的偏差；空间内存在现实扭曲时，精细结构常数 $alpha$ 不恒定@rzewski。这一发现就是我们今天熟知的Rzewski定律。

根据Rzewski定律，J. Caldmann和C. Rzewski在1983年引入了我们今天依然通用的绝对现实强度 $cal(H)$。在进行了相当精密的测量后，$cal(H)$ 由局域精细结构常数 $alpha_s$ 与基准精细结构常数 $alpha_0$ 如下定义@caldmann：

$ cal(H) equiv k "exp"[-(dot(alpha)_s/alpha_0)^2] $

其中，比例系数 $k=100$。由此，基准现实的绝对现实强度数值被人为地规定为100；SCP基金会为这个量制定了单位“休谟”，其符号为Hm。被称为康德计数器的复合式原子钟被设计以测定 $alpha_s$ 的变化率，这是目前比较通行的现实强度衡量方法。

现实（reality）这一概念则始终未能得到良好的定义，早期研究只能将其模糊地称为“客观实在的度量”。到1990年，Y. L. Minovsky的一系列研究才给出了如下定义：

现实是一个衡量物理规律不变性的物理量。绝对现实强度 $cal(H)=100"Hm"$ 时，物理规律不随条件发生变化。物理规律的不稳定性越高，绝对现实强度越低。

== 结构现实学与退化模型

2010年代T. Y. Minovsky与L. Ionesco借助一系列数学构造解释了Rzewski定律，并为结构现实学基本模型作出了以下几条假设：

+ 现实是一种场；

+ 一切涉及现实扭曲的现象，都可以使用这种场和非异常的物理学结合起来作出数学解释；

+ 任何看似违背现有理论的“异常”现象，都是现实场与物质世界的相互作用所引发的。

这几条假设构成了结构现实学提倡的基本思想。T. Y. Minovsky和Ionesco在2019年正式发表了结构现实学基本模型的原始形式，即所谓Σ模型。最初，Σ模型的数学自洽要求9个空间维数，这一版本的理论也被简单地称为Σ-9模型，与稍后含时的Σ-10模型相对应。

现实强度不随时间变化，即$display((partial cal(H))/(partial p)) equiv 0$时，我们就可以认为相应的现实结构是静的。考虑不太小也不太大的一般情况，可以将Σ-9模型退化到一个近似于经典电磁学概念的“经典”现实学模型，本研究中我们简单地称之为退化模型。

我们的犯罪学研究限于宏观、低速条件下的现实学范畴，因此无需考察原始的Σ模型，以下所说的现实学理论，若无特别说明的，则默认为退化模型下的形式。

== 现实学背景的奇术理论

2020年，SCP基金会Site-CN-10的程皓宇等人发现Ionesco-Ginzburg效应会在现实结构中产生一种准粒子，由于经典奇术模型中假设的生命力能量（élan-vital energy）与结构现实学预测下这种准粒子的传递效应相互等价，他们将这种准粒子命名为冲子（élanon）@cheng。

包含了冲子及其相关现实学算符的非异常物理学可以描述绝大部分经典奇术模型所描述的现象。

= 复杂现实学异常犯罪典型案例

== Wilkinson被抢劫案

=== 案例概述

2014年7月19日午后，澳大利亚悉尼市民Samuel H. Wilkinson在坎贝尔敦遭遇一起抢劫。Wilkinson

=== 现有调查过程

== 

===



===

== 山城事件



#pagebreak()

#bibliography("bib.yml", style:"gb-7714-2005-numeric")