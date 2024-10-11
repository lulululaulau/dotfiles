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

s({trig = "inf"},
  {t("\\infty")}
),

s({trig = "diff"},
  {
    t("\\frac{d"),
    i(1),
    t("}{d"),
    i(2),
    t("}")
  }
),

s({trig = "pdiff"},
  {
    t("\\frac{\\partial "),
    i(1),
    t("}{\\partial "),
    i(2),
    t("}")
  }
),

s({trig = "eval"},
  {
    t("\\left. "),
    i(1),
    t(" \\right|")
  }
),

s({trig = "int"},
  {
    t("\\int_{"),
    i(1),
    t("}^{"),
    i(2),
    t("}"),
    i(3),
    t("\\; d")
  }
),

s({trig = "lim"},
  {
    t("\\lim_{"),
    i(1),
    t(" \\to "),
    i(2),
    t("}")
  }
),

s({trig = "llim"},
  {
    t("\\lim_{"),
    i(1),
    t(" \\to "),
    i(2),
    t("^-}")
  }
),

s({trig = "rlim"},
  {
    t("\\lim_{"),
    i(1),
    t(" \\to "),
    i(2),
    t("^+}")
  }
),

s({trig = "lh"},
  {
    t("\\overset{\\text{L'H}}{=}")
  }
),

s({trig = "lhn"},
  {
    t("\\overset{\\text{L'H}\\times "),
    i(1,"n"),
    t("}{=}")
  }
),



}


