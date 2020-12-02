### Remove project.
```shell script
docker rm -f lucky-number
```

### Watch project logs.
```shell script
docker logs -f lucky-number --tail 100
```

### 启动获取数据源、模型计算、rest api
```shell script
cd /root/public-scripts && \
git pull && \
docker run --name lucky-number --privileged=true \
-d -p 58150:5000 \
-v /root/public-scripts/:/public-scripts/ \
tensorflow/tensorflow \
/bin/sh /public-scripts/luck_number/start.sh
```

### 更新数据源及模型
[update_model.sh](./host/update_model.sh)

### docker installation instruction (only on CentOS7)

Search documents on docker.io by yourself if use other linux release version.
```shell script
yum install -y docker
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://dg3ojes4.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
```