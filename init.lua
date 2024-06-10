require("ashigo.core")
require("ashigo.lazy")

-- add go templates inside helm.yaml files
vim.cmd([[
  augroup yaml_go_template
    autocmd!
    autocmd BufNewFile,BufRead *.yaml setlocal filetype=helm
    autocmd FileType helm setlocal syntax=yaml_go_template
  augroup END
]])
