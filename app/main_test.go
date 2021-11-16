package main

import (
	"github.com/stretchr/testify/require"
	"testing"
)

func TestEcho(t *testing.T) {
	err := Echo([]string{})
	require.Error(t, err)
}
