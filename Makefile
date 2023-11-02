API_FILE := api/microcks-openapi-v1.8.yaml

generate-client: ## [client] Generate
	go run github.com/deepmap/oapi-codegen/cmd/oapi-codegen -config generate.yaml ${API_FILE}

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: generate-client
