$directory = ".\schemas"

# Get all .proto files in the directory
$protoFiles = Get-ChildItem -Path $directory -Filter "*.proto" -File -Recurse
$command_base = 'protoc --go_out="./go" --go_opt=paths=source_relative --go-grpc_out="./go" --go-grpc_opt=paths=source_relative --plugin=protoc-gen-ts_proto=.\node_modules\.bin\protoc-gen-ts_proto.cmd --ts_proto_opt=esModuleInterop=true --ts_proto_out="./tsproto" --proto_path=.\schemas'

# Loop through each .proto file and run a command
foreach ($file in $protoFiles) {
  $relativeFilePath = Resolve-Path -Path $file.FullName -Relative
  $command = "$command_base $relativeFilePath"

  Write-Host "Compiling: $relativeFilePath"
  Invoke-Expression -Command $command
}