VERSION=$(shell cat VERSION)
default: release

build:
	curl -o redoc.min.js https://rebilly.github.io/ReDoc/releases/v${VERSION}/redoc.min.js
	docker build -t elrot/redoc:${VERSION} .

commit:
	git add .
	git commit -m ${VERSION}
	git push origin master
	git tag ${VERSION}
	git push origin ${VERSION}

push:
	docker push elrot/redoc:${VERSION}

release: build commit push
