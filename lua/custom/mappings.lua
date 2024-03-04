---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- format with lsp
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "Format"
    },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "Format",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

return M
