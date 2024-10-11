# Microcks Go Client

A Go Client or SDK that allows you to interact with the Microcks API.

[![License](https://img.shields.io/github/license/microcks/microcks-go-client?style=for-the-badge&logo=apache)](https://www.apache.org/licenses/LICENSE-2.0)
![Go version](https://img.shields.io/github/go-mod/go-version/microcks/microcks-go-client?style=for-the-badge&logo=go)
![GitHub release](https://img.shields.io/github/downloads-pre/microcks/microcks-go-client/latest/total?style=for-the-badge)
[![Project Chat](https://img.shields.io/badge/discord-microcks-pink.svg?color=7289da&style=for-the-badge&logo=discord)](https://microcks.io/discord-invite/)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/microcks&style=for-the-badge)](https://artifacthub.io/packages/search?repo=microcks)
[![CNCF Landscape](https://img.shields.io/badge/CNCF%20Landscape-5699C6?style=for-the-badge&logo=cncf)](https://landscape.cncf.io/?item=app-definition-and-development--application-definition-image-build--microcks)


## Build Status

Latest released version is `0.2.0`.

Current development version is `0.3.0`.

#### Fossa license and security scans

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fmicrocks%2Fmicrocks-go-client.svg?type=shield&issueType=license)](https://app.fossa.com/projects/git%2Bgithub.com%2Fmicrocks%2Fmicrocks-go-client?ref=badge_shield&issueType=license)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fmicrocks%2Fmicrocks-go-client.svg?type=shield&issueType=security)](https://app.fossa.com/projects/git%2Bgithub.com%2Fmicrocks%2Fmicrocks-go-client?ref=badge_shield&issueType=security)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fmicrocks%2Fmicrocks-go-client.svg?type=small)](https://app.fossa.com/projects/git%2Bgithub.com%2Fmicrocks%2Fmicrocks-go-client?ref=badge_small)

#### OpenSSF best practices on Microcks core

[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/7513/badge)](https://bestpractices.coreinfrastructure.org/projects/7513)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/microcks/microcks/badge)](https://securityscorecards.dev/viewer/?uri=github.com/microcks/microcks)

## Community

* [Documentation](https://microcks.io/documentation/tutorials/getting-started/)
* [Microcks Community](https://github.com/microcks/community) and community meeting
* Join us on [Discord](https://microcks.io/discord-invite/), on [GitHub Discussions](https://github.com/orgs/microcks/discussions) or [CNCF Slack #microcks channel](https://cloud-native.slack.com/archives/C05BYHW1TNJ)

To get involved with our community, please make sure you are familiar with the project's [Code of Conduct](./CODE_OF_CONDUCT.md).

## Versions

Latest released version is `0.2.0`. Please check the table bealow to see what version of Microcks API it matches.

| Go Client | Microcks Version |
| --------- | ---------------- |
| `0.2.0` | `1.10.0` and above |
| `0.1.0` | `1.8.0` and above |

## Installation

To get the latest version, use go1.22 and fetch using the `go get` command. For example:

```
go get microcks.io/go-client@latest
```

To get a specific version, use go1.21+ and fetch the desired version using the `go get` command. For example:

```
go get microcks.io/go-client@v0.2.0
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
