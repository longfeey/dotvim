" this is the bare minimum
let g:dotvim_settings = {}
let g:dotvim_settings.version = 2

" here are some basic customizations, please refer to the top of the vimrc file for all possible options
let g:dotvim_settings.default_indent = 4
let g:dotvim_settings.max_column = 80
"let g:dotvim_settings.colorscheme = 'my_awesome_colorscheme'

" by default, language specific plugins are not loaded.  this can be changed with the following:
let g:dotvim_settings.plugin_groups_exclude = ['ruby','python']

" if there are groups you want always loaded, you can use this:
" let g:dotvim_settings.plugin_groups_include = ['go']

" alternatively, you can set this variable to load exactly what you want
"let g:dotvim_settings.plugin_groups = ['core','web']
let g:dotvim_settings.plugin_groups = ['core', 'unite', 'navigation', 'scm', 'autocomplete', 'editing', 'misc', 'indents', 'c_cplus', 'go']

" if there is a particular plugin you don't like, you can define this variable to disable them entirely
let g:dotvim_settings.disabled_plugins=['vim-foo','vim-bar']

" finally, load the distribution
source ~/.vim/vimrc

" anything defined here are simply overrides
set wildignore+=\*/node_modules/\*
set guifont=Wingdings:h10
