/^#/b exit
/#/{
	s/^.*$/#Sorry, we cannot process a line which involves # not at the beginning of it./p
	b abort
}

/,/{
	h
	s/,//
	/,/{
		g
		:loop
			s/^.*$/#&/
			s/^\(#[^,]*\),\([^#]*\)\(.*\)$/\2\1\3/
			/^#/{
				s/^#//
				s/#/,/g
				b exit
			}
		b loop
	}

	g
	s/\(.*\),\(.*\)/\2,\1/
	b exit
}

:exit
	p

:abort
