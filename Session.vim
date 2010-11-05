let SessionLoad = 1
if &cp | set nocp | endif
map 	 
vmap  :call Toggle()
nmap  :call Toggle()
map ; :
map Q gq
map UU :call UnComment()
vmap [% [%m'gv``
map \s :call Spacify()
map \ac :call Comment(";") " asterisk config comment
map \rc :call Comment("r") " batch file comment
map \bc :call Comment("r") " batch file comment
map \vc :call Comment("\"") " vim comment
map \jc :call Comment("/") " javascript comment
map \sc :call Comment("-") " sql comment
map \mc :call Comment("*") " C-type multi-line comment
map \hc :call Comment("!") " html comment
map \pc :call Comment("#") " p* language comment
map \cc :call FComment()
vmap ]% ]%m'gv``
vmap a% [%v]%
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
map s :w!
map zz 
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
imap  :call Toggle()
iabbr inject inject( ) do |memo, nxt|endF)bi
iabbr each each do ||endk$i
iabbr if if end<Up>
iabbr def def end<Up>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set ruler
set shiftwidth=2
set softtabstop=2
set spelllang=en_us
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set tabstop=2
set tags=./tags,./TAGS,tags,TAGS,~/ctags/tags,~/ctags/java.tags
set timeoutlen=500
set wildmenu
set wildmode=list:longest,full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/bnl
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +13 lib/bnl/dsl.treetop
badd +5 lib/bnl/dsl.rb
badd +38 spec/execute_spec.rb
badd +77 spec/bnl_spec.rb
badd +1 lib/bnl/orm.rb
badd +4 spec/fixtures.rb
badd +0 spec/action_item_spec.rb
badd +1 spec/klass_spec.rb
args lib/bnl/dsl.treetop lib/bnl/dsl.rb spec/execute_spec.rb
edit lib/bnl/orm.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 1resize ' . ((&columns * 139 + 139) / 279)
exe '2resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 139 + 139) / 279)
exe '3resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 3resize ' . ((&columns * 139 + 139) / 279)
exe '4resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 4resize ' . ((&columns * 139 + 139) / 279)
exe '5resize ' . ((&lines * 15 + 38) / 77)
exe 'vert 5resize ' . ((&columns * 139 + 139) / 279)
exe '6resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 6resize ' . ((&columns * 139 + 139) / 279)
exe '7resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 7resize ' . ((&columns * 139 + 139) / 279)
argglobal
edit lib/bnl/orm.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/haml-2.2.23/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/haml-2.2.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/highline-1.5.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/hoe-2.6.0/lib,~/.rvm/gems/ruby-1.8.
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
5
normal zo
7
normal zo
8
normal zo
12
normal zo
16
normal zo
20
normal zo
24
normal zo
25
normal zo
26
normal zo
25
normal zo
36
normal zo
24
normal zo
20
normal zo
7
normal zo
44
normal zo
45
normal zo
49
normal zo
51
normal zo
49
normal zo
58
normal zo
44
normal zo
65
normal zo
66
normal zo
70
normal zo
65
normal zo
75
normal zo
76
normal zo
80
normal zo
81
normal zo
80
normal zo
86
normal zo
91
normal zo
94
normal zo
98
normal zo
94
normal zo
91
normal zo
75
normal zo
101
normal zo
102
normal zo
106
normal zo
101
normal zo
5
normal zo
112
normal zo
113
normal zo
112
normal zo
let s:l = 10 - ((3 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 06l
wincmd w
argglobal
edit lib/bnl/dsl.treetop
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'treetop'
setlocal filetype=treetop
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'treetop'
setlocal syntax=treetop
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
4,10fold
12,14fold
16,25fold
27,29fold
31,33fold
35,37fold
39,41fold
43,45fold
47,49fold
51,53fold
55,57fold
59,61fold
63,65fold
67,69fold
71,73fold
75,77fold
79,81fold
83,85fold
2,86fold
1,87fold
1
normal zo
2
normal zo
4
normal zo
12
normal zo
16
normal zo
27
normal zo
31
normal zo
35
normal zo
39
normal zo
43
normal zo
47
normal zo
51
normal zo
55
normal zo
59
normal zc
63
normal zc
67
normal zc
71
normal zc
75
normal zc
79
normal zc
83
normal zc
2
normal zo
1
normal zo
let s:l = 13 - ((12 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 033l
wincmd w
argglobal
3argu
edit lib/bnl/dsl.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.6.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
4
normal zo
5
normal zo
412
normal zo
490
normal zo
412
normal zo
503
normal zo
505
normal zo
507
normal zo
505
normal zo
514
normal zo
503
normal zo
537
normal zo
613
normal zo
615
normal zo
617
normal zo
615
normal zo
624
normal zo
613
normal zo
714
normal zo
716
normal zo
718
normal zo
716
normal zo
726
normal zo
730
normal zo
737
normal zo
740
normal zo
747
normal zo
750
normal zo
757
normal zo
758
normal zo
757
normal zo
747
normal zo
737
normal zo
769
normal zo
776
normal zo
726
normal zo
782
normal zo
714
normal zo
794
normal zo
796
normal zo
798
normal zo
796
normal zo
806
normal zo
813
normal zo
816
normal zo
823
normal zo
813
normal zo
794
normal zo
861
normal zo
862
normal zo
866
normal zo
861
normal zo
878
normal zo
880
normal zo
882
normal zo
880
normal zo
894
normal zo
895
normal zo
894
normal zo
904
normal zo
911
normal zo
917
normal zo
920
normal zo
921
normal zo
920
normal zo
917
normal zo
931
normal zo
938
normal zo
942
normal zo
938
normal zo
911
normal zo
951
normal zo
955
normal zo
878
normal zo
968
normal zo
970
normal zo
972
normal zo
970
normal zo
979
normal zo
968
normal zo
5
normal zo
1066
normal zo
4
normal zo
let s:l = 494 - ((68 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
494
normal! 010l
wincmd w
argglobal
3argu
edit spec/bnl_spec.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.6.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
4
normal zo
5
normal zo
10
normal zo
10
normal zc
33
normal zo
35
normal zo
41
normal zo
45
normal zo
51
normal zo
55
normal zo
65
normal zo
69
normal zo
74
normal zo
86
normal zo
33
normal zo
5
normal zo
4
normal zo
let s:l = 82 - ((8 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
82
normal! 022l
wincmd w
argglobal
3argu
edit spec/klass_spec.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.4.6/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.4.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.8/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.8/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activemodel-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.2.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-1.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-1.0.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.8/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/datamapper-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-active_model-1.0.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-do-adapter-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-observer-1.0.2/li
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
4
normal zo
5
normal zo
14
normal zo
5
normal zo
4
normal zo
let s:l = 12 - ((11 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 026l
wincmd w
argglobal
3argu
edit spec/action_item_spec.rb
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.4.6/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.4.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.8/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.8/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activemodel-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-3.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.2.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-1.0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-1.0.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.8/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/datamapper-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-active_model-1.0.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-do-adapter-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-1.0.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-observer-1.0.2/li
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
5
normal zo
5
normal zo
6
normal zo
13
normal zo
5
normal zo
5
normal zo
let s:l = 11 - ((4 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 025l
wincmd w
argglobal
3argu
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/json_pure-1.2.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/unindent-0.9/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/bin,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby/1.8/i686-linux,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8,~/.rvm/rubies/ruby-1.8.7-p249/lib/ruby/1.8/i686-linux,,~/.rvm/gems/ruby-1.8.7-p249/gems/MP4Info-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ParseTree-3.0.5/test,~/.rvm/gems/ruby-1.8.7-p249/gems/Rack-2.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/RubyInline-3.8.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/ZenTest-4.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionmailer-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/actionpack-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activerecord-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activeresource-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/activesupport-2.3.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/addressable-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/arel-0.3.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/awesome_print-0.1.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bcrypt-ruby-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.20/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/bundler-0.9.24/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/chronic-0.2.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/colored-1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/columnize-0.3.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/crack-0.1.7/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/daemons-1.0.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/data_objects-0.10.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-aggregates-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-constraints-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-core-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-migrations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-serializer-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-sweatshop-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-timestamps-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-types-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/dm-validations-0.10.2/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/do_sqlite3-0.10.1.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/erubis-2.6.5/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/eventmachine-0.12.10/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/extlib-0.9.14/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fastercsv-1.5.3/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flacinfo-rb-0.4/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/flexmock-0.8.6/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/ext/fox16,~/.rvm/gems/ruby-1.8.7-p249/gems/fxruby-1.6.20-x86-linux/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.5.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemcutter-0.6.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gemwhois-0.1/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/gettext-2.1.0/lib,~/.rvm/gems/ruby-1.8.7-p249/gems/git-1.2.5/lib,~
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
4
normal zo
5
normal zo
6
normal zo
10
normal zo
19
normal zo
26
normal zo
30
normal zo
26
normal zo
35
normal zo
40
normal zo
35
normal zo
45
normal zo
50
normal zo
45
normal zo
55
normal zo
60
normal zo
55
normal zo
5
normal zo
4
normal zo
let s:l = 5 - ((1 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
6wincmd w
exe '1resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 1resize ' . ((&columns * 139 + 139) / 279)
exe '2resize ' . ((&lines * 37 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 139 + 139) / 279)
exe '3resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 3resize ' . ((&columns * 139 + 139) / 279)
exe '4resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 4resize ' . ((&columns * 139 + 139) / 279)
exe '5resize ' . ((&lines * 15 + 38) / 77)
exe 'vert 5resize ' . ((&columns * 139 + 139) / 279)
exe '6resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 6resize ' . ((&columns * 139 + 139) / 279)
exe '7resize ' . ((&lines * 14 + 38) / 77)
exe 'vert 7resize ' . ((&columns * 139 + 139) / 279)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
