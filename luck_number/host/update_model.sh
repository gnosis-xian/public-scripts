cd /root/public-scripts && \
git pull && \
docker start lucky-number && \
docker exec lucky-number /bin/sh /public-scripts/luck_number/update_model.sh