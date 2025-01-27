require("config")

vim.api.nvim_set_hl(0, "Normal", { bg = "#111111"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#111111"})

vim.diagnostic.config({ virtual_text = true })
