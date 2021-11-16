package main

import (
	"fmt"
	"github.com/pkg/errors"
	"os"
	"strings"
)

func Echo(args []string) error {
	if len(args) < 2 {
		return errors.New("Error, no arguemnts to print")
	}
	_, err := fmt.Println(strings.Join(args[1:], " "))
	return err
}

func main() {
	if err := Echo(os.Args); err != nil {
		fmt.Fprintf(os.Stderr, "%+v\n", err)
		os.Exit(1)
	}
}
