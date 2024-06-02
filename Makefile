
ifndef INSTALL_DIR
$(error INSTALL_DIR is not set. Please set it before running this Makefile to a directoy in your PATH variable)
endif

all:
	@echo "Please run 'make install config'"

install:
	@echo ""
	mkdir -p $(INSTALL_DIR)
	cp directory-marks $(INSTALL_DIR)
	cp directory-marks_bash_include.sh $(INSTALL_DIR)
	chmod 755 $(INSTALL_DIR)/directory-marks
	chmod 644 $(INSTALL_DIR)/directory-marks_bash_include.sh


config:
	echo "source ${INSTALL_DIR}/directory-marks_bash_include.sh" > ~/.bashrc

.PHONY: all install config
