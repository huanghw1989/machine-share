docker-machine共享工具  

# 使用命令
```
# Linux / MaxOS
docker run -it --rm \
  -v ~/.docker/machine:/root/.docker/machine \
  -v $PWD:/home/work \
  -w /home/work \
  -e "MY_HOME="$HOME \
  huanghw/machine-share:lts sh

# Windows
SET MY_HOME=C:\Users\xxx (User Home, .docker文件夹所在的目录)
docker run -it --rm ^
  -v %MY_HOME%/.docker/machine:/root/.docker/machine ^
  -v %cd%:/home/work ^
  -w /home/work ^
  -e "MY_HOME="%MY_HOME% ^
  huanghw/machine-share:lts sh
```
**容器内执行**:  
> machine-export phbs-ai # 导出配置
> machine-import phbs-ai # 导入配置


# 手动构建
```
# 编译 (相对本文件所在目录)
docker build -t machine-share .

# 标记镜像为长期稳定版本(lts, Long Time Support)
docker tag machine-share huanghw/machine-share:lts

# 将镜像推送到Registry
docker push huanghw/machine-share:lts
```


# 从Registry中拉取镜像
`docker pull huanghw/machine-share:lts`