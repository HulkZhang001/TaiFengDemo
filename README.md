# TaiFengDemo
利用本体建模工具Protege建立台风应急知识本体，使用D2RQ将关系数据库MySQL中的数据转为RDF，并编写Python脚本使用第三方库SPARQLWrapper实现查询。
# 数据包括
1. D2RQ的压缩包（自己用电脑下的太慢了，于是就用手机翻墙下，直接压缩即可）
2. taifeng.sql（其中有一些存入MySQL的台风数据和结构，直接导入即可）
3. taifengKg.owl（台风本体）
4. taifeng_demo.ttl（使用D2RQ生成的ttl文件）
5. taifeng_demo1.ttl（基于taifeng_demo.ttl和台风本体修改后的ttl文件）
6. taifengDemo1.nt（生成的三元组）
7. query.py（用Python与D2RQ进行交互的脚本）
# 使用说明
1. 将sql文件导入数据库中（这里使用的是MySQL）
2. 然后解压d2rq-0.8.1.zip
3. 在解压后的文件目录下打开cmd窗口，执行    generate-mapping -u root -p password -o taifeng_demo.ttl jdbc:mysql:///数据库名称（也可以直接将taifeng_demo.ttl复制到目录下）
4. 根据本体中定义的关系修改taifeng_demo.ttl（也可以不修改，直接将taifeng_demo1.ttl复制到目录下），修改后的文件为taifeng_demo1.ttl
5. 然后执行   .\dump-rdf.bat -o taifengDemo1.nt .\taifeng_demo1.ttl  生成三元组nt文件（也可以直接将taifengDemo1.nt复制到目录下）
6. 执行   d2r-server.bat taifeng_demo1.ttl    在浏览器中打开http://localhost:2020/
7. 这样就可以查看并且查询了^_^
