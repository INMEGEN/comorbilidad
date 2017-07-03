results/%.sif:	data/%.csv
	mkdir -p `dirname $target`
	bin/csv2sif $prereq  \
	| sort \
	| uniq -c \
	| sort -nr \
	> $target'.build' \
	&&  mv $target'.build' $target
