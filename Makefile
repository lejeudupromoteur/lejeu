SHELL := /bin/bash

HTML_PREVIEW=preview1515
HTML_OFFICIAL=
BUILD_PARENT=../lejeudupromoteur.github.io
BUILDDIR_PREVIEW=$(BUILD_PARENT)/$(HTML_PREVIEW)
BUILDDIR_OFFICIAL=$(BUILD_PARENT)/$(HTML_OFFICIAL)
GOOGLEDRIVE=~/GOOGLE_DRIVE
SHAREROOTDIR=$(GOOGLEDRIVE)/COLLECTIF-BUCLOS/LE_JEU_DU_PROMOTEUR
SHARETXTDIR=$(SHAREROOTDIR)/SITE_WEB_VERSION_TEXTE/
SHARERSTDIR=$(SHAREROOTDIR)/SITE_WEB_VERSION_RST/

# You can set these variables from the command line.
SPHINXOPTS    = -c .infra/docs -q
SPHINXBUILD   = /usr/share/PyVEnvs27/ScribesEnv/bin/sphinx-build

clean:
	rm -rf $(BUILD_PARENT)/*
	rm -rf ./*/.build
	mkdir -p $(BUILD_PARENT)

htmlpreview:
	mkdir -p $(BUILDDIR_PREVIEW)
	$(SPHINXBUILD) $(SPHINXOPTS) -b html -d $(BUILDDIR_PREVIEW)/doctrees -w $(BUILDDIR_PREVIEW)/build-errors.txt . $(BUILDDIR_PREVIEW)
	touch $(BUILDDIR_PREVIEW)/.nojekyll
	@echo
	@echo
	@echo "Preview build finished. Preview HTML pages are in $(BUILDDIR_PREVIEW)"

htmlofficial:
	mkdir -p $(BUILDDIR_OFFICIAL)
	$(SPHINXBUILD) $(SPHINXOPTS) -b html -d $(BUILDDIR_OFFICIAL)/doctrees -w $(BUILDDIR_OFFICIAL)/build-errors.txt . $(BUILDDIR_OFFICIAL)
	touch $(BUILDDIR_OFFICIAL)/.nojekyll
	@echo
	@echo
	@echo "Official build finished. Official HTML pages are in $(BUILDDIR_OFFICIAL)"

text:
	rm -rf $(SHARETXTDIR)
	mkdir -p $(SHARETXTDIR)
	touch $(SHARETXTDIR)/.timestamp
	$(SPHINXBUILD) $(SPHINXOPTS) -b text -d $(BUILDDIR_OFFICIAL)/doctrees -w $(BUILDDIR_OFFICIAL)/build-errors.txt . $(SHARETXTDIR)
	@echo
	@echo "Build finished. Text files are in $(SHARETXTDIR)"

sources:
	rm -rf $(SHARERSTDIR)/
	mkdir -p $(SHARERSTDIR)/
	touch $(SHARERSTDIR)/.timestamp
	cp -r $(BUILD_PARENT)/$(HTML_OFFICIAL)/_sources/* $(SHARERSTDIR)

share:  text  sources
	pushd $(GOOGLEDRIVE) ; grive ; popd
	echo "shared"


changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."

coverage:
	$(SPHINXBUILD) -b coverage $(ALLSPHINXOPTS) $(BUILDDIR)/coverage
	@echo "Testing of coverage in the sources finished, look at the " \
	      "results in $(BUILDDIR)/coverage/python.txt."


pseudoxml:
	$(SPHINXBUILD) -b pseudoxml $(ALLSPHINXOPTS) $(BUILDDIR)/pseudoxml
	@echo
	@echo "Build finished. The pseudo-XML files are in $(BUILDDIR)/pseudoxml."
