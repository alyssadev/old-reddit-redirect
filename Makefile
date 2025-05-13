.PHONY: run clean

old-reddit-redirect-v2.0.5-esr.xpi: *.json img/* *.txt
	zip -r old-reddit-redirect-v2.0.5-esr.xpi * -x .git/* -x img/screenshot.png -x .gitignore -x Makefile -x _metadata/** -x "_metadata/*"

run:
	npx web-ext run

clean:
	rm -f *.zip
