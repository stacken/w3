ENVDIR = .env

build: ${ENVDIR} ${ENVDIR}/bin/nikola
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola build

server: build
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola serve

auto: build
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola auto

deploy: ${ENVDIR} ${ENVDIR}/bin/nikola
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola github_deploy

${ENVDIR}/bin/nikola:
	# Note: the requirements file was the result of
	# an "pip install --upgrade "Nikola[extras]"
	. ${ENVDIR}/bin/activate \
		&& pip install -r requirements.txt

clean:
	rm -rf stacken/cache
	rm -rf stacken/output
	rm -rf ${ENVDIR}

${ENVDIR}:
	virtualenv -p python3 ${ENVDIR}
