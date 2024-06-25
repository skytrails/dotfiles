set termguicolors
lua << EOF
require'bufferline'.setup {
  options = {
    separator_style = "thin",
    always_show_bufferline = true,
    numbers = "buffer_id",
    show_buffer_icons = false, -- 显示文件类型图标
    show_buffer_close_icons = false, -- 显示关闭图标
    show_close_icon = true, -- 显示全局关闭图标
    show_tab_indicators = true, -- 显示 tab 指示器
  },
}
EOF

" 应用自定义背景色
highlight BufferLineFill guibg=#282c34
"highlight BufferLineBackground guibg=#073642 guifg=#657b83
highlight BufferLineBufferSelected guifg=#ffff00 gui=bold
highlight BufferLineSeparator guibg=#282c34 guifg=#073642
highlight BufferLineSeparatorSelected guibg=#268bd2 guifg=#FF0000 gui=bold
highlight BufferLineSeparatorVisible guibg=#268bd2 guifg=#073642

