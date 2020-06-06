.PHONY: build run

VERSION ?= latest

build:
	hugo -D --destination docs

run:
	hugo server
