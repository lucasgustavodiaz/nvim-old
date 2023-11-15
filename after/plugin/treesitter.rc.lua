local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "json",
    "css",
    "html",
    "lua",
    "astro",
    "scss",
    "javascript",
    "markdown",
    "markdown_inline",
    "typescript"
  },
  auto_install = true,
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
