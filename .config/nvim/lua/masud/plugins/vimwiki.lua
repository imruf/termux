return {
  "vimwiki/vimwiki",
    init = function() 
        vim.g.vimwiki_list = {
            {
            path = '~/.config/vimwiki',
            syntax = 'markdown',
            ext = '.md',
            },
        }
    end,
}
