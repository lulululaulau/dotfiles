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
    t({"#let title = [", "\t"}),
    i(1),
    t({"", "]", "", "#let subtitle = [", "\t"}),
    i(2),
    t({"", "]", "", "#let author = [", "\t"}),
    i(3),
    t({"", "]", "", "#let date = [", "\t"}),
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
    t({"#let title = [", "\t"}),
    i(1),
    t({"", "]", "", "#let subtitle = [", "\t"}),
    i(2),
    t({"", "]", "", "#let author = [", "\t"}),
    i(3, "Lewis Lau"),
    t({"", "]", "", "#let date = [", "\t"}),
    i(4),
    t({"", "]", ""}),
    t({"#set page(", "\theader: [", "\t\t"}),
    i(5, "#subtitle"),
    t({"", "\t\t#h(1fr)", "\t\t"}),
    i(6, "#author"),
    t({"", "\t\t#line(length: 100%)", "\t],", "\tnumbering: \""}),
    i(7, "1 of 1"),
    t({"\",", ")", "", ""}),
    t({"",""}),
    t({"#align(center, text(18pt)[",
      "\t#title",
      "])",
      "",
      "#align(center, text(14pt)[",
      "\t#subtitle",
      "])",
      "",
      "#align(center, text(14pt)[",
      "\t#author",
      "])",
      "",
      "#align(center, text(14pt)[",
      "\t#date",
      "])",
      ""
    })
  }
),

s({trig = "setup"},
  {
    t({
      "#import \"@local/lulu:1.0.0\": *",
      "",
      "#show: lulu.with(",
      " \title: ["
    }),
    i(1),
    t({
      "],",
      "\tsubtitle: ["
    }),
    i(2),
    t({
      "],",
      "\tauthor: \""
    }),
    i(3, "Lewis Lau"),
    t({
      "\",",
      "\tdate: ["
    }),
    i(4),
    t({
      "]",
      ")",
      ""
    })
  }
)


}




