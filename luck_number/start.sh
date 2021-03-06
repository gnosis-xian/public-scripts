if cd /predict_Lottery_ticket ; then
  git pull && python predict_api.py
else
  cd / && \
  sh /public-scripts/luck_number/change_apt_source.sh && \
  apt update && \
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