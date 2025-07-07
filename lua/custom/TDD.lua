function OpenJSAndTest(file)
    if file:match '%.([jt]sx?)$' == nil then
        error 'This command requires a js/ts/jsx/tsx file'
    end

    if file:match '%.test%.' ~= nil then
        error 'test files not supported'
    end

    vim.cmd('edit ' .. file)

    if vim.fn.winnr '$' > 1 then
        vim.cmd 'only'
    end

    local test_file = file:gsub('%.([jt]sx?)$', '.test.%1')

    vim.cmd('vsplit ' .. test_file)
    vim.cmd 'wincmd h'
end

vim.cmd "command! -nargs=1 -complete=file TDD lua OpenJSAndTest('<args>')"
