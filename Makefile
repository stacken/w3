ENVDIR = .env
DOCKER ?= docker

# Possible install and build Nikola, generate the pages
build: ${ENVDIR} ${ENVDIR}/bin/nikola
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola build

# If you like, you can also use docker to build the site
# Add DOCKER="sudo docker" or DOCKER="podman" or something if needed
build-docker:
	${DOCKER} build -t w3 .

# Build it, and serve it on http://127.0.0.1:8000/
server: build
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola serve

# Run the docker image instead
# Add DOCKER="sudo docker" or DOCKER="podman" or something if needed
server-docker: build-docker
	${DOCKER} run -tip 8000:80 w3

# Like server, but try to autoupdate changes
auto: build
	. ${ENVDIR}/bin/activate \
		&& cd stacken \
		&& nikola auto

# If you like to share a few changes w/o publishing them to the real site
# run this rule, your changes will be published to https://stacken.github.io/w3/
deploy-to-github-pages: ${ENVDIR} ${ENVDIR}/bin/nikola
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

# Run this to clean up, sometimes this is needed to fix the build
clean:
	rm -rf stacken/cache
	rm -rf stacken/output
	rm -rf ${ENVDIR}
	rm -rf .tmpenv

${ENVDIR}:
	virtualenv -p python3 ${ENVDIR}
