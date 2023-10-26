#import "nju-thesis/template.typ": documentclass, doc, preface, mainmatter, mainmatter-end, appendix

#let (
  cover,
  decl-page,
  abstract,
  abstract-en,
  outline-page,
) = documentclass(
  // anonymous: true,  // 盲审模式
  info: (
    title: ("基于 Typst 的", "南京大学学位论文"),
    title-en: "NJU Thesis Template for Typst",
    grade: "20XX",
    student-id: "1234567890",
    author: "张三",
    author-en: "Zhang San",
    department: "某学院",
    department-en: "XX Department",
    major: "某专业",
    major-en: "XX Major",
    supervisor: ("李四", "教授"),
    supervisor-en: ("Li Si", "Professor"),
    submit-date: datetime.today(),
  ),
)

// 文稿设置
#show: doc

// 封面页
#cover()

// 声明页
#decl-page()


// 前言
#show: preface

// 中文摘要
#abstract(
  keywords: ("我", "就是", "测试用", "关键词")
)[
  中文摘要
]

// 英文摘要
#abstract-en(
  keywords: ("Dummy", "Keywords", "Here", "It Is")
)[
  English abstract
]

// 目录
#outline-page()

// 正文
#show: mainmatter

= 引言

== 引言子标题

=== 引言子子标题

==== 引言子子子标题

引言内容


= 正文

== 正文子标题

=== 正文子子标题

#("正文内容" * 20)

#("正文内容" * 20)

#("正文内容" * 20)

// 正文结束标志，不可缺少
#mainmatter-end()


// 附录
#show: appendix

= 附录

== 附录子标题

=== 附录子子标题

附录内容