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

s({trig = "imp"},
  {t("arrow.r.double.long")}
),

s({trig = "if"},
  {t("arrow.l.double.long")}
),

s({trig = "iff"},
  {t("arrow.l.r.double.long")}
),

s({trig = "hline"},
  {t({"#line(length: 100%)", ""})}
),

s({trig = "iffproof"},
  {
    t("#list(marker: $"),
    i(1, "==>"),
    t({"$)[", "  "}),
    i(2),
    t({"", "] #list(marker: $"}),
    i(3, "<=="),
    t({"$)[", "  "}),
    i(4),
    t({"", "]"})
  }
),

}
