-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
  hi StatusLine guibg=NONE ctermbg=NONE
  hi TabLine guibg=NONE ctermbg=NONE
  hi NeoTreeNormal guibg=NONE ctermbg=NONE
  hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
]])

-- Optionally, make sure your terminal supports transparency
vim.opt.termguicolors = true
vim.g.mapleader = " "

-- Command-line abbreviation: '%%' becomes current file's directory on ':'
vim.cmd([[
  cnoreabbrev <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'
]])

-- Key mappings for editing in the same directory as the current file
vim.keymap.set("n", "<leader>ew", ":e %%", { noremap = true })
vim.keymap.set("n", "<leader>ev", ":vs %%", { noremap = true })
vim.keymap.set("n", "<leader>es", ":sp %%", { noremap = true })
vim.keymap.set("n", "<leader>et", ":tabe %%", { noremap = true })

-- Mapping to open netrw Explore
vim.keymap.set("n", "<leader>ed", ":Explore<CR>", { noremap = true, silent = true })
vim.api.nvim_set_hl(0, "LspInlayHint", { bg = "NONE", fg = "#888888", italic = true })
vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "NONE", fg = "#41c6f5", italic = true })
