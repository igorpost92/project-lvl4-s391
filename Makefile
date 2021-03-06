install: install-deps install-flow-typed

start:
	npx nodemon --exec npx babel-node server/bin/slack.js

install-deps:
	npm install

build:
	rm -rf dist
	npm run build

deploy:
	git push heroku master

test:
	npm test

check-types:
	npx flow

lint:
	npm run lint

publish:
	npm publish

.PHONY: test
