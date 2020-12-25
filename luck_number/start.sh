if cd /predict_Lottery_ticket ; then
  git pull && python predict_api.py
else
  cd / && \
  sudo tee /etc/apt/sources.list <<-'EOF'
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiver
EOF && \
  apt-get update && \
  apt install git -y && \
  git clone https://github.com/gnosis-xian/predict_Lottery_ticket.git && \
  cd predict_Lottery_ticket && \
  mkdir -p data && \
  pip install -r requirements.txt -i https://pypi.douban.com/simple/ && \
  pip install pandas lxml -i https://pypi.douban.com/simple/ && \
  python get_train_data.py && \
  python train_model.py && \
  python predict_api.py
fi