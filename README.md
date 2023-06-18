# For windows users
Don't forget to run `choco install protoc`

# First Command
```
protoc --go_out="./go" --go_opt=paths=source_relative --go-grpc_out="./go" --go-grpc_opt=paths=source_relative --plugin=protoc-gen-ts_proto=.\node_modules\.bin\protoc-gen-ts_proto.cmd --ts_proto_opt=esModuleInterop=true --ts_proto_out="./tsproto" --proto_path=./schemas /schemas/header/header.proto
```