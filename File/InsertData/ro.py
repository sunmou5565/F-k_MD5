import hashlib

import pymysql
db = pymysql.connect(host='your_host', user='your_name', password='your_passworld', db='Fmd',port=3306)
# 需自行修改上方信息
sur = db.cursor()
with (open('.\Dt\10w字典.txt', 'r',encoding='utf-8',errors="ignore") as f):


    for il in f:
        il=il.rstrip()
        tmp = il

        encoded_text = il.encode()
        md5_hash_object = hashlib.md5()
        md5_hash_object.update(encoded_text)
        encrypted_text = md5_hash_object.hexdigest()
        '''
        sel = ("select * from tb_fd where Md='%s'"%(encrypted_text))
        sur.execute(sel)
        off = sur.fetchone()
        if off:
            print("repeat："+il+"|MD5:"+encrypted_text)
            continue
        else:
        '''
        # 如果在意数据重复问题可以将上方代码取消注释，并且调整下方缩进
        sql = ("insert into tb_fd(Md,Tex) values('%s','%s')"%(encrypted_text,il))
        try:
            sur.execute(sql)
            db.commit()
        except pymysql.err.DataError as e:
            print("[-]ERR!")

    db.close()
