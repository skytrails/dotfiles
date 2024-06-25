
" Basic configuration for telescope.nvim
lua << EOF
local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-q>"] = require('telescope.actions').send_to_qflist + require('telescope.actions').open_qflist,
      },
      n = {
        ["<C-q>"] = require('telescope.actions').send_selected_to_qflist + require('telescope.actions').open_qflist,
      },
    },
  },
}


-- 设置 telescope
telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  },
}

-- 搜索当前光标下的单词
function SearchCurrentWord()
  builtin.grep_string({ search = vim.fn.expand("<cword>") })
end
EOF

" Optional: Create keybindings for telescope functions
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<CR>


