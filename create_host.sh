#! /bin/bash -e
function main() {
  echo "-----"
  fetch_machine_identity
}

function fetch_machine_identity() {

printf "Hostfactory Token= $(cat /var/jenkins_home/hostfactory)\n"
printf "Hostname= $(hostname)\n"
local status="$(curl -k -i -w '%{http_code}' -X POST -H "Authorization: Token token=\"$(cat /var/jenkins_home/hostfactory)\"" https://conjur-master/api/host_factories/hosts?id=$(hostname))"

printf "Status=\n$status\n"

}

main