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

s({trig = "lr", descr = "expands 'lr' into '\\left...\\right'"},
  {
    t("\\left"),
    i(1),
    t("\\right")
  }
),

s({trig = "("},
  {
    t("\\left("),
    i(1),
    t("\\right)")
  }
),

s({trig = "["},
  {
    t("\\left["),
    i(1),
    t("\\right]")
  }
),

s({trig = "\\{"},
  {
    t("\\left\\{"),
    i(1),
    t("\\right\\}")
  }
),

s({trig = "abrack"},
  {
    t("\\left\\langle "),
    i(1),
    t(" \\right\\rangle")
  }
),

s({trig = "abs"},
  {
    t("\\left|"),
    i(1),
    t("\\right|")
  }
),

s({trig = "floor"},
  {
    t("\\left\\lfloor "),
    i(1),
    t(" \\right\\rfloor")
  }
),

s({trig = "ceil"},
  {
    t("\\left\\lceil "),
    i(1),
    t(" \\right\\rceil")
  }
),

s({trig = "lopen"},
  {
    t("\\left("),
    i(1),
    t("\\right]")
  }
),

s({trig = "ropen"},
  {
   t("\\left["),
   i(1),
   t("\\right)")
  }
),

}
