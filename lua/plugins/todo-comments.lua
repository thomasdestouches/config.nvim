-- Highlight todo, notes, etc in comments
return {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        signs = false,
    },
    keys = {
        {
            '<leader>st',
            ':TodoTelescope<CR>',
            desc = '[S]earch [T]odo comments',
        },
        -- TODO: keybindings for jump_next & jump_previous?
    },
}
