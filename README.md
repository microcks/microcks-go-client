# Microcks Go Client

Go client for accessing and using Microcks API


[![License](https://img.shields.io/github/license/microcks/microcks-go-client?style=for-the-badge&logo=apache)](https://www.apache.org/licenses/LICENSE-2.0)
[![Project Chat](https://img.shields.io/badge/chat-on_zulip-pink.svg?color=ff69b4&style=for-the-badge&logo=zulip)](https://microcksio.zulipchat.com/)
![Go version](https://img.shields.io/github/go-mod/go-version/microcks/microcks-go-client?style=for-the-badge&logo=go)
![GitHub release](https://img.shields.io/github/downloads-pre/microcks/microcks-go-client/latest/total?style=for-the-badge)


## Versioning

Latest released version is `0.1.0`. It has been produced from Microcks `1.8.0` OpenAPI definition and can be used with all the above `1.x` versions.


## Installation

To get the latest version, use go1.21+ and fetch using the `go get` command. For example:

```
go get microcks.io/go-client@latest
```

To get a specific version, use go1.21+ and fetch the desired version using the `go get` command. For example:

```
go get microcks.io/go-client@v0.1.0
```

## Quickstart

```go
package main

import (
	"context"
	"fmt"
	"log"

	client "microcks.io/go-client"
)

const server = "http://localhost:8080/api"

func main() {
	// Create client
	c, err := client.NewClientWithResponses(server)
	if err != nil {
		log.Fatal(err)
	}

	// Request the Keycloak configuration
	ctx := context.Background()
	resp, err := c.GetKeycloakConfigWithResponse(ctx)
	if err != nil {
		log.Fatal(err)
	}

	// Print the response
	fmt.Printf("%+v\n\n", resp.JSON200)
}
```

### License

The Apache License (apache) - see [`LICENSE.md`](https://github.com/microcks/microcks-go-client/blob/main/LICENSE.md) for more details.
