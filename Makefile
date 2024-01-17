TARGETS := $(shell ls scripts)

.dapper:
	@echo Downloading dapper
	@curl -sL https://github.com/Loongson-Cloud-Community/dapper/releases/download/v0.6.0/dapper-Linux-loongarch64 > .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

$(TARGETS): .dapper
	./.dapper $@

.DEFAULT_GOAL := ci

.PHONY: $(TARGETS)
