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
	. ${ENVDIR}/bin/activate \
		&& pip install -r nikola-requirements.txt

# Run this to update nikola-requirements.txt with a fresh version of Nikola
update-nikola:
	virtualenv -p python3 .tmpenv
	. .tmpenv/bin/activate && pip install --upgrade "Nikola[extras]"
	. .tmpenv/bin/activate && pip freeze \
		| grep -v pkg-resources \
		> nikola-requirements.txt
	rm -rf .tmpenv

clean:
	rm -rf stacken/cache
	rm -rf stacken/output
	rm -rf ${ENVDIR}
	rm -rf .tmpenv

${ENVDIR}:
	virtualenv -p python3 ${ENVDIR}
