local ns = vim.api.nvim_create_namespace("forbidden_words_diagnostics")
local forbidden_words = {
  "TRIVIAL",
  "CLEAR",
  "OBVIOUS",
  "EVIDENT",
}

local function check_forbidden_words(bufnr)
    local diagnostics = {}
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
    for lnum, line in ipairs(lines) do
        local lower_line = line:lower()
        for _, word in ipairs(forbidden_words) do
            local lower_word = word:lower()
            local start_col, end_col = lower_line:find(lower_word)
            if start_col then
                table.insert(diagnostics, {
                    lnum = lnum - 1,  -- 0-indexed
                    col = start_col - 1,
                    end_col = end_col,
                    severity = vim.diagnostic.severity.ERROR,
                    source = "ForbiddenWords",
                    message = "DON'T BE LAZY: " .. word
                })
            end
        end
    end

    vim.diagnostic.set(ns, bufnr, diagnostics, {})
end

vim.api.nvim_create_autocmd({
  "BufReadPost",
  "BufWritePost",
  "TextChanged",
  --"TextChangedI",
  --"TextChangedP"
}, {
    callback = function(args)
        check_forbidden_words(args.buf)
    end
})


