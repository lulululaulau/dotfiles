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

s({trig = "env"},
  {
    t("\\begin{"),
    i(1),
    t({"}", "\t"}),
    i(2),
    t({"", "\\end{"}),
    rep(1),
    t("}")
  }
),

s({trig = "eq"},
  {
    t({"\\begin{equation*}", "\t"}),
    i(1),
    t({"", "\\end{equation*}", ""})
  }
),

s({trig = "figure"},
  {
    t({"\\begin{figure}[ht]", "\t\\centering", "\t\\includegraphics[width="}),
    i(1),
    t("\\linewidth]{"),
    i(2),
    t({"}", "\t\\caption{"}),
    i(3),
    t({"}%", "\t\\label{fig:"}),
    i(4),
    t({"}", "\\end{figure}"})
  }
),






}
