#!/bin/bash

# 用于删除windows下换行导致的换行符\r


for name in $(ls *.md *.yoc *.py *.JSON-tmLanguage *.tmTheme *.tmLanguage)
	do
		cat $name | tr -d '\r' > $name.bak
		rm -f $name
		mv $name.bak $name
	done

