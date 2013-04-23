SESSION=$(tmux has-session -t $1 2>/dev/null)
echo $SESSION

if [ "$1" == "ls" ] || [ "$1" == "l" ] ; then
	tmux ls
elif ! [[ "$SESSION" =~ ^[0-9]+$ ]] ; then
	tmux new -s $1
else
	tmux attach -t $1
fi
