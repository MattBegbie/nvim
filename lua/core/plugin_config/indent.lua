require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    vim.cmd [[ highlight IndentBlanklineContextStart gui=underline cterm=underline]],
    vim.cmd [[ highlight IndendBlanklineCurr guibg=#c678dd gui=nocombine]], 
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = { "IndentBlanklineCurr" },
    -- vim.cmd [[ :hi CursorLine gui=underline cterm=underline ]]

}
