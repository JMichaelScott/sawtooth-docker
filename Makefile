all: docker

docker:
	cd sawtooth-validator; docker build -t personal/sawtooth-validator .
	cd sawtooth-shell; docker build -t personal/sawtooth-shell .
	cd sawtooth-rest-api; docker build -t personal/sawtooth-taekion-api .
