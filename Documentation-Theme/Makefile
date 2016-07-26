#This makefile provides standard build and serve functionality
#through jekyll for this project
LINEBREAK = "*****************************************************************"

all:
	@echo "Building the website... Running command:"
	./checkJekyll
	@echo "Running command:"
	jekyll build relative
	@echo ${LAST_EXIT}
	@echo The website has been built and is stored in _site folder. It can now be
	@echo added to a server. If you wish to run it on localhost, use "make serve"
	@echo ${LAST_EXIT}

serve:
	./checkJekyll
	@echo "Running command:"
	jekyll serve

build:
	./checkJekyll
	$(info Building the website... Running command:)
	jekyll build relative
	@echo ${LAST_EXIT}
	@echo The website has been built and is stored in the \"_site\" folder. It can now be
	@echo added to a server. If you wish to run it on localhost:4000, use "make serve"
	@echo ${LAST_EXIT}
