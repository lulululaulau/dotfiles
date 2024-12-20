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
  {t("oo")}
),

s({trig = "diff"},
  {
    t("(d "),
    i(1),
    t(") / (d "),
    i(2),
    t(")")
  }
),

s({trig = "pd"},
  {
    t("(diff "),
    i(1),
    t(") / (diff "),
    i(2),
    t(")")
  }
),

s({trig = "eval"},
  {
    t("lr("),
    i(1),
    t(" bar)")
  }
),

s({trig = "int"},
  {
    t("integral_("),
    i(1),
    t(")^("),
    i(2),
    t(") "),
    i(3),
    t(" #h(0.1cm) d ")
  }
),

s({trig = "iint"},
  {
    t("integral.double_("),
    i(1),
    t(") "),
    i(2),
    t(" #h(0.1cm) d ")
  }
),

s({trig = "lim"},
  {
    t("lim_("),
    i(1),
    t(" -> "),
    i(2),
    t(")")
  }
),

s({trig = "llim"},
  {
    t("lim_("),
    i(1),
    t(" -> "),
    i(2),
    t("^-)")
  }
),

s({trig = "rlim"},
  {
    t("lim_("),
    i(1),
    t(" -> "),
    i(2),
    t("^+)")
  }
),

s({trig = "lh"},
  {t("limits(=)^\"L'H\"")}
),

s({trig = "lhn"},
  {
    t("limits(=)^(\"L'H\" times "),
    i(1),
    t(")")
  }
),






}
