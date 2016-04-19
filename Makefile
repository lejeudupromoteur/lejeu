HTML_PREVIEW=preview-assoc
HTML_OFFICIAL=
BUILD_PARENT=../lejeudupromoteur.github.io
BUILDDIR_PREVIEW=$(BUILD_PARENT)/$(HTML_PREVIEW)
BUILDDIR_OFFICIAL=$(BUILD_PARENT)/$(HTML_OFFICIAL)

# You can set these variables from the command line.
SPHINXOPTS    = -c .infra/docs -q
SPHINXBUILD   = /usr/share/PyVEnvs27/ScribesEnv/bin/sphinx-build

.PHONY: help clean html htmlpreview htmlofficial changes linkcheck doctest coverage gettext

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  xml        to make Docutils-native XML files"
	@echo "  pseudoxml  to make pseudoxml-XML files for display purposes"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
	@echo "  coverage   to run coverage check of the documentation (if enabled)"

clean:
	rm -rf $(BUILD_PARENT)/*
	rm -rf ./*/.build
	mkdir -p $(BUILD_PARENT)

htmlpreview:
	mkdir -p $(BUILDDIR_PREVIEW)
	$(SPHINXBUILD) -b html -d $(BUILDDIR_PREVIEW)/doctrees -w $(BUILDDIR_PREVIEW)/build-errors.txt . $(BUILDDIR_PREVIEW)
	touch $(BUILDDIR_PREVIEW)/.nojekyll
	@echo
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)"

htmlofficial:
	mkdir -p $(BUILDDIR_OFFICIAL)
	$(SPHINXBUILD) -b html -d $(BUILDDIR_OFFICIAL)/doctrees -w $(BUILDDIR_OFFICIAL)/build-errors.txt . $(BUILDDIR_OFFICIAL)
	touch $(BUILDDIR_OFFICIAL)/.nojekyll
	@echo
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)"


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
