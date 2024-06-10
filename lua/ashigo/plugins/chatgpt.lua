-- lua/plugins/chatgpt.lua
local M = {}

-- Define roles
-- Function to set the role
function M.set_role(role)
  local prompt = "You are a helpful assistant."
  vim.g.chatgpt_role = prompt
end

local home = "/Users/igorsheykin"

M.setup = function()
  require("chatgpt").setup({
    api_key_cmd = "cat " .. home .. "/.config/.openai_api_key.txt",
    -- other configuration options
  })

  -- Key mapping to open ChatGPT interface
  vim.api.nvim_set_keymap("n", "<leader>cg", ":ChatGPT<CR>", { noremap = true, silent = true })
end

return {
  {
    "jackMort/ChatGPT.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = M.setup,
  },
}
