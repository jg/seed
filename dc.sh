GID="$(id -g)"
CMD=""

ARGS=$@
SERVICE=$2
USER_COMMAND="${ARGS[@]:3}"
case $1 in
  "r"|"run") CMD="run -u $UID:$GID $SERVICE $USER_COMMAND";;
  "u"|"up") CMD="up $SERVICE";;
  "b"|"build") CMD="build $SERVICE";;
  "c"|"console") CMD="run $SERVICE bash";;
  *) echo "unknown command" && exit;;
esac

FULL="sudo docker-compose $CMD"

echo $FULL
eval $FULL
