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


s({trig = "sum"},
  {
    t("sum_("),
    i(1),
    t(")^("),
    i(2),
    t(")")
  }
),

s({trig = "prod"},
  {
    t("product_("),
    i(1),
    t(")^("),
    i(2),
    t(")")
  }
),

s({trig = "cbrt"},
  {
    t("root(3, "),
    i(1),
    t(")")
  }
),



}
