cd /root/public-scripts && \
git pull && \
docker run --name lucky-number --privileged=true \
-p 58150:5000 \
-v /root/public-scripts/:/public-scripts/ \
tensorflow/tensorflow \
/bin/sh /public-scripts/luck_number/start.sh