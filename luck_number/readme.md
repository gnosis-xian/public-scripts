```shell
git clone git@github.com:gnosis-xian/public-scripts.git
```

```shell
cd /root/public-scripts && \
git pull && \
docker run --name lucky-number \
--privileged=true \
-d \
-p 58150:5000 \
-v /root/public-scripts/:/public-scripts/ \
tensorflow/tensorflow \
/bin/sh /public-scripts/luck_number/start.sh
```

```shell
docker run --name lucky-number \
--privileged=true \
-d \
-p 58150:5000 \
-v /root/public-scripts/:/public-scripts/ \
registry.cn-hangzhou.aliyuncs.com/docker-gnosis/lucky-number:v1.0
```