" Vim color file - bumpy
" Generated by http://bytefluent.com/vivify 2013-05-02
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "bumpy"

hi IncSearch guifg=#26292c guibg=#f6f6f6 guisp=#f6f6f6 gui=NONE ctermfg=236 ctermbg=255 cterm=NONE
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Typedef guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Title guifg=#f8f8f8 guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Folded guifg=#798188 guibg=#26292c guisp=#26292c gui=NONE ctermfg=66 ctermbg=236 cterm=NONE
hi PreCondit guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Include guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Float guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#f8f8f8 guibg=#636567 guisp=#636567 gui=NONE ctermfg=15 ctermbg=241 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#7a8288 guibg=#313336 guisp=#313336 gui=NONE ctermfg=66 ctermbg=237 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#f8f8f8 guibg=#204a87 guisp=#204a87 gui=bold ctermfg=15 ctermbg=24 cterm=bold
hi ErrorMsg guifg=#f8f8f8 guibg=#aa2915 guisp=#aa2915 gui=NONE ctermfg=15 ctermbg=124 cterm=NONE
"hi Ignore -- no settings --
hi Debug guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#3b3e40 guisp=#3b3e40 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Identifier guifg=#f6f080 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Conditional guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#f6f080 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi Todo guifg=#798188 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Special guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi LineNr guifg=#8f9192 guibg=#3b3e40 guisp=#3b3e40 gui=NONE ctermfg=246 ctermbg=238 cterm=NONE
hi StatusLine guifg=#f8f8f8 guibg=#636567 guisp=#636567 gui=bold ctermfg=15 ctermbg=241 cterm=bold
hi Normal guifg=#f8f8f8 guibg=#26292c guisp=#26292c gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
hi Label guifg=#f6f6f6 guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=NONE guibg=#3c3f42 guisp=#3c3f42 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Search guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Statement guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#798188 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Character guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi Number guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Boolean guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Operator guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#3b3e40 guisp=#3b3e40 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
hi WarningMsg guifg=#f8f8f8 guibg=#aa2915 guisp=#aa2915 gui=NONE ctermfg=15 ctermbg=124 cterm=NONE
"hi VisualNOS -- no settings --
hi DiffDelete guifg=#8b0809 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
"hi ModeMsg -- no settings --
hi CursorColumn guifg=NONE guibg=#3b3e40 guisp=#3b3e40 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Define guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Function guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
"hi FoldColumn -- no settings --
hi PreProc guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=NONE guibg=#3c3f42 guisp=#3c3f42 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guifg=#636567 guibg=#636567 guisp=#636567 gui=NONE ctermfg=241 ctermbg=241 cterm=NONE
hi Exception guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Keyword guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Type guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#f8f8f8 guibg=#233a5a guisp=#233a5a gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
hi Cursor guifg=#26292c guibg=#646769 guisp=#646769 gui=NONE ctermfg=236 ctermbg=242 cterm=NONE
"hi SpellLocal -- no settings --
"hi Error -- no settings --
hi PMenu guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#7a8288 guibg=#3b3e40 guisp=#3b3e40 gui=NONE ctermfg=66 ctermbg=238 cterm=NONE
hi Constant guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi String guifg=#c5edab guibg=NONE guisp=NONE gui=italic ctermfg=193 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#8f9192 guisp=#8f9192 gui=NONE ctermfg=NONE ctermbg=246 cterm=NONE
hi MatchParen guifg=#fa9a4b guibg=NONE guisp=NONE gui=underline ctermfg=215 ctermbg=NONE cterm=underline
"hi LocalVariable -- no settings --
hi Repeat guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi Structure guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Macro guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi DiffAdd guifg=#f8f8f8 guibg=#46830e guisp=#46830e gui=bold ctermfg=15 ctermbg=64 cterm=bold
"hi TabLine -- no settings --
hi htmlarg guifg=#b7d877 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi javascriptfunction guifg=#f6f080 guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi cssfunctionname guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi erubycomment guifg=#798188 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyrailsarmethod guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi htmlspecialchar guifg=#f1e94b guibg=NONE guisp=NONE gui=NONE ctermfg=227 ctermbg=NONE cterm=NONE
hi rubyexception guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi csscommonattr guifg=#b7d877 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi rubyescape guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi rubyfunction guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyrailsuserclass guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
"hi cssbraces -- no settings --
hi rubyglobalvariable guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#b7d877 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi rubyblockparameter guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi erubyrailsmethod guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi javascriptrailsfunction guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
"hi javascriptbraces -- no settings --
hi rubyregexpdelimiter guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi csscolor guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi rubyconstant guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyrailsmethod guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
"hi erubydelimiter -- no settings --
hi rubypseudovariable guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyrailsarassociationmethod guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyrailsrendermethod guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
"hi rubyinterpolationdelimiter -- no settings --
hi rubyclassvariable guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi htmltag guifg=#b7d877 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi yamlalias guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi csspseudoclassid guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi colorcolumn guifg=NONE guibg=#3b3e40 guisp=#3b3e40 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi cssvaluelength guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi rubystringdelimiter guifg=#f6f6f6 guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi yamldocumentheader guifg=#f6f6f6 guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi yamlanchor guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#ffb454 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#b8d977 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
hi cssurl guifg=#fb9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi rubyinclude guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi cssclassname guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi yamlkey guifg=#72aaca guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyoperator guifg=#fa9a4b guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
"hi clear -- no settings --
hi htmlendtag guifg=#b7d877 guibg=NONE guisp=NONE gui=NONE ctermfg=150 ctermbg=NONE cterm=NONE
