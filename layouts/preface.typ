// 前言，重置页面计数器
#let preface(
  // documentclass 传入的参数
  twoside: false,
  ..args,
  it,
) = {
  // 分页
  if twoside {
    pagebreak() + " "
  }
  counter(page).update(0)

  let is-page-empty() = {
    let page-num = here().page()
    query(<empty-page-start>)
      .zip(query(<empty-page-end>))
      .any(((start, end)) => {
        (start.location().page() < page-num and page-num < end.location().page())
      })
  }

  show pagebreak: it => {
    [#metadata(none) <empty-page-start>]
    it
    [#metadata(none) <empty-page-end>]
  }

  set page(
    numbering: "I",
    footer: context {
      if is-page-empty() {
        return
      }
      align(center, counter(page).display())
    },
  )

  it
}
