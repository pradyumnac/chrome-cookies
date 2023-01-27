.PHONY: all
INSTALL_PREFIX := $${HOME}/.local/bin
PWD := $(shell pwd)

all: clean build 

clean:
	@rm -fR build dist
	@rm -fR $(INSTALL_PREFIX)/.local/bin

build:
	@poetry run pyinstaller chromecookies.py
	@mkdir -p release
	@tar -czvf release/chromecookies.tar.gz dist/chromecookies
