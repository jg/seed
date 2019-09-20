GID="$(id -g)"
CMD=""

ARGS=$@
SERVICE=$2
USER_COMMAND="${ARGS[@]:3}"
case $1 in
  "r"|"run") CMD="run -u $UID:$GID $SERVICE $USER_COMMAND";;
  "u"|"up") CMD="up -d $SERVICE";;
  "b"|"build") CMD="build $SERVICE";;
  "c"|"console") CMD="run $SERVICE bash";;
  *) CMD="${ARGS}"
esac

FULL="sudo docker-compose $CMD"

echo $FULL
eval $FULL
