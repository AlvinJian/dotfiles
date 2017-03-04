set expandtab
set shiftwidth=2
set softtabstop=2
syntax enable
set wrap
set background=dark
set number
set ignorecase
"BEGIN_DEVASSISTANT_1
"Setting value devassistant to 0 will use your existing .vimrc file
"Setting value devassistant to 1 will use the vimrc defined by the devassistant feature

let devassistant=0
if devassistant==1
 :source /home/alvin-arch/.devassistant/files/snippets/vim/vimrc
endif
"END_DEVASSISTANT_1
