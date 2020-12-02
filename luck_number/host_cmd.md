### 启动获取数据源、模型计算、rest api
```shell script
cd /root/public-scripts && \
git pull && \
docker run --name lucky-number --privileged=true \
-p 58150:5000 \
-v /root/public-scripts/:/public-scripts/ \
tensorflow/tensorflow \
/bin/sh /public-scripts/luck_number/start.sh
```

### 更新数据源及模型
```shell script
cd /root/public-scripts && \
git pull && \
docker exec lucky-number /bin/sh /public-scripts/luck_number/update_model.sh
```