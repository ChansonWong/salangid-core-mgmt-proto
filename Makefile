env:
	export PROTOPATH=/Users/kwochiu/project/h8/import
	echo ${PROTOPATH}

proto:
	protoc --proto_path=${PROTOPATH}:. --gofast_out=plugins=grpc:coremgmt/ core_business.proto

tag:
	protoc-go-inject-tag -input=./coremgmt/core_business.pb.go

all: env proto tag