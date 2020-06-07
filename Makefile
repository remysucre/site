.PHONY: build run

VERSION ?= latest

build:
	hugo -D --destination docs --minify

run:
	hugo server
