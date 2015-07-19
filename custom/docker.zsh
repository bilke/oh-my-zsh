# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH=/Users/bilke/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1
alias dm='docker-machine'

startdocker() {
	docker-machine start fusion
	eval "$(docker-machine env docker)"
}
