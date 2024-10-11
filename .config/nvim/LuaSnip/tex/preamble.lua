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

s({trig = "defaults"},
  {
    t({"\\documentclass[11pt]{article}"}),
    t({"\\usepackage{graphicx}", ""}),
    t({"\\usepackage[margin = 1in]{geometry}", ""}),
    t({"\\usepackage{amssymb}", ""}),
    t({"\\usepackage{amsmath}", ""}),
    t({"\\usepackage{fancyhdr}", ""}),
    t({"\\usepackage{lastpage}", ""}),
    t({"\\usepackage{titling}", ""}),
    t({"\\usepackage{biblatex}", ""}),
    t({"\\usepackage{asymptote}", "", ""}),
    t({"\\usepackage{hyperref}", ""}),
    t({"\\setlength{\\droptitle}{-1in}", "", ""}),
    t({"\\pagestyle{fancy}", "\\lhead{"}),
    i(1),
    t({"}", "\\chead{"}),
    i(2),
    t({"}", "\\rhead{"}),
    i(3),
    t({"}", "\\lfoot{"}),
    i(4),
    t({"}", "\\cfoot{"}),
    i(5),
    t({"}", "\\rfoot{"}),
    i(6),
    t({"}", "", ""}),
    t("\\title{"),
    i(7),
    t({"}", "\\author{"}),
    i(8, "Lewis Lau"),
    t({"}", "\\date{"}),
    i(9),
    t({"}", ""})
  }
),



s({trig = "packages"},
  {
    t({"\\usepackage{graphicx}", ""}),
    t({"\\usepackage[margin = 1in]{geometry}", ""}),
    t({"\\usepackage{amssymb}", ""}),
    t({"\\usepackage{amsmath}", ""}),
    t({"\\usepackage{fancyhdr}", ""}),
    t({"\\usepackage{lastpage}", ""}),
    t({"\\usepackage{titling}", ""}),
    t({"\\usepackage{biblatex}", ""}),
    t({"\\usepackage{asymptote}", ""}),
    t({"\\usepackage{hyperref}", ""}),
  }
),

s({trig = "pg a of b"},
  {
    t("\\thepage\\ of~\\pageref*{LastPage}")
  }
),

s({trig = "pg a"},
  {
    t("\\thepage")
  }
),

s({trig = "fancyhdr"},
  {
    t({"\\pagestyle{fancy}", "\\lhead{"}),
    i(1),
    t({"}", "\\chead{"}),
    i(2),
    t({"}", "\\rhead{"}),
    i(3),
    t({"}", "\\lfoot{"}),
    i(4),
    t({"}", "\\cfoot{"}),
    i(5),
    t({"}", "\\rfoot{"}),
    i(6),
    t({"}", ""})
  }
),

s({trig = "title"},
  {
    t("\\title{"),
    i(1),
    t({"}", "\\author{"}),
    i(2, "Lewis Lau"),
    t({"}", "\\date{"}),
    i(3),
    t({"}", ""})
  }
),


}

