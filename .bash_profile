# ~/.bash_profie
 
# Check if the session is interactive and if screen is already running
if [ -n "$SSH_CONNECTION" ] && [ -z "$STY" ] && [ -z "$SCREEN_RUN" ]; then
    export SCREEN_RUN=1
    exec screen -RR
fi
