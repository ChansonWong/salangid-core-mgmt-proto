# salangid-core-mgmt-proto使用说明

- 设置环境变量

```shell
export PROTOPATH=/Users/kwochiu/project/h8/import
echo ${PROTOPATH}
```

- 执行生成脚本

执行Makefile脚本

或在项目根目录下执行：

```shell
protoc --proto_path=${PROTOPATH}:. --gofast_out=plugins=grpc:coremgmt/ *.proto
```

为pb.go文件生成go-inject-tag
```shell
protoc-go-inject-tag -input=./coremgmt/*.pb.go
```

###引入salangid-core-mgmt-proto依赖

- 设置私有仓库

```shell
go env -w GOPRIVATE=gitlab.gz8h.com.cn
```

- 把http转为ssh

```shell
git config --global url."ssh://git@gitlab.gz8h.com.cn:30022/".insteadOf "http://gitlab.gz8h.com.cn/"
```

- go get依赖

```
go get gitlab.gz8h.com.cn/operation-salangid/salangid-core-mgmt-proto@v0.0.2
```



