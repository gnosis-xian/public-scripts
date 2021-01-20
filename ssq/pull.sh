echo "开始更新代码..."
cd /root/ssq && git pull
cd /root/public-scripts && git pull
echo "更新代码完成..."

echo "开始导入数据..."
cd /root/ssq && python3 ssq_data.py
echo "数据导入完成"

echo "ssq.py ssq_test.py 开始执行..."
#cd /root/ssq && python3 ssq.py
#cd /root/ssq && python3 ssq_test.py
echo "ssq.py ssq_test.py 执行完成"

echo "ssq4all.py ssq4all_test.py 开始执行..."
cd /root/ssq && python3 ssq4all.py
cd /root/ssq && python3 ssq4all_test.py
echo "ssq4all.py ssq4all_test.py 执行完成"

echo "dlt4all.py dlt4all_test.py 开始执行..."
#cd /root/ssq && python3 dlt4all.py
#cd /root/ssq && python3 dlt4all_test.py
echo "dlt4all.py dlt4all_test.py 执行完成"