" WIP Theme based off typewriter-vim's dark theme
" Name: sith.vim
" Version: 0.0
" Based On: logico/typewriter.vim and challenger-deep-theme/vim

" Credits:
" Original Inspiration: logico/typewriter.vim
" Code Formatting: challenger-deep-theme/vim

hi clear

if exists("syntax on")
  hi clear
  syntax reset
endif

let g:colors_name = "sith"
set background=dark

if ! exists("g:sith_enable_italics")
  let g:sith_enable_italics = 0
endif

if ! exists("g:sith_termcolors")
  let g:sith_termcolors = 256
endif

function! s:h(color)
  :for background in a:color.bgs
    execute "highlight" background
          \ "guibg="   (has_key(a:color, "color")    ? a:color.color   : "NONE")
  :endfor
  :for foreground in a:color.fgs
    execute "highlight" foreground
          \ "guifg="   (has_key(a:color, "color")    ? a:color.color   : "NONE")
  :endfor
endfunction

let s:black0 = {"color" : "#121212", "cterm": "0", "cterm16": "8",
      \"bgs" : ["Pmenu"],
      \"fgs" : ["VertSplit"]
      \}

let s:black1 = {"color" : "#1C1C1C", "cterm": 0, "cterm16": "8",
      \"bgs": ["CursorLine","ErrorMsg"],
      \"fgs": ["Search","IncSearch","PmenuSel"]}

let s:black2 = {"color" : "#211f1f", "cterm": 0, "cterm16": "8",
      \"bgs": ["Normal","markdownLinkText","mkdLink","Title","WildMenu","ModeMsg","MoreMsg","WarningMsg","VertSplit"],
      \"fgs": ["Visual","NonText"] }

let s:grey0 = {"color" : "#262626", "cterm": 0, "cterm16": "8",
      \"bgs": ["linenr", "CursorLineNR"],
      \"fgs": [] }

let s:grey1 = {"color" : "#303030", "cterm": 0, "cterm16": "8",
      \"bgs": ["ColorColumn"],
      \"fgs": [] }

let s:grey2 = {"color" : "#444444", "cterm": 0, "cterm16": "8",
      \"bgs": ["MatchParen"],
      \"fgs": ["linenr"] }

let s:grey3 = {"color" : "#4E4E4E", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Comment","javaScriptDocTags"] }

let s:grey4 = {"color" : "#6C6C6C", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Directory","String","jsStorageClass","jsObjectKey","jsObjectProp","jsFuncCall","markdownLinkDelimiter","markdownLinkTextDelimiter","mkdDelimiter","Statement","Label","Keyword","Exception","pugId","pugBegin","pugTop","pugIdChar","pugClassChar","pugAttributes","htmlTag"] }

let s:grey5 = {"color" : "#808080", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["PreProc","Include","Define","Macro","PreCondit","Function","Repeat","Conditional"] }

let s:grey6 = {"color" : "#949494", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Underlined","markdownUrl","mkdUrl"] }

let s:grey7 = {"color" : "#A8A8A8", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Type","StorageClass","Structure","Typedef","Operator"] }

let s:white0 = {"color" : "#BCBCBC", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Identifier","MatchParen"] }

let s:white1 = {"color" : "#D0D0D0", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Constant","Character","Number","jsObjectSeparator","Float","Boolean"] }

let s:white2 = {"color" : "#E4E4E4", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Normal","Title","htmlTagName", "CursorLineNR","WildMenu","ModeMsg","MoreMsg","SpecialKey","Pmenu","StartifyPath"] }

let s:white3 = {"color" : "#EEEEEE", "cterm": 0, "cterm16": "8",
      \"bgs": ["Cursor","iCursor","PmenuSel"],
      \"fgs": [] }

let s:red0 = {"color" : "#591d1d", "cterm": 0, "cterm16": "8",
      \"bgs": ["ExtraWhitespace"],
      \"fgs": [] }

let s:red1 = {"color" : "#930000", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Special","htmlTag","Tag","SpecialChar","Delimiter","SpecialComment","Debug"] }

let s:red2 = {"color" : "#af010a", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["Error"] }

let s:purple0 = {"color" : "#AF5FFF", "cterm": 0, "cterm16": "8",
      \"bgs": [],
      \"fgs": ["TODO"] }

let s:skyblue0 = {"color" : "#AFD7FF", "cterm": 0, "cterm16": "8",
      \"bgs": ["Search","Visual"],
      \"fgs": [] }

let s:green0 = {"color" : "#87FFAF", "cterm": 0, "cterm16": "8",
      \"bgs": ["IncSearch"],
      \"fgs": ["WarningMsg","ErrorMsg"] }

call s:h(s:black0)
call s:h(s:black1)
call s:h(s:black2)

call s:h(s:grey0)
call s:h(s:grey1)
call s:h(s:grey2)
call s:h(s:grey3)
call s:h(s:grey4)
call s:h(s:grey5)
call s:h(s:grey6)
call s:h(s:grey7)

call s:h(s:white0)
call s:h(s:white1)
call s:h(s:white2)
call s:h(s:white3)

call s:h(s:red0)
call s:h(s:red1)
call s:h(s:red2)

call s:h(s:purple0)
call s:h(s:skyblue0)
call s:h(s:green0)

" hi Normal          ctermfg=254 ctermbg=235  guifg=#E4E4E4 guibg=#211f1f
" hi Title           ctermfg=254 ctermbg=235  guifg=#E4E4E4 guibg=#211f1f term=bold cterm=bold
" hi Special         ctermfg=250 ctermbg=NONE guifg=#930000 guibg=NONE
" hi Comment         ctermfg=239 ctermbg=NONE guifg=#4E4E4E guibg=NONE cterm=italic
" hi Constant        ctermfg=252 ctermbg=NONE guifg=#D0D0D0 guibg=NONE
" hi Directory        ctermfg=252 ctermbg=NONE guifg=#6C6C6C guibg=NONE
" hi String          ctermfg=242 ctermbg=NONE guifg=#6C6C6C guibg=NONE
" hi Number          ctermfg=252 ctermbg=NONE guifg=#D0D0D0 guibg=NONE
" hi htmlTagName     ctermfg=254 ctermbg=NONE guifg=#E4E4E4 guibg=NONE
" hi Identifier      ctermfg=250 ctermbg=NONE guifg=#BCBCBC guibg=NONE
" hi Statement       ctermfg=242 ctermbg=NONE guifg=#6C6C6C guibg=NONE cterm=NONE
" hi Boolean         ctermfg=252 ctermbg=NONE guifg=#D0D0D0 guibg=NONE cterm=NONE
" hi PreProc         ctermfg=244 ctermbg=NONE guifg=#808080 guibg=NONE
" hi Type            ctermfg=248 ctermbg=NONE guifg=#A8A8A8 guibg=NONE
" hi Function        ctermfg=244 ctermbg=NONE guifg=#808080 guibg=NONE cterm=italic
" hi Repeat          ctermfg=244 ctermbg=NONE guifg=#808080 guibg=NONE
" hi Operator        ctermfg=248 ctermbg=NONE guifg=#A8A8A8 guibg=NONE
" hi Error           ctermfg=9   ctermbg=NONE guifg=#FF0000 guibg=NONE
" hi TODO            ctermfg=135 ctermbg=NONE guifg=#AF5FFF guibg=NONE cterm=italic
" hi linenr          ctermfg=238 ctermbg=235  guifg=#444444 guibg=#262626 term=bold cterm=bold

" hi CursorLine      ctermfg=254 ctermbg=NONE guifg=NONE guibg=#1e1c1c
" hi CursorLineNR    ctermfg=254 ctermbg=235  guifg=#E4E4E4 guibg=#262626 term=bold cterm=bold gui=bold
" hi Search          ctermfg=234 ctermbg=153  guifg=#1C1C1C guibg=#AFD7FF term=bold cterm=bold gui=bold
" hi IncSearch       ctermfg=234 ctermbg=121  guifg=#1C1C1C guibg=#87FFAF term=bold cterm=bold gui=bold
" hi WildMenu        ctermfg=254 ctermbg=235  guifg=#E4E4E4 guibg=#211f1f

" Messages
" hi ModeMsg         ctermfg=254 ctermbg=235  guifg=#E4E4E4 guibg=#211f1f
" hi MoreMsg         ctermfg=254 ctermbg=235  guifg=#E4E4E4 guibg=#211f1f
" hi WarningMsg      ctermfg=202 ctermbg=235  guifg=#FF5F00 guibg=#211f1f
" hi ErrorMsg        ctermfg=197 ctermbg=234  guifg=#FF005F guibg=#1C1C1C term=italic cterm=italic

" hi Visual          ctermfg=235 ctermbg=153  guifg=#211f1f guibg=#AFD7FF
" hi SpecialKey      ctermfg=254 ctermbg=NONE guifg=#E4E4E4 guibg=NONE
" hi NonText         ctermfg=238 ctermbg=NONE guifg=#E4E4E4 guibg=NONE
" hi ExtraWhitespace             ctermbg=115                guibg=#591d1d
" hi MatchParen      ctermfg=250 ctermbg=238  guifg=#BCBCBC guibg=#444444 cterm=bold
" hi Pmenu           ctermfg=254 ctermbg=233  guifg=#E4E4E4 guibg=#121212
" hi PmenuSel        ctermfg=234 ctermbg=255  guifg=#1C1C1C guibg=#EEEEEE
" hi VertSplit       ctermfg=233 ctermbg=235  guifg=#121212 guibg=#211f1f
" hi ColorColumn                 ctermbg=236                guibg=#303030
" hi Underlined      ctermfg=245 ctermbg=NONE guifg=#949494 cterm=underline term=underline gui=underline

match ExtraWhitespace /\s\+$/

" hi link character	constant
" hi link number	        constant
" hi link boolean	        constant
" hi link Float		Number
" hi link Conditional	Repeat
" hi link Label		Statement
" hi link Keyword	        Statement
" hi link Exception	Statement
" hi link Include	        PreProc
" hi link Define	        PreProc
" hi link Macro		PreProc
" hi link PreCondit	PreProc
" hi link StorageClass	Type
" hi link Structure	Type
" hi link Typedef	        Type
" hi link htmlTag	        Special
" hi link Tag		Special
" hi link SpecialChar	Special
" hi link Delimiter	Special
" hi link SpecialComment  Special
" hi link Debug		Special


autocmd BufNewFile,BufRead *.ts highlight Structure guifg=#af010a
