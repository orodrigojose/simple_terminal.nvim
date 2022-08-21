if vim.g.loaded_my_awesome_plugin == 1 then
    return
end
vim.g.loaded_my_awesome_plugin = 1

require("simple_terminal").init()
