package main

import (
	"context"
	"fmt"
	"log"

	client "github.com/microcks/microcks-go-client"
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
