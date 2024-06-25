" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged

" 初始化插件管理器 (例如 vim-plug)
source ~/.config/nvim/vim/plugins.vim

" 基本设置
source ~/.config/nvim/vim/settings.vim


" LSP 设置
"source ~/.config/nvim/vim/lsp.vim

" 其他插件配置
source ~/.config/nvim/vim/plugins/telescope.vim
source ~/.config/nvim/vim/plugins/bufferline.vim
"source ~/.config/nvim/vim/plugins/lazygit.vim

" 自动管理和更新标签文件
let g:gutentags_project_root = ['.git', '.hg', '.svn', '.project']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_extra_args = ['--fields=+l', '--c++-kinds=+p', '--c-kinds=+p']

" 禁用 gutentags 自动生成和管理标签文件时的消息
let g:gutentags_silent = 1

" 启用 vim-airline
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
"
" " 启用扩展
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#ale#enabled = 1

" 配置 coc.nvim
let g:coc_global_extensions = ['coc-clangd']

let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c", "cpp", "python", "javascript", "lua", "go", "rust", "html", "css", "json"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremectal = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
  fold = {
    enable = true
  }
}
EOF

source ~/.config/nvim/vim/mappings.vim
