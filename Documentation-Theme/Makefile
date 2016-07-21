#This makefile provides standard build and serve functionality
#through jekyll for this project
LINEBREAK = "*****************************************************************"
LAST_EXIT = 0

all:
	@echo "Building the website... Running command:"
	- jekyll build relative || LAST_EXIT=$$?
ifeq ($(LAST_EXIT), 0)
	@echo ${LINEBREAK}
	@echo The website has been built and is stored in the _site folder. It can now be
	@echo added to a server. -- If you wish to run it on localhost, use \"make serve\" --
	@echo ${LINEBREAK}
else
	@echo ${LINEBREAK}
	@echo "Oops! Looks like you don't have Jekyll yet, lets install it!"
	@echo "You can also see their website at: \"https://jekyllrb.com/docs/installation/\""
	@echo ${LINEBREAK}
	LAST_EXIT=0
	- sudo gem install jekyll || LAST_EXIT=$$?
ifeq ($(LAST_EXIT), 0)
	@echo ${LINEBREAK}
	@echo "Great! We will try to re-build the project again!"
	@echo ${LINEBREAK}
	LAST_EXIT=0
	- jekyll build relative || LAST_EXIT=$$?
ifeq ($(LAST_EXIT), 0)
	@echo ${LINEBREAK}
	@echo The website has been built and is stored in the _site folder. It can now be
	@echo added to a server. -- If you wish to run it on localhost, use \"make serve\" --
	@echo ${LINEBREAK}
else
	@echo ${LINEBREAK}
	@echo "Looks like we encountered another error! Please make sure Jekyll is installed correctly."
	@echo "See their website at: \"https://jekyllrb.com/docs/installation/\""
	@echo ${LINEBREAK}
	exit 1
endif
else
	@echo ${LINEBREAK}
	@echo "Looks like we encountered another error! Please make sure Jekyll is installed correctly."
	@echo "See their website at: \"https://jekyllrb.com/docs/installation/\""
	@echo ${LINEBREAK}
	exit 1
endif
endif


serve:
	@echo "Running command:"
	jekyll serve


build:
	$(info Building the website... Running command:)
	jekyll build relative
	@echo "*****************************************************************"
	@echo The website has been built and is stored in _site folder. It can now be
	@echo added to a server. If you wish to run it on localhost, use "make serve"
