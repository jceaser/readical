#!/bin/bash

mkdir blog 2> /dev/null

cat events.ics | \
	go run ReadIcal.go \
		-out-months 0 \
		-out-days -2 \
		-after-months 1 \
		-timezone -4 \
		-out blog
