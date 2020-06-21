.PHONY: build run clean

VERSION ?= latest

build:
	hugo -D --destination public --minify 
	cp static/CNAME public/

run:
	hugo server
