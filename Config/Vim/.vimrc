"Подключаем менеджер плагинов Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Плагины для Vundle
Plugin 'VundleVim/Vundle.vim'                                     "Менеджер плагинов для Vundle
Plugin 'scrooloose/nerdtree.git'                                  "Файловое дерево
Plugin 'octol/vim-cpp-enhanced-highlight.git'                     "Подсветка синтаксиса для си-подобных языков
Plugin 'Valloric/YouCompleteMe.git'                               "Автокомплит для языков программирования
Plugin 'vim-airline/vim-airline.git'                              "Информативная строка состояния
Plugin 'vim-airline/vim-airline-themes'                           "Темы для строки состояния
Plugin 'tpope/vim-surround'                                       "Быстрое удаление символов окружения
Plugin 'mattn/emmet-vim'                                          "Плагин для быстрой веб-разработки
Plugin 'docunext/closetag.vim'                                    "Закрывает открытые HTML-теги 
Plugin 'tpope/vim-fugitive.git'                                   "Плагин для работы с Git прямо в VIM
Plugin 'kien/ctrlp.vim'                                           "Поиск файлов по <C-n> P
Plugin 'easymotion/vim-easymotion'                                "Быстрое перемещение по первому символу
Plugin 'rking/ag.vim'                                             "Расширения для плагина Silver Searcher нужно чтобы в системе он был

"Цветовые схемы оформления
Plugin 'https://github.com/morhetz/gruvbox.git'

"Конфигурации VIM
set t_Co=256                                                      "Установка цветного режима для терминала
colorscheme gruvbox                                               "Установка темы оформления VIM
set background=dark                                               "Указываем темный фон для темы gruvbox

syntax on                                                         "Включаем подсветку синтаксиса VIM

set number                                                        "Подключаем нумерацию строк
set hlsearch                                                      "Подсвечиваем слова поиска, для отключения (:nohl)
set incsearch                                                     "Включаем последовательный поиск совпадений
set expandtab                                                     "Заменяем Таб пробелами
set tabstop=2                                                     "Устанавливаем ширину таба
set shiftwidth=2                                                  "Устанавливаем ширину перемещения
set wrap                                                          "Переносим текст если он не помещается в окно

set nocompatible                                                  "Если VIM видит файл .vimrc то отключается поддержка VI
filetype off                                                      "

"Настройки NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Настройки Vim-Airline
let g:airline_theme='badwolf'
let g:airline#extensions#branch#format = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

"Настройки EasyMotion 
let g:mapleader=','
map <Leader> <Plug>(easymotion-prefix)

"Настройки YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

call vundle#end()
filetype plugin indent on  
