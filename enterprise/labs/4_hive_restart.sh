
# Using jq JSON Parser
# sudo curl -L -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
# sudo chmod +x /usr/bin/jq

CH_API='http://n1:7180/api/v13'
CH_AUTH="giorgio-sonra:cloudera"
CLUSTER="cluster"
SERVICE="hive"
SERVICE_ADDR="$CH_API/clusters/$CLUSTER/services/$SERVICE"

function service_check_access() {
  local STATUS=$1
  if [ "$STATUS" == "null" ]; then
    echo "$SERVICE service not found in API $CH_API"
    exit 1
  fi
}

function service_get_status() {
  curl -u $CH_AUTH -s  $SERVICE_ADDR | jq -r '.serviceState'
}

function service_post_start() {
  curl -u $CH_AUTH -s -X POST  $SERVICE_ADDR/commands/start | jq -r '.id'
}

function service_post_stop() {
  curl -u $CH_AUTH -s -X POST  $SERVICE_ADDR/commands/stop| jq -r '.id'
}

function service_status() {
  local STATUS=`service_get_status`
  service_check_access "$STATUS"
  echo "$SERVICE: $STATUS"
}

function service_start() {
  local STATUS=`service_get_status`
  service_check_access "$STATUS"
  if [ "$STATUS" != "STOPPED" ]; then
    echo "$SERVICE service already started"
    exit 0
  fi
  local ID=`service_post_start`
  if [ "$ID" == "null"  ]; then
    echo "Problem to start $SERVICE service"
    exit 1
  fi
  echo "$SERVICE service started"
  exit 0
}
function service_stop() {
  local STATUS=`service_get_status`
  service_check_access "$STATUS"
  if [ "$STATUS" != "STARTED" ]; then
    echo "$SERVICE service already stopped"
    exit 0
  fi
  ID=`service_post_stop`
  if [ "$ID" == "null"  ]; then
    echo "Problem to stop $SERVICE service"
    exit 1
  fi
  echo "$SERVICE service stopped"
  exit 0
}

function usage() {
  echo "$0 start|stop|status"
  exit 1
}

function main() {
  [ "$#" -ne 1 ] && usage

  case $1 in
    start) service_start;;
    stop) service_stop;;
    status) service_status;;
    *) usage;;
  esac
}

main "$@"
