#ALIASES   ============================================

alias testalias='ls -al'
alias vsc="open -a 'Visual Studio Code'"
alias term='vsc ~/.zshrc'
alias sors='source ~/.zshrc'
alias gccf='gcc -Wall -Werror -Wextra -pedantic -std=c11 -o test'
alias clangg='clang-format -style=Google -n *.c *.h && clang-format -style=Google -i *.c *.h'
alias cppchk='cppcheck --enable=all --suppress=missingIncludeSystem *.c'
alias asdf="make test && make clean"
alias duhast="du -hs * | sort -h"