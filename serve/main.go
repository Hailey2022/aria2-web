package main

import (
	"net/http"
	"os"
)

func main() {
	var dir, port string
	if len(os.Args) == 3 {
		dir = os.Args[1]
		port = os.Args[2]
		panic(http.ListenAndServe(":"+port, http.FileServer(http.Dir(dir))))
	}
}
