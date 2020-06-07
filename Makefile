.PHONY: build run

VERSION ?= latest

build:
	hugo -D --destination docs --minify && cp static/CNAME docs/

run:
	hugo server
