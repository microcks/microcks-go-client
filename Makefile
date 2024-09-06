API_FILE := api/microcks-openapi-v1.10.yaml

generate-install: ## [generate] Install
	go install github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen@latest

generate-client: ## [generate] Client
	oapi-codegen -config generate.yaml ${API_FILE}

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: generate-client
