# Open any Xcode project that is in the current working directory
alias openx='find . -d 1 | grep xcodeproj | head -n 1 | xargs open --fresh --background'

# Get current ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
