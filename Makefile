.PHONY: build run clean

VERSION ?= latest

build:
	hugo -D --destination public --minify 
run:
	hugo server
