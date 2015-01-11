#!/usr/bin/env sed -n --posix -f
:loop
	s/^[^a-zA-Z]*//
	h
	s/^\([a-zA-Z][a-zA-Z0-9]*\).*/\1/p
	g
	s/^[a-zA-Z][a-zA-Z0-9]*//
/./b loop
