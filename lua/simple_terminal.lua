local simple_terminal = {}

local function create_command()
    vim.api.nvim_create_user_command('STerminal', function(params)
        simple_terminal.showTerminal(params.args)
    end, { nargs = 1 })
end

local function error_callback()
    local errors = {}
    if not terminal then
        table.insert(errors, 'ERROR: Invalid argument to make terminal!')
    end
    if not shell and type(shell) ~= 'string' then
        table.insert(errors, 'ERRROR: Shell is not defined or set incorrectly, plesase define with "vim.g.simple_terminal_shell" or "let g:simple_terminal_shell"')
    end
    if not vsize and type(vsize) ~= 'number' or not size and type(size) ~= 'numgber' then
        table.insert(errors, 'ERROR: Size is not defined or set incorreclty, please define with "let g:simple_terminal_shell"')
    end

    if #errors > 0 then
        return errors
    end
    return false
end

function simple_terminal.showTerminal(typeTerm)
    shell = vim.g.simple_terminal_shell
    vsize = vim.g.simple_terminal_vertical_size or 10
    size = vim.g.simple_terminal_horizontal_size or 6

    typeTerminals = {
        left =   'set splitright! | vsplit term://'..shell..' | vertical resize '..vsize,
        right =  'set splitright  | vsplit term://'..shell..' | vertical resize '..vsize,
        top =    'set splitbelow! | split  term://'..shell..' | resize '..size,
        bottom = 'set splitbelow  | split  term://'..shell..' | resize '..size,
    }
    terminal = typeTerminals[typeTerm]

    local errorCallback = error_callback()

    if errorCallback then
        for err=1, #errorCallback do
            print(errorCallback[err])
        end
        return
    end

    vim.api.nvim_command(terminal..' | set nonu signcolumn=no')
end

function simple_terminal.init()
    create_command()
end

return simple_terminal
