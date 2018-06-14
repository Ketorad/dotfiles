# Personal aliases for my .bashrc

# ls
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias llr='ls -lRsA'

# xclip
alias cb='sed -e '"'"'s/^/"/g'"'"' -e '"'"'s/$/"/g'"'"' | tr -d '"'"'\n'"'"' | xclip -selection clipboard'
#alias cb='sed -e 's/^/"/g' -e 's/$/"/g' | tr -d '\n' | xclip -selection clipboard'

# date
alias date='date "+%a %y:%m:%d:%H:%M:%S"'
