ENVDIR = .env

build: ${ENVDIR} ${ENVDIR}/bin/nikola
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola build

server: build
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola serve

${ENVDIR}/bin/nikola:
	. ${ENVDIR}/bin/activate \
		&& pip install --upgrade "Nikola[extras]"

${ENVDIR}:
	virtualenv -p python3 ${ENVDIR}
