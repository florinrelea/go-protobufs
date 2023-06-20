module example.com/customer

go 1.18

require (
	github.com/florinrelea/go-protobufs/go/character v0.0.0-00010101000000-000000000000
	github.com/florinrelea/go-protobufs/go/header v0.0.0-00010101000000-000000000000
	github.com/google/uuid v1.3.0
	github.com/mattn/go-sqlite3 v1.14.16
	google.golang.org/grpc v1.56.0
)

require (
	github.com/golang/protobuf v1.5.3 // indirect
	golang.org/x/net v0.9.0 // indirect
	golang.org/x/sys v0.7.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	google.golang.org/genproto v0.0.0-20230410155749-daa745c078e1 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
)

replace github.com/florinrelea/go-protobufs/go/character => ../../go/character

replace github.com/florinrelea/go-protobufs/go/header => ../../go/header
