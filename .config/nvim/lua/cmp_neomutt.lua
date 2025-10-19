local source = {}

-- Update this path to match your alias file(s)
local alias_files = {
  "~/.config/neomutt/contacts"
}

-- Parses alias lines into { label = "...", insertText = "..." }
local function parse_aliases()
  local items = {}
  for _, file in ipairs(alias_files) do
    local path = vim.fn.expand(file)
    local f = io.open(path, "r")
    if f then
      for line in f:lines() do
        local name, address = line:match("^%s*alias%s+(%S+)%s+(.+)$")
        if name and address then
          local entry = {
            label = name .. " → " .. address,
            -- insertText = name .. " <" .. address .. ">",
            insertText = address,
            kind = 3,  -- 3 = Function (you can use different icons)
          }
          table.insert(items, entry)
        end
      end
      f:close()
    end
  end
  return items
end

-- Called when completion is triggered
function source:complete(_, callback)
  local items = parse_aliases()
  callback({ items = items, isIncomplete = false })
end

function source:is_available()
  -- return true  -- or add logic to restrict to certain filetypes
  -- local ft = vim.bo.filetype
  -- return ft == "mail" or ft == "markdown" or ft == "text"
  --
  local name = vim.api.nvim_buf_get_name(0)
  return name:match("neomutt")
end

function source:get_debug_name()
  return "neomutt_aliases"
end

return source

