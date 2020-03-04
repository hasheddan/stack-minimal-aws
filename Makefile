STACK_VERSION ?= v0.2.1
STACK_IMG ?= crossplane/stack-minimal-aws:$(STACK_VERSION)

build:
	docker build . -t ${STACK_IMG}
.PHONY: build

publish:
	docker push ${STACK_IMG}
.PHONY: publish