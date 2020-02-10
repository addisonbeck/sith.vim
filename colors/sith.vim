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

match ExtraWhitespace /\s\+$/
autocmd BufNewFile,BufRead *.ts highlight Structure guifg=#af010a
