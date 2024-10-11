local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {

s({trig = "settitle"},
  {
    t({"#let title = [", "  "}),
    i(1),
    t({"", "]", "", "#let subtitle = [", "  "}),
    i(2),
    t({"", "]", "", "#let author = [", "  "}),
    i(3),
    t({"", "]", "", "#let date = [", "  "}),
    i(4),
    t({"", "]", ""})
  }
),

s({trig = "printtitle"},
  {
    t({"#align(center, text(18pt)[",
      "  #title",
      "])",
      "",
      "#align(center, text(14pt)[",
      "  #subtitle",
      "])",
      "",
      "#align(center, text(14pt)[",
      "  #author",
      "])",
      "",
      "#align(center, text(14pt)[",
      "  #date",
      "])",
      ""
    })
  }
),

s({trig = "notesetup"},
  {
    t({"#let title = [", "  "}),
    i(1),
    t({"", "]", "", "#let subtitle = [", "  "}),
    i(2),
    t({"", "]", "", "#let author = [", "  "}),
    i(3, "Lewis Lau"),
    t({"", "]", "", "#let date = [", "  "}),
    i(4),
    t({"", "]", ""}),
    t({"#set page(", "  header: [", "    "}),
    i(5, "#subtitle"),
    t({"", "    #h(1fr)", "    "}),
    i(6, "#author"),
    t({"", "    #line(length: 100%)", "  ],", "  numbering: \""}),
    i(7, "1 of 1"),
    t({"\",", ")", "", ""}),
    t("#show math.equation.where(block: true): set align(left)"),
    t({"",""}),
    t({"#align(center, text(18pt)[",
      "  #title",
      "])",
      "",
      "#align(center, text(14pt)[",
      "  #subtitle",
      "])",
      "",
      "#align(center, text(14pt)[",
      "  #author",
      "])",
      "",
      "#align(center, text(14pt)[",
      "  #date",
      "])",
      ""
    })
  }
),


}




