.PHONY: all
INSTALL_PREFIX := $${HOME}/.local/bin
PWD := $(shell pwd)

all: clean build install 

clean:
	@rm -fR build dist
	@rm -fR ~/.chromecookies
	@rm -fR $(INSTALL_PREFIX)/.local/bin

build:
	@poetry run poetry install 
	@poetry run pyinstaller chromecookies.py
	@mkdir -p release
	@tar -czvf release/chromecookies.tar.gz dist/chromecookies

install:
	@mkdir -p ~/.chromecookies
	@cp -r dist/chromecookies/* ~/.chromecookies/
	@ln -s -f ~/.chromecookies/chromecookies ~/.local/bin/chromecookies
