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

    -- code action with lsp
    ["<leader>la"] = {
      vim.lsp.buf.code_action,
      "Code Action"
    },

    -- rename with lsp
    ["<leader>lr"] = {
      vim.lsp.buf.rename,
      "Rename"
    },

    -- signature help with lsp
    ["<leader>lk"] = {
      vim.lsp.buf.signature_help,
      "Signature Help"
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
