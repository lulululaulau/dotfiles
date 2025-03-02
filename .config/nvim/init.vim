let config_dir = stdpath('config')

execute 'source ' . config_dir . '/config/vars.vim'

execute 'source ' . config_dir . '/config/plugins.vim'

execute 'source ' . config_dir . '/config/colors.vim'

execute 'source ' . config_dir . '/config/luasnip.vim'

execute 'source ' . config_dir . '/config/vimtex.vim'

execute 'source ' . config_dir . '/config/statusline.vim'

execute 'source ' . config_dir . '/config/swarm.vim'

lua require('typst')

lua require('cmp_config')

lua require('linter')

lua require('lsp')
