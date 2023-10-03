local dart = require 'languages.dart'
local typescript = require 'languages.typescript'
local json = require 'languages.json'
local markdown = require 'languages.markdown'
local yaml = require 'languages.yaml'
local languages = { dart, typescript, json, markdown, yaml }

local treesitter = {}
for _, v in pairs(languages) do
  for _, treesit_language in pairs(v.treesitter) do
    table.insert(treesitter, treesit_language)
  end
end

local mason = {}
local settings = {}
for _, v in pairs(languages) do
  if v.lsp.use == "mason" then
    mason = vim.tbl_deep_extend("keep", mason, v.lsp.mason)
  else
    settings = vim.tbl_deep_extend("keep", settings, v.lsp.settings)
  end
end

return {
  treesitter = treesitter,
  mason = mason,
  settings = settings
}
