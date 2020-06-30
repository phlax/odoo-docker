#!/usr/bin/make -f

SHELL := /bin/bash


image:
	docker build -t phlax/odoo context

hub-image:
	docker push phlax/odoo
