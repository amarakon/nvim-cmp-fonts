#!/bin/bash

items=lua/cmp-fonts/items.lua

printf 'local fonts = {\n' > $items

fc-list | cut -d " " -f 2- | cut -d : -f 1 | cut -d , -f 1 | sort | uniq |
	while read font; do
		printf "\t{ label = \"$font\" },\n" >> $items
	done

printf '}\n\nreturn fonts\n' >> $items
