" 设置快捷键
let mapleader=','
imap jj <esc>
nnoremap <F4> :edit $MYVIMRC<CR>
nnoremap <leader>, :LazyGit<CR>
" 将 <leader>sv 映射为源 .vimrc 文件
nnoremap <F3> :source $MYVIMRC<CR>
nnoremap <leader>3 :source $MYVIMRC<CR>
nnoremap <leader>4 :edit $MYVIMRC<CR>
" 使用 <Tab> 插入或展开片段
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-j> coc#expandableOrJumpable() ? "\<Plug>(coc-snippets-expand-jump)" : "\<C-j>"

" 键映射
nnoremap <space><space> :copen<cr>
nnoremap <space>o :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>o :lua require('telescope.builtin').find_files()<CR>
nnoremap <space>f :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>f :lua require('telescope.builtin').live_grep()<CR>
nnoremap <space>b :lua require('telescope.builtin').buffers()<CR>
nnoremap <space>F :lua SearchCurrentWord()<CR>
nnoremap <leader>F :lua SearchCurrentWord()<CR>

" coc-format
nnoremap <silent> <leader>F <Plug>(coc-format-selected)<CR>
nnoremap <silent> zz <Plug>(coc-format-selected)<CR>
nnoremap <silent> <leader>cf :CocCommand editor.action.formatDocument<CR>

" coc-define
nmap <silent> <c-]> <Plug>(coc-definition)
nnoremap <silent> <space>r <Plug>(coc-references)

"nnoremap gN :tabnext<CR>
"nnoremap gP :tabpre<CR>
"nnoremap gn :tabnext<CR>
"nnoremap gp :tabpre<CR>
nnoremap gN :bn<CR>
nnoremap gP :bp<CR>
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap <leader>h <c-w>h<CR>
nnoremap <leader>j <c-w>j<CR>
nnoremap <leader>k <c-w>k<CR>
nnoremap <leader>l <c-w>l<CR>
let g:rainbow_active = 1
nnoremap <leader>e :tabnew<CR>
nnoremap <silent> <leader>T :CocCommand explorer<CR>
"nnoremap <silent> <leader>T :NERDTreeFind<CR>
nnoremap <leader>t :CocOutline<CR>
nnoremap <leader>a :A<CR>
" floaterm
tnoremap <silent> <c-z> <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <leader>z :FloatermToggle<CR>
nnoremap <silent> <leader>c :FloatermNew<CR>
tnoremap <silent> <c-x> <C-\><C-n>:FloatermKill<CR>

" 为 hop.nvim 配置快捷键
lua << EOF
require'hop'.setup()
EOF
nnoremap <silent> <space>w :HopWord<CR>
nnoremap <silent> <space>l :HopLine<CR>
"nnoremap <silent> <space>f :HopChar1<CR>
"nnoremap <silent> <space>s :HopChar2<CR>
