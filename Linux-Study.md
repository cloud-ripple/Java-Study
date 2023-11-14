> Linux主要的发行版：Ubuntu(乌班图)、RedHat(红帽)、CentOS、Debain(蝶变)等

<a name="cB8cI"></a>
# 1 Vmware16安装和使用 Centos7.6虚拟机
> vm和linux的关系，可以创建多个不同版本的虚拟机

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696428987418-e1e9cb74-c187-47c7-aebf-344a22fb494c.png#averageHue=%23f4ecec&clientId=uccedb5ee-43f9-4&from=paste&height=399&id=u0e37a09f&originHeight=599&originWidth=677&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=131802&status=done&style=none&taskId=u4589f596-fdbb-4889-96f2-4922e61eea5&title=&width=451.3333333333333)
<a name="g6tfh"></a>
## 1.1 CentOS 下载
```

CentOS-7-x86_64-DVD-2009.iso  
http://mirrors.aliyun.com/centos/7/isos/x86_64/

CentOS-8.3.2011-x86_64-dvd1.iso 
http://mirrors.aliyun.com/centos/8/isos/x86_64/
```
<a name="TkEaO"></a>
## 1.2 安装步骤
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696429547991-850006b0-b5fe-4670-9cb7-a3956d00ee15.png#averageHue=%23f5f5f5&clientId=uccedb5ee-43f9-4&from=paste&height=637&id=u88c20c2d&originHeight=956&originWidth=1207&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=122394&status=done&style=none&taskId=u6555189a-7f05-4d53-a7ce-1b268d4b393&title=&width=804.6666666666666)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696429621396-9dc71444-2d52-4a68-b6d9-cb59369818d2.png#averageHue=%23f0efee&clientId=uccedb5ee-43f9-4&from=paste&height=457&id=uc42c55d2&originHeight=685&originWidth=787&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=54722&status=done&style=none&taskId=ub1eb244c-dd06-4d3e-aaf5-fe551a70f90&title=&width=524.6666666666666)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696429815214-8ed7a2ec-92a2-4b05-bab0-3f678ef68159.png#averageHue=%23efefee&clientId=uccedb5ee-43f9-4&from=paste&height=452&id=ua38acda9&originHeight=678&originWidth=726&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=48251&status=done&style=none&taskId=u5cb92fe1-dcd8-4730-970a-c333d6dc1d8&title=&width=484)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696429997477-3485a675-2ad5-486b-9bb1-9be720590668.png#averageHue=%23f1f0f0&clientId=uccedb5ee-43f9-4&from=paste&height=449&id=u8e7aea68&originHeight=674&originWidth=716&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=42259&status=done&style=none&taskId=u6e660abb-aecf-470c-b1d4-894dbee4f17&title=&width=477.3333333333333)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696430128561-3cd26cba-caf7-45ca-831c-6adb6660ddb4.png#averageHue=%23f0efee&clientId=uccedb5ee-43f9-4&from=paste&height=446&id=ua49acec6&originHeight=669&originWidth=713&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=58059&status=done&style=none&taskId=uebfd41f1-8460-49b0-8e79-73f1a232b8d&title=&width=475.3333333333333)
> 其它默认

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696430409234-d6f1ef8d-8fbe-4e37-adee-b29a91b318d6.png#averageHue=%23f7f7f6&clientId=uccedb5ee-43f9-4&from=paste&height=623&id=ue10ab3f1&originHeight=935&originWidth=1809&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=137059&status=done&style=none&taskId=ubbee84b5-dbc1-4bda-b00f-c5c4dedce2b&title=&width=1206)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696430466038-6672ec9e-2d89-4b66-b6a1-cef02076c747.png#averageHue=%23f4f3f3&clientId=uccedb5ee-43f9-4&from=paste&height=449&id=u9e57aa83&originHeight=673&originWidth=712&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=47199&status=done&style=none&taskId=u01924708-4c21-4cb4-8469-6aab1f79d8d&title=&width=474.6666666666667)
> 此时创建的虚拟机还没有真正安装操作系统，需要挂载 CD/DVD镜像

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696430755742-32a4963b-bf8e-4086-8475-703e1b4c15f9.png#averageHue=%23f9f8f7&clientId=uccedb5ee-43f9-4&from=paste&height=397&id=u2e5f3827&originHeight=595&originWidth=1042&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=56555&status=done&style=none&taskId=u61bd56be-d3f8-44e9-8f86-8a34c7136cc&title=&width=694.6666666666666)
> 启动虚拟机，选择第一个 CentOS 7, 点击回车等待安装即可

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431000672-c52fa7db-8b37-4cef-9167-903a97671990.png#averageHue=%23000000&clientId=uccedb5ee-43f9-4&from=paste&height=351&id=u560ac70f&originHeight=527&originWidth=761&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=5788&status=done&style=none&taskId=u602bffbd-d07e-4ec0-9eb9-4440248d4e5&title=&width=507.3333333333333)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431151251-5878d797-48c4-40a1-a47c-0bb81d0131ea.png#averageHue=%23e7e7e5&clientId=uccedb5ee-43f9-4&from=paste&height=415&id=uddb42491&originHeight=623&originWidth=807&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=119079&status=done&style=none&taskId=u82f7010c-3c80-4d45-9c94-d5c24cc8366&title=&width=538)
>  点击 软件选择，进行如下环境配置勾选

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431494499-61bf8c26-846e-4cae-8375-0b281e91bc5b.png#averageHue=%23e7e7e6&clientId=uccedb5ee-43f9-4&from=paste&height=410&id=u7635cd7c&originHeight=615&originWidth=813&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=139747&status=done&style=none&taskId=ud0ef5a2a-f675-4c2c-a9e8-c194a4467a3&title=&width=542)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431372779-28ffff44-9a30-4582-b33a-616703adc445.png#averageHue=%23e5e5e4&clientId=uccedb5ee-43f9-4&from=paste&height=405&id=uf496b209&originHeight=608&originWidth=814&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=206524&status=done&style=none&taskId=u43dadb22-12e0-4db9-bf29-48c113999d3&title=&width=542.6666666666666)

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431554267-5b8ad43d-b805-416c-8684-d9e551f4a127.png#averageHue=%23e7e7e6&clientId=uccedb5ee-43f9-4&from=paste&height=392&id=ud07cde55&originHeight=588&originWidth=797&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=135830&status=done&style=none&taskId=u1411efa4-b2b4-4015-b0ad-a472b0db9ff&title=&width=531.3333333333334)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431626842-bbfd0d17-7cca-4904-af73-dee30727ca4e.png#averageHue=%23e7e7e6&clientId=uccedb5ee-43f9-4&from=paste&height=399&id=uba75d786&originHeight=598&originWidth=799&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=119853&status=done&style=none&taskId=u16f5b6f2-10e6-44c1-b62d-9272e9402b4&title=&width=532.6666666666666)
> 点击完成，设置3个分区统一 修改标准分区、ext4,  swap的文件系统类型默认 swap即可

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696431924532-b1b750e4-bd84-4e7b-9f7e-baa338df96e5.png#averageHue=%23e4e4e3&clientId=uccedb5ee-43f9-4&from=paste&height=397&id=u2a18332e&originHeight=596&originWidth=805&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=91378&status=done&style=none&taskId=uf54b1235-d7bf-4f48-bd59-89aeed77657&title=&width=536.6666666666666)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696432042660-c2e9cb55-69f4-4355-b89f-8281d2419d34.png#averageHue=%23a8a8a8&clientId=uccedb5ee-43f9-4&from=paste&height=408&id=ueb5e1083&originHeight=612&originWidth=817&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=107512&status=done&style=none&taskId=uf8319063-22f1-469a-a04e-9b9f70d5e2f&title=&width=544.6666666666666)

> 这里得网络 ens33 需要自己得电脑插入网线才可以连接，安装过程中设置账号密码，之后重启

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696432174000-02f5924a-527d-47d1-920e-c59062ef14dc.png#averageHue=%23e7e7e6&clientId=uccedb5ee-43f9-4&from=paste&height=407&id=ua9a2695a&originHeight=611&originWidth=828&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=143964&status=done&style=none&taskId=uf819b68a-9ffe-49f9-bfaa-2340df8c163&title=&width=552)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696432898800-1109921c-5cc9-4b52-8f3a-202631af7491.png#averageHue=%23e6e6e5&clientId=uccedb5ee-43f9-4&from=paste&height=196&id=ue3e58fff&originHeight=294&originWidth=1451&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=48211&status=done&style=none&taskId=u1f3ecb58-266f-4cab-b7f8-798ba5338aa&title=&width=967.3333333333334)

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696432690260-daea355e-14b1-450f-8842-56e8064d51d7.png#averageHue=%23c4d0ab&clientId=uccedb5ee-43f9-4&from=paste&height=375&id=ud598ab6f&originHeight=563&originWidth=808&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=159605&status=done&style=none&taskId=ua9817182-cf47-4a3b-87b0-2d6c0216785&title=&width=538.6666666666666)

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696432653765-a1aa7421-bc25-4582-9689-e8f76a1110f8.png#averageHue=%23e8e4dc&clientId=uccedb5ee-43f9-4&from=paste&height=370&id=u2044ba89&originHeight=555&originWidth=790&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=75590&status=done&style=none&taskId=ua0bef135-cfe0-4a4b-967c-f72ed03172f&title=&width=526.6666666666666)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696432530587-ae2c4284-ee2a-41bf-b1a6-6569bfe5afed.png#averageHue=%23e8e3d9&clientId=uccedb5ee-43f9-4&from=paste&height=378&id=ud7e4a559&originHeight=567&originWidth=787&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=78433&status=done&style=none&taskId=u4ca2ebe0-b27c-48ba-bc2c-1e16f5e01c9&title=&width=524.6666666666666)

> 默认是以普通用户登录，可以点击下方得 “未列出”，输入 root用户名和密码，以 root方式登录

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696433044790-0d9099d0-5a42-4b26-be56-e34bc8e6b9ee.png#averageHue=%232d3840&clientId=uccedb5ee-43f9-4&from=paste&height=223&id=uf6f86a83&originHeight=335&originWidth=756&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=111602&status=done&style=none&taskId=u050664fb-f9da-4ef2-884f-48264cdcd9b&title=&width=504)
<a name="MEvmO"></a>
## 1.3 网络连接的三种方式
> 目前没有插入网线得情况下

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696433696738-47c8097c-a807-42ee-bd66-3377ed8f92ef.png#averageHue=%23e3e3e0&clientId=uccedb5ee-43f9-4&from=paste&height=479&id=u725e5ebf&originHeight=719&originWidth=1039&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=67837&status=done&style=none&taskId=uca1c7985-0660-4bf9-9c92-8154f95c2ae&title=&width=692.6666666666666)
> 示意图

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696506392288-038145a0-36a2-4f14-91d3-3c023072789b.png#averageHue=%23eff2ee&clientId=u192504cd-4932-4&from=paste&height=445&id=u1d889f77&originHeight=668&originWidth=1483&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=411999&status=done&style=none&taskId=u414443d1-ff92-4d2f-a210-e73bca0fc33&title=&width=988.6666666666666)
<a name="kW6Fr"></a>
## 1.4 虚拟机克隆
> 如果已经安装了一台Linux操作系统，直接克隆即可：
> 1. 方式1：直接拷贝一份安装好的虚拟机文件
> 2. 方式2：使用vmware的克隆操作，克隆时需要先关闭linux系统
> 
克隆之后的虚拟机和原来的用户、密码、安装的软件、程序、环境都是一样的。

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696506853274-fbacfefe-1115-43e0-a09d-324c6afd6724.png#averageHue=%23e9e8e8&clientId=u192504cd-4932-4&from=paste&height=411&id=u1123fa63&originHeight=616&originWidth=830&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=47993&status=done&style=none&taskId=uf40ecf84-cf44-434f-a242-75a9a92a84c&title=&width=553.3333333333334)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696506931009-313a1f1a-2f4e-4071-89ae-db344c58cd15.png#averageHue=%23eeeded&clientId=u192504cd-4932-4&from=paste&height=419&id=u0ce3ca33&originHeight=628&originWidth=803&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=24468&status=done&style=none&taskId=u54eab2a4-7107-40cb-83cb-facd91ea9f6&title=&width=535.3333333333334)
<a name="RzQqT"></a>
## 1.5 虚拟机快照-存档|读档
如果在使用虚拟机的时候，想回到原先的某一个状态，也就是说你担心可能有些误操作造成系统异常<br />需要回到原先某个正常运行的状态
> 应用场景：
> 1. 安装好系统以后，先做一个快照 A 
> 2.  进入到系统后，创建一个文件夹，再保存一个快照 B
> 3.  回到系统刚刚安装好的状态，即快照 A
> 4. 也可以再次回到 B

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696507637772-1d1e2279-4ff6-4cc5-a2a9-eb6af869099d.png#averageHue=%2366685e&clientId=u192504cd-4932-4&from=paste&height=300&id=uc3f27950&originHeight=450&originWidth=804&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=81332&status=done&style=none&taskId=udc57bf4a-d77e-45d2-ad56-20060fa8c0f&title=&width=536)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696507730131-9f395f1d-4648-4012-8893-9edbb4fea79f.png#averageHue=%238b9390&clientId=u192504cd-4932-4&from=paste&height=464&id=uea706829&originHeight=696&originWidth=927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=169109&status=done&style=none&taskId=u803d5221-0043-41da-a989-0a5bfb25c85&title=&width=618)

> 选择想要回到的状态，点击 “转到”

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696507888770-3ec1432d-21fd-4817-8573-24467d7bc322.png#averageHue=%23beac8a&clientId=u192504cd-4932-4&from=paste&height=683&id=u68327404&originHeight=1024&originWidth=1381&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=225834&status=done&style=none&taskId=u78950a94-5dcb-43fe-a11d-83d389044eb&title=&width=920.6666666666666)
<a name="bSETm"></a>
## 1.6 虚拟机的迁移和删除
虚拟机系统安装后，本质就是一个文件放在文件夹里，可以把安装好i的虚拟机系统这个文件夹整体拷贝或剪切到另外地方使用，删除也很简单，从磁盘中删除对应文件夹即可
<a name="Uo59y"></a>
## 1.7 安装 vmtools 用于和windows主机共享文件夹
> 该工具可以在windows下更好的管理vm虚拟机，可以设置windows和CentOS虚拟机的文件共享
> 安装步骤：
> 1. 右击虚拟机 找到  "重新安装 VMware Tools " 选项，如果该项是灰色的无法点击，需要关闭虚拟机
> 
然后设置 CD/DVD连接选择使用物理驱动器(自动检测)
> ![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696509295760-109db966-5ba8-49a0-ab7a-c6a514031ade.png#averageHue=%23f7f6f4&clientId=u192504cd-4932-4&from=paste&height=97&id=ixF7T&originHeight=146&originWidth=1027&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=27887&status=done&style=none&taskId=u8cfa871a-b06e-416f-9c24-15af334f156&title=&width=684.6666666666666)
> 
> 2. 之后再次开启虚拟机过程中，右击找到  "重新安装 VMware Tools " 选项，等开启完毕后，在桌面看到一个 VMware Tools 光盘驱动图标，里面有一个工具 tar.gz压缩包
> 
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696509550755-e36a04d5-b3e8-4369-a316-f757afe24bb0.png#averageHue=%23a8aaa3&clientId=u192504cd-4932-4&from=paste&height=408&id=vmURW&originHeight=881&originWidth=1269&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=269399&status=done&style=none&taskId=u49cbfbc5-8d6b-4c35-96c0-9a4fa30ff4a&title=&width=588)
> 
> 3. 复制一份该 tar.gz压缩包，找到 "其他位置" -> 计算机 -> 粘贴到 opt/目录下
> 
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696509675623-d88a1470-2099-4ac0-8e5e-d3fc4ff640eb.png#averageHue=%23eeebe6&clientId=u192504cd-4932-4&from=paste&height=423&id=eBH6E&originHeight=634&originWidth=944&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=72268&status=done&style=none&taskId=u54b18b51-a978-43cf-b59e-0aad26b9649&title=&width=629.3333333333334)
> ![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696509810403-7d0b7177-3180-4d1f-80d9-52b00fef1805.png#averageHue=%23f7f7f6&clientId=u192504cd-4932-4&from=paste&height=405&id=u2a56c85f&originHeight=608&originWidth=920&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=45268&status=done&style=none&taskId=u184ce317-e568-472b-a3d5-1fd2d970f63&title=&width=613.3333333333334)
> 4. 在终端下进入到 opt目录下 cd /opt 解压该工具包，执行命令：tar -zxvf  指定压缩包，然后回车
> 
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696510145245-7005e097-7105-4350-bf42-a696870eabd4.png#averageHue=%2368786e&clientId=u192504cd-4932-4&from=paste&height=471&id=u37a73ffd&originHeight=706&originWidth=1680&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=89301&status=done&style=none&taskId=u3583b487-2221-4fa3-ba70-4cad07ac587&title=&width=1120)
> 5. 进入解压后的目录  cd vmware-tools-distrib/  下执行  ./vmware-install.pl  之后一直回车安装即可。
> 
注意安装此工具需要 gcc支持，在安装虚拟机的时候已经配置了基本的程序环境
> ![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696511534227-5578bf78-8c9f-431d-bf33-0b45ab30e0ce.png#averageHue=%23272b2c&clientId=u192504cd-4932-4&from=paste&height=362&id=u0b86572b&originHeight=543&originWidth=908&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=124978&status=done&style=none&taskId=ua225db3b-77fa-437c-ba9d-2f9bffd3d57&title=&width=605.3333333333334)
> ![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696510508213-0dad6f9c-3d1f-4a74-9ef1-5ee0705ae837.png#averageHue=%23d9dbd7&clientId=u192504cd-4932-4&from=paste&height=531&id=u934163ff&originHeight=797&originWidth=1358&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=176471&status=done&style=none&taskId=u7c3b09f7-1181-4f21-b7ca-673101d43ad&title=&width=905.3333333333334)
> 
> 6. 设置共享文件夹：
> 
先在windows电脑下新建一个文件用于共享，比如： D:\myCentOS-share，设置虚拟机选项，找到共享文件夹->总是启用->添加共享的本地磁盘中的文件夹->点击下一步
> ![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696512050979-2168527a-8cea-46c8-a56c-e72faafb71c8.png#averageHue=%23f0efed&clientId=u192504cd-4932-4&from=paste&height=856&id=ud90ad081&originHeight=1284&originWidth=1464&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=345106&status=done&style=none&taskId=u20240f98-43ff-4e04-a3f0-2d5e43282db&title=&width=976)
> 
> 7. 找到 mnt/hgfs/ 目录下可以看到和windows主机共享的文件夹了，此时在windows或者Linux虚拟机中修改文件夹中的数据都是同步变化共享的。
> 
备注：但是在实际开发中，文件的上传和下载是需要使用远程登录的方式来完成的(后面会讲解)
> ![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696512307693-1e42fb2d-8870-4fed-8ccd-3a1115e14ccf.png#averageHue=%23dfdcd3&clientId=u192504cd-4932-4&from=paste&height=436&id=u12ecdbcd&originHeight=654&originWidth=1059&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=129962&status=done&style=none&taskId=u1cde1b40-923c-4ffc-a0cc-f1bb5020413&title=&width=706)
> 

<a name="vlQsh"></a>
## 1.8 Linux目录结构详解 (一切皆文件)
> 在Linux中，所有的硬件配置都是映射成文件形式来管理和体现  ->  一切皆文件 

1. linux的文件系统采用树状目录结构，最上层是根目录  "/" ，然后在此根目录下创建其他的目录用于存放不同的配置文件和程序指令，以下列出了常用和重要的目录：

 /root   (管理员权限者的用户主目录)<br />/sbin 、 /usr/sbin  (s就是Super User存放的是系统管理员使用的系统管理程序)<br />/home  (普通用户的主目录)<br />/bin  (该目录存放着最经常使用的命令)<br />/etc  (系统管理所需要的配置文件和子目录，比如安装mysql数据库 my.conf )<br />/usr  用户的很多应用程序和文件都存放在此目录下，类似于windows中的 programs files目录<br />/boot  存放启动Linux时使用的一些核心文件，包括一些连接、镜像文件等<br />/dev  类似于windows的设备管理器<br />/media  U盘、光驱设备挂载到该目录下<br />/mnt   用户临时挂载别的文件系统<br />/opt   给虚拟机额外安装软件程序所存放的目录，比如安装Mysql数据库、JDK、Tomcat等 就可以放到该目录下，默认为空<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696513087179-5ccd82c0-023c-4369-8b7c-42e77667e8c9.png#averageHue=%23f1eee9&clientId=u192504cd-4932-4&from=paste&height=489&id=u4fb192a7&originHeight=733&originWidth=1019&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=57464&status=done&style=none&taskId=ua8670b41-7b78-4f7e-bab2-146463e34cc&title=&width=679.3333333333334)

<a name="lyUJC"></a>
## 1.9 Linux远程登录
Xshell  、Xftp 家庭免费版下载官网：[https://www.xshell.com/zh/free-for-home-school/](https://www.xshell.com/zh/free-for-home-school/)
> Linux虚拟机网络连接问题：
> [https://blog.csdn.net/weixin_58279299/article/details/118312927?ops_request_misc=&request_id=&biz_id=102&utm_term=linux%E8%99%9A%E6%8B%9F%E6%9C%BAping%E4%B8%8D%E9%80%9A%E5%A4%96%E7%BD%91&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-4-118312927.nonecase&spm=1018.2226.3001.4187](https://blog.csdn.net/weixin_58279299/article/details/118312927?ops_request_misc=&request_id=&biz_id=102&utm_term=linux%E8%99%9A%E6%8B%9F%E6%9C%BAping%E4%B8%8D%E9%80%9A%E5%A4%96%E7%BD%91&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-4-118312927.nonecase&spm=1018.2226.3001.4187)

<a name="xHkTQ"></a>
# 2 vim快捷键-系统关机-重启-登录-退出
<a name="fNktl"></a>
## 2.1 vi和vim快捷键使用
> 正常模式：以 vim 指令打开一个文件进入的默认模式
> 编辑插入模式：按快捷键 INSERT 或者输入 i 进入
> 命令模式：先按 ESC，再输入 :  进入
> wq 保存并退出  		q 退出    		 q! 强制退出，并且不保存

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696939680993-20f3e5a7-038a-471b-99ed-c7b13d5c8e1f.png#averageHue=%23343532&clientId=uf91e407c-32da-4&from=paste&height=527&id=u263df478&originHeight=790&originWidth=1523&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=786253&status=done&style=none&taskId=u74398974-c008-4730-be87-104e23f1a2d&title=&width=1015.3333333333334)<br />快捷键使用：

1.  【正常模式下输入】 复制当前行 ： yy，复制当前行向下的 3行：3yy ，  粘贴： p
2.  【正常模式下输入】删除当前行：dd，删除当前向下的5行：5dd
3.  【命令模式下输入】文件中查找某个单词： /关键字，回车查找，输入 n 查找下一个
4.  【命令模式下输入】设置文件显示行号：** :set nu   ，**隐藏行号： **:set nonu**
5.  【正常模式下输入】跳转定位到文件的最末行：G  后者 $，最首行：gg
6.  【正常模式下输入】先进入编辑模式修改文件输入内容，然后ESC退出到正常模式，撤销这个动作：u
7. 【正常模式下输入】先输入要跳转的行号，再按 Shift + g  ，比如要跳转到文件的第66行：  66  Shift g
<a name="cQCGn"></a>
## 2.2 关机&重启&数据同步命令
```shell
shutdown -h now  //立刻关机，=> 等价于 shutdown 命令
shutdown -h 1  // 1分钟后关机
shutdown -r now  //现在重启虚拟机

halt	// 关机，同上
reboot	//重启
sync		//把内存的数据同步到磁盘

注意：
1. 不管是重启系统还是关闭，首先要运行 sync 命令，把内存数据写道磁盘，防止丢失
2. 目前的 shutdown/reboot/halt 命令均已在关机前进行了 sync，但以防万一
```
<a name="HqW4H"></a>
## 2.3 用户登录和退出系统

1. 登录时尽量少用 root 登录，权限最高，避免操作失误
2. 执行指令：su - 用户名  来切换成系统管理员身份
3. 在提示符下输入 logout 指令 即可退出当前用户，注意该指令在图形化运行级别下无效
<a name="Fasum"></a>
# 3 用户管理
Linux系统是一个多用户多任务的操作系统，任何一个要使用系统资源的用户，都必须首先向系统管理员申请一个账号，然后以这个账号的身份进入系统
<a name="svfLW"></a>
## 3.1 添加用户
```shell
// 添加用户指令
useradd 用户名

// 给新创建的用户自定义家home目录
useradd -d /home/目录名 用户名

useradd -d /home/test king

比如：
在家目录home下的test目录下，添加一个 king 用户
/home/test 就是该用户的工作目录(主目录、家目录)

注意：
1. 当创建用户成功后，会默认自动的在home下创建和用户同名的目录，作为该用户的工作目录
2. 也可以通过指令来给新创建的用户指定家home目录
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696949043405-0c048300-09ae-406a-a266-abce00a85e5d.png#averageHue=%23090807&clientId=uf91e407c-32da-4&from=paste&height=235&id=u62a80ff2&originHeight=388&originWidth=1138&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=66214&status=done&style=none&taskId=u74dba4f8-1d6b-48b3-89f6-f1e2fb6322d&title=&width=689.6969298335607)
<a name="Tp7zn"></a>
## 3.2 设置/修改用户密码
> 下次以该用户名登录时，就需要用新设置的密码

```shell
// 设置密码  注意：必须指定用户，否则默认是给当前登录的用户设置密码
passwd 用户名

// 显示当前用户所在的目录路径
pwd
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696949534266-91eb0690-75b3-4b5f-9de0-ff6d3240c64a.png#averageHue=%23050404&clientId=uf91e407c-32da-4&from=paste&height=161&id=u501edc4e&originHeight=265&originWidth=1124&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=41358&status=done&style=none&taskId=u6efdbc0a-b561-41dd-8b9c-77ea8e1dedd&title=&width=681.2120818391232)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696949993646-dd0463a7-0aa9-42cd-a13e-692eedaaffa8.png#averageHue=%23080706&clientId=uf91e407c-32da-4&from=paste&height=90&id=u92d4bcf3&originHeight=148&originWidth=761&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=28227&status=done&style=none&taskId=ua499df79-5869-4fa8-8368-b9c30ab52c7&title=&width=461.21209455478004)
<a name="r6JBk"></a>
## 3.3 删除用户
```shell
// 1. 删除某个用户，但是保留其家目录
userdel 用户名

// 2. 删除用户以及该用户的主目录
userdel -r 用户名

```
> 当前登录用户是 milan，进入到 /home 目录下，可以看到各个用户的主目录，尝试删除 milan用户
> 发现当前用户正在使用，无法删除，即使切换到 root权限也无法删除；需要退出当前milan用户，并以 root管理用户登录才可以删除用户

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696950534656-89554335-eb8a-47b5-b291-caa7b237c5fe.png#averageHue=%23090707&clientId=uf91e407c-32da-4&from=paste&height=353&id=uf4e2fa18&originHeight=583&originWidth=1191&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=55847&status=done&style=none&taskId=u2ca58445-61a7-49e7-8359-19bd1820218&title=&width=721.8181400982169)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696950906150-30e27678-dfde-4e18-9b99-4c3f4c22d97d.png#averageHue=%2351504f&clientId=uf91e407c-32da-4&from=paste&height=316&id=uce3ef1f9&originHeight=522&originWidth=1387&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=70359&status=done&style=none&taskId=uf377da41-7ffc-44d3-b3c1-cb2b14c334f&title=&width=840.6060120203416)

> 使用root用户登录，删除 milan 用户，但是其主目录保留，当再次以 milan用户去登录时：**SSH服务器拒绝了密码，请再试一次。**代表该用户已经不存在了，无法登录

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1696951578893-4372fff7-8fbd-4187-ab70-e86e19af1fd2.png#averageHue=%230a0807&clientId=uf91e407c-32da-4&from=paste&height=318&id=u66274454&originHeight=524&originWidth=949&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=98702&status=done&style=none&taskId=u3500aa6c-0eea-4798-b3c2-7f7967b0e45&title=&width=575.1514819086548)
<a name="lWryw"></a>
## 3.4 查询用户-切换用户-查看当前登录用户
```shell
// 1.查询用户指令，用户不存在时，返回无此用户
id 用户名

// 2.切换用户指令
su - 用户名

// 3.查看当前登录用户(是第一次登录时的用户)
whoami   或者  who am i

注意：
1. 从权限高的用户切换到权限低的用户，不需要输入密码，反之需要
2. 当需要返回到原来的用户时，使用 exit 或者 logout 指令
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697436861490-746b6be4-7c92-48ab-b2f8-003768cdf133.png#averageHue=%23090807&clientId=uba0f692d-2a2e-4&from=paste&height=368&id=u9f4018d4&originHeight=608&originWidth=1245&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=52848&status=done&style=none&taskId=u7aa0b8ff-0f71-46ed-a137-8c07acf5f7c&title=&width=754.5454109339043)
<a name="rLT4Y"></a>
## 3.5 用户组和 etc/下相关文件信息
> 类似于角色，系统可以对有共性(权限)的多个用户进行统一的管理
> 1. /etc/passwd  :用户的配置文件，记录用户的各种信息
> 
每行含义   用户名：口令：用户标识号：组标识号：注释性描述：主目录：登录Shell
> 2. /etc/shadow 口令的配置文件
> 
每行含义  登录名：加密口令：最后一次修改时间：最小时间间隔：最大时间间隔：警告时间：不活动时间：失效时间：标志
> 3. /etc/group  组的配置文件信息
> 
每行含义  组名：口令：组标识号：组内用户列表

```shell
// 新增组
groupadd 组名

// 删除组
groupdel 组名

// 添加用户时可以直接指定组
useradd -g 用户组 用户名

注意：如果新建用户时没有指定组，那么默认会创建一个与用户同名的组并将其放在该组下面

```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697437799692-e52eeccd-d368-48e5-81fc-e2c5751dd3d5.png#averageHue=%23100e0d&clientId=uba0f692d-2a2e-4&from=paste&height=318&id=u713c9d49&originHeight=525&originWidth=1009&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=46511&status=done&style=none&taskId=u85406b35-23bd-41c8-9bd2-6c3f08df959&title=&width=611.5151161705297)
<a name="kphGd"></a>
# 4 运行级别-找回root密码-帮助指令

1. 运行级别说明，常用级别是 3 和 5，也可以通过 init 指定运行级别

0  	关机<br />1	单用户<br />2	多用户状态没有网络服务<br />3	多用户状态有网络服务<br />4	系统未使用保留给用户<br />5	图形界面<br />6	系统重启
```shell
// 切换不同的运行级别
init 级别号
```

2. 找回 root 密码

设置运行级别，linux运行后，直接进入到命令行终端<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697439095595-00db6a72-3b7b-4de5-8a9e-08ee9519b259.png#averageHue=%23838583&clientId=uba0f692d-2a2e-4&from=paste&height=479&id=ub9c293fe&originHeight=790&originWidth=1705&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=341298&status=done&style=none&taskId=u9bbfab98-8ec7-4ab9-8bdb-3b73a60808b&title=&width=1033.3332736082787)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697439148533-4699306f-9b37-4d9c-88f1-9a1c4b431ca1.png#averageHue=%239b9e9b&clientId=uba0f692d-2a2e-4&from=paste&height=678&id=u50652608&originHeight=1119&originWidth=1756&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=914868&status=done&style=none&taskId=uc7d7e026-9902-457d-9918-b474e0d443e&title=&width=1064.2423627308722)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697439192924-3f5dbdbf-c903-4d87-b46b-3a774727f936.png#averageHue=%23c8cbc8&clientId=uba0f692d-2a2e-4&from=paste&height=341&id=u4da6aea3&originHeight=563&originWidth=1711&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=593840&status=done&style=none&taskId=uffcd2360-9246-40bb-a1c6-339eb5ed580&title=&width=1036.9696370344661)

3. 帮助指令
```shell
// 获得帮助信息
man [命令或配置文件]

// 获得shell内置命令的帮助信息
help 命令
```
<a name="YwBuh"></a>
# 5 文件目录指令
<a name="ZR8yw"></a>
## 5.1 pwd  ls  cd
```shell
// 显示当前工作目录的绝对路径
pwd

ls -a  // 显示当前目录的所有文件和目录，包括隐藏的
ls -l	// 以列表的方式显示信息
ls -h  //显示详细简单参数，包括文件大小，时间等

// 查看指定目录下的所有文件和目录信息, a,l,h选项可以组合使用
ls -la /home

// 切换到自己的家目录
cd  或者 cd ~
// 切换到当前目录的上一级目录
cd ..
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697457253514-bde12efd-d75b-4ad8-b4d7-e28f2495dffa.png#averageHue=%230d0b0a&clientId=uba0f692d-2a2e-4&from=paste&height=460&id=uf38b5157&originHeight=759&originWidth=1164&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=114762&status=done&style=none&taskId=u89656557-8fd4-4509-b28d-e5dcc26b05d&title=&width=705.4545046803731)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697459164966-2497083d-0037-46b8-95f7-2f4846cc25e3.png#averageHue=%230d0b0a&clientId=uba0f692d-2a2e-4&from=paste&height=99&id=u5f03484a&originHeight=164&originWidth=1115&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=32227&status=done&style=none&taskId=uf4e4cbdb-ba2e-4a5f-b728-2d671a59a3a&title=&width=675.757536699842)
<a name="hFg0s"></a>
## 5.2 mkdir  rmdir  rm -rf
```shell
// 创建目录
mkdir 目录名

// 创建多级目录
mkdir -p 目录

// 删除空目录，如果目录下有内容是无法删除的
rmdir 目录

// 删除目录或文件
rm -rf 目录


```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697440309714-f407bbb2-e6d5-45b0-b928-e48a1bef5355.png#averageHue=%230b0a09&clientId=uba0f692d-2a2e-4&from=paste&height=356&id=u81fc6b8f&originHeight=587&originWidth=1003&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=56323&status=done&style=none&taskId=u024a85a6-495b-40c4-a17c-8e60317f042&title=&width=607.8787527443421)
<a name="uEgc3"></a>
## 5.3 touch  cp  rm
```shell
// 1. 创建空文件
touch 文件名称

// 2. 拷贝文件到指定目录
cp [选项] 源目录 目标目录

常用选项：-r 递归复制整个文件夹，包括子目录的内容
使用细节：强制覆盖不提示：\cp

举例：拷贝home下的整个test5目录到 /opt下，并强制覆盖
\cp -r /home/test5/ /opt/

// 3. 删除文件或目录
rm [选项] 文件或目录

常用选项：
	-r 递归删除整个文件夹
	-f	强制删除不提示

举例：删除 /home/test5 整个目录，并强制删除
rm -rf /home/test5

```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697441258220-7f0d1d53-588c-45f9-a1a9-ab1bc774eac9.png#averageHue=%230c0a09&clientId=uba0f692d-2a2e-4&from=paste&height=378&id=u9f676a34&originHeight=624&originWidth=1219&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=91192&status=done&style=none&taskId=ub4daf67c-fa96-4cd8-a20e-807c21b2492&title=&width=738.7878360870918)
<a name="fvQdJ"></a>
## 5.4 mv  cat  less  echo  head tail
```shell
// 1.移动文件与目录或重命名
mv 老文件(目录)名 新文件(目录)名    // 重命名
mv /文件目录 /目标目录				//移动文件或目录


// 2.查看文件内容
cat -n 文件			// -n 显示行号
使用细节：cat指令只能浏览文件，为了方便，一般会带上管道命令 | more


// 3.less指令用来分屏查看文件内容，它的功能与more指令类似，支持各种显示终端
less 文件

less指令操作				功能说明
空白键space 	向下翻动一页
/字符串			向下搜寻该字符串，n:向下查找，N：向上查找
?字符串			向上....
q						离开less这个程序指令


// 4.echo指令输出内容到控制台
echo [选项] 输出内容


// 5.head指令用于显示文件的开头部分内容，默认显示文件前10行
head 文件
// 比如查看文件前20行内容
head -n 20 文件


// 6. 用于输出文件中尾部的内容
tail -n 5 文件

// 7. 实时监控某个文件的更新变化内容情况
tail -f 文件


```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697442325501-861ee7df-6877-4b9d-919e-77a9e4d6e301.png#averageHue=%230d0c0b&clientId=uba0f692d-2a2e-4&from=paste&height=331&id=uc2167df3&originHeight=546&originWidth=1153&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=42296&status=done&style=none&taskId=ud527750f-4d07-4898-be3e-374efd912d8&title=&width=698.7878383990294)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697443466246-d6f1559d-127c-49bd-8123-b33e81084698.png#averageHue=%230e0c0b&clientId=uba0f692d-2a2e-4&from=paste&height=98&id=uead6276b&originHeight=161&originWidth=1263&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=15105&status=done&style=none&taskId=ubb934e39-779a-4642-81fe-f20bbc36085&title=&width=765.4545012124668)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697443310286-f6b2b59b-d4fb-4073-9606-273e72e3ad45.png#averageHue=%23080707&clientId=uba0f692d-2a2e-4&from=paste&height=437&id=u64ad42b2&originHeight=721&originWidth=1218&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=56533&status=done&style=none&taskId=u02683fd9-46c8-406e-80ed-65db69f05c6&title=&width=738.1817755160606)
<a name="Ltwmk"></a>
## 5.5 > 和 >> 指令
> > 输出重定向(写入覆盖) 和  >> 追加

```shell
// 列表的内容写入到文件中，覆盖写
ls -l > 文件

// 列表的内容追加到文件的末尾
ls -la >> 文件

// 把文件1的内容覆盖到文件2
cat 文件1 > 文件2

使用说明：通过 > 与 >> 可以把前面任何指令所显示或输出的所有内容
					以 覆盖或追加 的方式写入到指定的某个文件中。

```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697444782639-6d434299-379b-421f-9d6d-f3bd77c430e4.png#averageHue=%230d0b0a&clientId=uba0f692d-2a2e-4&from=paste&height=586&id=u437ad231&originHeight=967&originWidth=1183&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=125312&status=done&style=none&taskId=u8cd1c9fb-6796-4117-9e89-8ffc92a62af&title=&width=716.9696555299669)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697445099112-d2b6e20d-1f9e-4c10-b3a3-cc45d2375471.png#averageHue=%23060505&clientId=uba0f692d-2a2e-4&from=paste&height=395&id=u8e7cc520&originHeight=652&originWidth=1070&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=60661&status=done&style=none&taskId=u021ea618-c0f3-4e65-8d23-3ee5652a889&title=&width=648.4848110034359)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697445273062-72de4e41-ce43-4b5e-bae1-7173f7357659.png#averageHue=%230b0a09&clientId=uba0f692d-2a2e-4&from=paste&height=576&id=uafc720ae&originHeight=951&originWidth=1328&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=134993&status=done&style=none&taskId=u02a90f5d-31c3-49a7-bc86-74e89a70794&title=&width=804.848438329498)
<a name="a8GpW"></a>
## 5.6 ln history date cal
ln软链接也称为符号链接，类似于windows里的快捷键方式，主要存放了链接其他文件的路径
```shell
// 1. 给原文件创建一个软链接
ln -s 原文件或目录 软链接名

案例1：在 /home 目录下创建一个软链接 myroot，链接到 /root目录
ln -s /root/ myroot

删除软连接
rm /home/myroot


// 2.查看已经执行过的历史命令，也可以执行历史命令
history  //显示所有的历史命令
history 10  //显示最近使用过的10个命令
!历史编号   			//执行某个历史指令


// 3. date指令，显示当前日期
date	//显示当前时间
date +%Y	//显示年份
date +%m	//显示月份
date +%d	//显示当前是那一天

// 4.设置日期
date -s "2022-11-11 20:05:19"  //设置系统当前时间

// 5.查看日历指令
cal		//显示当前日历
cal 2020		//显示2020年日历

```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697455283144-291c87f7-5ff4-4053-be6e-7c11808f7fea.png#averageHue=%230d0b0a&clientId=uba0f692d-2a2e-4&from=paste&height=313&id=ucea94b09&originHeight=516&originWidth=1152&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=59928&status=done&style=none&taskId=u074f42fa-fcf3-4143-b919-4baa20a0ea4&title=&width=698.1817778279982)
<a name="Nctp9"></a>
## 5.7 查找指令find which  grep

```shell
// 1.find指令将从指定目录向下递归地遍历其各个子目录，将满足条件的文件或者目录显示在终端
find [搜索范围] [选项]

选项说明：
	-name	按照指定的文件名查找
	-user	查找属于指定用户的所有文件
	-size	按照指定的文件大小查找
案例1：按照文件名查找 /home 目录下的hello.txt文件
find /home -name hello.txt
案例2：按照用户拥有者查找 /opt目录下，用户名称为 root的文件
find /opt -user root
案例3：查找整个linux系统下大于200M的文件 (+n大于  -n小于	n等于，单位有：k M G)
find / -size +200M


//2. 查看某个指令在哪个目录下，比如 ls 指令
which ls


//3. grep过滤查找，管道符 | ，表示将前一个命令的处理结果输出传递给后面的命令处理
grep [选项] 查找内容 源文件

选项说明 -ni 可以组合使用：
	-n 显示匹配以及行号
	-i 忽略字母大小写
案例：在hello.txt文件中，查找 "yes"所在行，并显示行号
写法1：cat /home/hello.txt | grep -n "yes"
写法2：grep -n "yes" /home/hello.txt

```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697458259563-7d14d2fc-4a93-40dc-98a4-8cd3ce696469.png#averageHue=%23070504&clientId=uba0f692d-2a2e-4&from=paste&height=135&id=ub73711f9&originHeight=223&originWidth=1051&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=38485&status=done&style=none&taskId=ua0fe56ac-6502-4e42-8c0d-d0979e7e579&title=&width=636.9696601538421)
<a name="QP8JA"></a>
## 5.8 压缩与解压缩 gzip gunzip  
> gzip 用于压缩文件，gunzip 用于解压

```shell
// 压缩文件，只能将文件压缩为 *.gz 类型
gzip 文件

// 解压缩
gunzip 文件.gz

案例1：将 /home 下的hello.txt 文件进行压缩
gzip /home/hello.txt

案例2：将 /home 下的hello.txt.gz 文件进行解压缩
gunzip /home/hello.txt.gz
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1697459036748-243d4255-b1cf-40f9-8fa1-bdd73483fe93.png#averageHue=%230c0a09&clientId=uba0f692d-2a2e-4&from=paste&height=500&id=u038c1e56&originHeight=825&originWidth=1281&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=116484&status=done&style=none&taskId=u5b65d402-a1f5-4316-8c56-4a461391f37&title=&width=776.3635914910293)
<a name="yi1AU"></a>
## 5.9 压缩与解压缩 zip  unzip
> zip 用于压缩文件，unzip 用于解压缩，这个在项目打包发布中常用

```shell
// 压缩文件或目录的命令
zip -r 压缩名.zip 要压缩的文件或目录

// 解压缩
unzip -d 指定解压的目录 要解压的文件或目录.zip

zip常用选项说明：
	-r	递归压缩，即压缩目录
unzip选项说明：
	-d 	指定解压缩后文件的存放目录

案例1：把 /home下的所有文件进行压缩成 myhome.zip
zip -r myhome.zip /home/
案例2：把 myhome.zip 解压到指定 /op/tmp 目录下
unzip -d /opt/tmp /home/myhome.zip

```
<a name="xM2Ng"></a>
## 5.10 压缩与解压缩 tar
tar指令是打包指令，最后打包后的文件是 .tar.gz  类型文件
```shell
// 打包压缩目录
tar [选项] 压缩名.tar.gz 要压缩的目录 -C 指定解压的目录

选项说明：
	-c	产生 .tar 打包文件
	-v	显示详细信息
	-f	指定压缩后的文件名
	-z	打包同时压缩
	-x	解包 .tar 文件

案例1：压缩多个文件，将 /home/pig.txt 和 /home/cat.txt 压缩成 pc.tar.gz
tar -zcvf pc.tar.gz /home/pig.txt /home/cat.txt

案例2：将 /home 的文件夹压缩成 myhome.tar.gz
tar -zcvf myhome.tar.gz /home/

案例3：将 pc.tar.gz 解压到当前目录，切换到 /opt/
tar -zxvf pc.tar.gz

案例4：将 myhome.tar.gz 解压到 /opt/tmp2 目录下
tar -zxvf /home/myhome.tar.gz -C /opt/tmp2

```
<a name="Rte5O"></a>
# 6 组和rwx权限  P40-P62 集未看
<a name="Rsnjb"></a>
# 7 网络配置-进程-服务管理
<a name="kIAdF"></a>
## 7.1 修改网络配置文件实例
```shell
// 1.打开配置文件
vim sysconfig/network-scripts/ifcfg-ens33

// 2.重启网络服务生效 或者 reboot 重启虚拟机
service network restart
```

1. 手动设置windows宿主机的 VMwarenet8的虚拟网卡配置信息

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698325140587-c9a6afcf-92f6-496f-9a04-f78c137179c9.png#averageHue=%23f4f3f2&clientId=u49d19df0-8ad5-4&from=paste&height=551&id=u44db9efe&originHeight=909&originWidth=1499&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=327454&status=done&style=none&taskId=u7ebc2c49-0521-45fb-ab41-9aa8e021648&title=&width=908.4847959758414)

2. 在cmd 下执行 ipconfig 查看本机网卡信息

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698325019551-07efdb24-fe43-445f-b4c6-e76591a669e6.png#averageHue=%23121111&clientId=u49d19df0-8ad5-4&from=paste&height=630&id=fGuGz&originHeight=1039&originWidth=1220&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=162699&status=done&style=none&taskId=u4b0aaa6f-f995-498e-9bbe-19d08ba20bc&title=&width=739.3938966581231)

3. 在Linux虚拟机中的网络配置文件中修改如下信息，vim sysconfig/network-scripts/ifcfg-ens33

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698324571673-98eb445a-2c91-475b-9d56-b68dcefef4ef.png#averageHue=%23121110&clientId=u49d19df0-8ad5-4&from=paste&height=491&id=uc5328c37&originHeight=810&originWidth=935&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=90376&status=done&style=none&taskId=u83423085-de3b-4d18-a1cf-cbfe1cabbac&title=&width=566.6666339142173)

4. 修改虚拟网络编辑器的配置信息，最后点击应用，确定

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698324814422-e2234801-b663-43d4-8fc0-906c3eb56044.png#averageHue=%23dcc095&clientId=u49d19df0-8ad5-4&from=paste&height=588&id=u53c46a72&originHeight=971&originWidth=1819&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=274466&status=done&style=none&taskId=u5f0dd412-29df-45cc-8f03-8fcce64ada0&title=&width=1102.4241787058409)

5. 最后在虚拟机终端命令行执行  service network restart 刷新网络服务生效 或者  reboot 重启虚拟机
<a name="uhzZ8"></a>
## 7.2 设置主机名和hosts映射
> hosts: 用于记录 ip 和 主机名的映射关系
> DNS：域名系统，是作为域名和 IP地址相互映射的一个分布式数据库

```shell
// 设置虚拟机主机名
vim /etc/hostname

// 修改虚拟机主机配置
vim /etc/hosts


// 案例：设置hosts映射，如何通过主机名找到(比如 ping)某个Linux虚拟机系统？
1. windows 中 C:\Windows\System32\drivers\etc 目录下找到 hosts 文件，添加如下：
192.158.200.101 hsp

2. Linux中在  /etc/hosts 文件中添加如下：
192.158.200.66 LAPTOP-OQA935GA
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698326448916-f73e6df9-9a55-47ff-ab24-cd6e9c4797bd.png#averageHue=%23100f0e&clientId=u49d19df0-8ad5-4&from=paste&height=185&id=u1dd1bb2f&originHeight=305&originWidth=1344&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=43811&status=done&style=none&taskId=uede4d7d6-75d5-4509-b37c-30534d900b1&title=&width=814.5454074659979)<br />在宿主机中ping虚拟机<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698326249589-c101c9ec-7151-4120-88d0-730b6b139554.png#averageHue=%23181716&clientId=u49d19df0-8ad5-4&from=paste&height=292&id=u4269c7c0&originHeight=482&originWidth=921&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=93093&status=done&style=none&taskId=uca0a87b1-ed79-4da6-be17-f15bf6a1cdb&title=&width=558.1817859197798)<br />在Linux虚拟机中ping宿主机<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698326556639-1d6c92b1-8fcc-4748-b63d-662e8980bbcd.png#averageHue=%23191716&clientId=u49d19df0-8ad5-4&from=paste&height=253&id=u4ed2c4ae&originHeight=417&originWidth=1401&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=55876&status=done&style=none&taskId=ueba1c28d-ec0a-4b33-8dc8-e2469fbc007&title=&width=849.0908600147791)
<a name="xAWn2"></a>
## 7.3 进程-ps-kill-pstree指令
在Linux中，每个进程都分配一个ID号，即进程号pid。每个进程都可能以2种方式存在，即前台与后台，所谓前台是指用户目前在屏幕上可以进行操作的，后台则是实际在操作，但是屏幕上看不到，一般的系统服务都是以后台进程的方式存在，直到关机才结束。
```shell
// 显示当前终端的所有进程信息
ps -a

// 以用户的格式显示进程信息
ps -u

// 显示后台进程运行参数信息
ps -x

// 1. 进程指令选项可以组合使用，显示更多参数
ps -aux

// 以全格式显示当前所有的进程信息
ps -ef

// 2. 终止进程
kill [选项] 进程号
killall 进程名称

选项说明：
	-9 ：表示强迫进程立即停止

案例1：踢掉某个非法登录的用户
kill 对应的进程号

案例2：终止远程登录服务sshd，在适当的时候再次重启sshd服务
kill 进程号
执行  /bin/systemctl start sshd.service 重启

案例3：终止多个 gedit
killall 进程名称

案例4：强制杀死一个终端
kill -9 bash对应的进程号


// 3.查看进程树
pstree -p   // 显示进程的PID
pstree -u   // 显示进程的所属用户

案例1：以树状形式显示进程的pid
案例2：以树状形式显示用户id
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698328530735-4c96267e-5760-4a16-817a-9c032c0b2fe6.png#averageHue=%230d0c0b&clientId=u49d19df0-8ad5-4&from=paste&height=342&id=u4cde9a6f&originHeight=564&originWidth=1465&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=101007&status=done&style=none&taskId=ud41f159d-3313-491c-809d-8de68369235&title=&width=887.878736560779)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698328639429-75541b69-f4d7-421f-9875-14927b9e22b8.png#averageHue=%23070605&clientId=u49d19df0-8ad5-4&from=paste&height=191&id=ud77d8701&originHeight=315&originWidth=1566&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=35903&status=done&style=none&taskId=u7a21a5fa-fcf5-4232-bf4f-19ab5fd325a&title=&width=949.090854234935)<br />杀死父进程后，其下子进程也会被杀死<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698329009553-fa079610-3cc2-4f70-8972-f3c86a600f08.png#averageHue=%230f0e0d&clientId=u49d19df0-8ad5-4&from=paste&height=310&id=uc1e278a5&originHeight=511&originWidth=1483&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=67545&status=done&style=none&taskId=u82be06e9-52e7-46ee-ac7f-42857934de3&title=&width=898.7878268393414)<br />案例2：终止远程登录服务sshd，在适当的时候再次重启sshd服务<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698330178007-43e7cc1b-2059-41a8-8802-354853eb5836.png#averageHue=%23151312&clientId=u49d19df0-8ad5-4&from=paste&height=358&id=u7e6b80f8&originHeight=591&originWidth=1642&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=119867&status=done&style=none&taskId=ue5d0b36d-0460-4afe-8f54-a8d2bcc59bf&title=&width=995.15145763331)<br />以树状形式显示进程信息<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698330594079-8e0ea762-389f-4728-9226-9e60150edff1.png#averageHue=%230b0a09&clientId=u49d19df0-8ad5-4&from=paste&height=434&id=uf1ea35d9&originHeight=716&originWidth=1221&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=71925&status=done&style=none&taskId=ub241083d-3ea1-4545-bae3-2ba6006855c&title=&width=739.9999572291543)
<a name="cg96u"></a>
## 7.4 服务管理-systemctl指令
服务本质就是进程，但是是运行在后台的，通常都会监听某个端口，等待其它程序的请求，比如mysql、sshd、防火墙等，又称为守护进程
```shell
// 服务管理指令,Centos7.0后不再使用service,
// service服务指令管理信息在 /etc/init.d/ 下查看
// systemctl指令管理的服务在 /usr/lib/systemd/system 查看

// 查看服务
ls -l /usr/lib/systemd/system | grep 服务名

//管理服务
systemctl [start|stop|restart|status] 服务名

// 以窗口形式查看所有服务, tab键切换选项，空格键选择自启
setup

// 查看服务开启启动状态，grep可以过滤
systemctl list-unit-files | grep 服务名

// 设置服务开机启动
systemctl enable 服务名

// 关闭服务开机启动
systemctl disable 服务名

// 查看某个服务是否为开机自启
systemctl is-enabled 服务名

//查看网络端口情况
netstat -anp | more


案例1：查看当前防火墙服务的状态，关闭或重启防火墙
systemctl status firewalld
systemctl stop firewalld
systemctl restart firewalld
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698402476669-76c6e5f2-2cf1-43f0-a750-7cca4cb886fc.png#averageHue=%230b0a09&clientId=u49d19df0-8ad5-4&from=paste&height=153&id=u1aace423&originHeight=253&originWidth=985&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=24188&status=done&style=none&taskId=uaabc1a8a-03c0-4d51-8207-a2d2702c738&title=&width=596.9696624657797)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698402792746-67e06488-fbb8-45c9-b5b2-7f29d7d8ed9c.png#averageHue=%23dcddb1&clientId=u49d19df0-8ad5-4&from=paste&height=475&id=ub36ddd93&originHeight=783&originWidth=999&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=48637&status=done&style=none&taskId=uadcdb91f-7f19-4ea2-84bd-11d3d7dcfbe&title=&width=605.4545104602172)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698403706653-21779d65-0a3a-47cb-9946-e18d69f374ea.png#averageHue=%23100d0c&clientId=u49d19df0-8ad5-4&from=paste&height=156&id=u46b4d3ee&originHeight=258&originWidth=1159&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=32300&status=done&style=none&taskId=u0025ae65-e822-43c1-97a1-bf9eb02caef&title=&width=702.424201825217)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698403601827-351da03b-5f9b-4efe-bbc5-0efa4c3b3262.png#averageHue=%23100e0d&clientId=u49d19df0-8ad5-4&from=paste&height=322&id=u82c67641&originHeight=531&originWidth=1312&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=75995&status=done&style=none&taskId=udc0df3e1-8276-49f0-a856-763f04590b7&title=&width=795.151469192998)<br />查看网络端口的情况<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698404885464-2e352fa1-0b6c-4124-be23-9b3e13826ff5.png#averageHue=%230d0b0a&clientId=u49d19df0-8ad5-4&from=paste&height=322&id=u875fccd1&originHeight=531&originWidth=1754&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=129981&status=done&style=none&taskId=u83ffc92f-0107-40be-97e8-694dbe49d5d&title=&width=1063.0302415888098)
<a name="m6S0J"></a>
## 7.5 打开或关闭指定端口-firewall指令
如果打开防火墙，那么外部请求数据包就不能跟服务监听的端口通讯，此时需要打开指定的端口，比如 80、22、8080等
```shell
//查看网络端口情况
netstat -anp | more

// 1.打开端口
firewall-cmd --permanent --add-port=端口号/协议

// 2.关闭端口
firewall-cmd --permanent --remove-port=端口号/协议

// 3.打开或者关闭端口后，需要重新加载才能生效
firewall-cmd --reload

// 查看某个端口是否开放
firewall-cmd --query-port=端口号/协议
```
established 代表主机之间已经建立连接关系，通过端口进行通信<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698405808682-3a385fa5-350e-4622-96c8-6c6be8e32736.png#averageHue=%230c0a09&clientId=u49d19df0-8ad5-4&from=paste&height=425&id=u12aec6bf&originHeight=701&originWidth=1736&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=129197&status=done&style=none&taskId=ueb94f20d-4da0-4155-b413-d6a035ce474&title=&width=1052.1211513102473)<br />打开111端口，重新加载生效<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698406213483-9f8eb6b8-9c6b-4b13-a0d7-2299210dd3bf.png#averageHue=%230b0a09&clientId=u49d19df0-8ad5-4&from=paste&height=361&id=u2603e839&originHeight=596&originWidth=1806&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=84209&status=done&style=none&taskId=ud566ad03-a4cf-4250-8a42-0d0ddd76283&title=&width=1094.5453912824346)<br />查看端口是否打开<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698406434256-2d9c87e5-208a-48a3-a159-3dfae960c4e4.png#averageHue=%23090807&clientId=u49d19df0-8ad5-4&from=paste&height=93&id=u1e9402f8&originHeight=153&originWidth=1185&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=22031&status=done&style=none&taskId=u1763db2d-9198-4d01-8f1d-a461b70242f&title=&width=718.1817766720294)
<a name="PRu9l"></a>
## 7.6 动态监控系统-top指令
top 与 ps 命令相似，都用来显示正在执行的进程，top不同之处在于执行中可以更新正在运行的进程。
```shell
// 动态监控进程
top -d 秒数

top -i 

top -p 进程id

选项说明：
	-d 	指定top命令每隔几秒更新，默认是3秒
	-i	让top不显示任何闲置或者僵死的进程
	-p 	通过进程id来监控
```
<a name="Hggae"></a>
## 7.7 查看系统网络状态-netstat
```shell
// 查看网络情况
netstat -anp

选项说明：
	-an	按照一定顺序排列输出
	-p	显示哪个进程在调用
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698407355147-b7b85d1d-c399-4eb4-8c12-ec9532d7de89.png#averageHue=%230b0908&clientId=u49d19df0-8ad5-4&from=paste&height=199&id=u79560111&originHeight=329&originWidth=1707&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=59915&status=done&style=none&taskId=u3bbe36f0-3edf-4adb-bc72-a00e2aec5f5&title=&width=1034.545394750341)
<a name="v1uwc"></a>
# 8 软件包管理-rpm-yum-安装JDK-Tomcat
<a name="ha8Db"></a>
## 8.1 rpm 与 yum 包管理
```shell
// 查询已安装的所有软件包
rpm -qa | more
rpm -qa | grep 软件包名

// 查询软件包是否安装
rpm -q firefox

// 查询软件包信息
rpm -qi 软件包名

// 查询软件包中的文件
rpm -ql 软件包名

// 查询某个文件所属的软件包
rpm -qf /etc/passwd  //比如 passwd指令
rpm -qf /root/install.log

// 卸载软件包
rpm -e 软件包

注意：如果其它软件包依赖于你要卸载的软件包，卸载时会产生错误信息,比如 foo，
可以增加参数 --nodeps进行强制删除，一般不推荐，会导致该依赖的软件包无法运行
rpm -e --nodeps foo

// 安装rpm包软件
rpm -ivh 目录下rpm包全路径名称

```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698408446259-1a3bde79-3d59-49fd-ae4f-6961f80fbabe.png#averageHue=%23080707&clientId=u49d19df0-8ad5-4&from=paste&height=413&id=u19bee85b&originHeight=682&originWidth=995&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=77851&status=done&style=none&taskId=u00182c6a-a871-4cd5-a9a5-2ac74b655af&title=&width=603.0302681760922)<br />yum基于rpm包管理，能够从指定的服务器自动下载rpm包并且安装，可以自动处理依赖性关系，并且一次安装所有依赖的软件包。
```shell
// 查询yum服务器是否有需要安装的软件
yum list | grep 软件包名

// 安装指定的yum包
yum install 软件包名


```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698409288834-6f46e050-c0bb-46c2-bd22-195725067957.png#averageHue=%2313100e&clientId=u49d19df0-8ad5-4&from=paste&height=424&id=u1dffa335&originHeight=700&originWidth=1440&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=132067&status=done&style=none&taskId=ub65fa28c-5491-4675-80e0-f6c536a6d5b&title=&width=872.7272222849978)
<a name="oxGYv"></a>
## 8.2 安装JDK8
华为镜像下载：[https://repo.huaweicloud.com](https://repo.huaweicloud.com/java/jdk/)<br />JDK下载：[https://repo.huaweicloud.com/java/jdk/](https://repo.huaweicloud.com/java/jdk/)

1. mkdir /opt/jdk
2. 把下载好的 jdk.tar.gz 软件包通过 XFTP 上传到Linux虚拟机的目录下
3. cd /opt/jdk
4. 解压  tar -zxvf  压缩包
5. mkdir /usr/local/java
6. mv  /opt/jdk/jdk1.8.0_202   /usr/local/java/	把解压的目录移动到 /local/java目录下
7. cd /usr/local/java/jdk1.8.0_202 
8. cd bin/	进入bin目录下
9. 执行  ./java -version    其中 ./ 表示在当前目录下执行脚本程序

此时可以看到jdk版本信息，但是切换到其它目录下发现没有了，因为没有配置环境变量，需要在 /etc/profile  文件中添加配置，最后需要重新刷新配置文件生效

10. vim /etc/profile	配置java环境变量，在文件最后添加如下：

export JAVA_HOME=/usr/local/java/jdk1.8.0_202<br />export PATH=$JAVA_HOME/bin:$PATH

11. source /etc/profile	 刷新配置文件生效

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698415239920-628eddfd-142f-4aac-8dd7-3b7a90410e01.png#averageHue=%230e0c0b&clientId=u49d19df0-8ad5-4&from=paste&height=76&id=uf7375915&originHeight=125&originWidth=1248&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=12295&status=done&style=none&taskId=u237dbef3-8193-4ca1-b2ce-6c5d0ce1c3b&title=&width=756.3635926469981)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698415439359-a6225186-55fe-41b0-a01e-9ce633ce3e0a.png#averageHue=%23030201&clientId=u49d19df0-8ad5-4&from=paste&height=162&id=ud0074597&originHeight=267&originWidth=1014&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=58204&status=done&style=none&taskId=u6890b01f-5174-4068-b594-3ae6fcc976b&title=&width=614.5454190256859)
<a name="BhPSN"></a>
## 8.3 安装配置Tomcat
tomcat下载：[https://mirrors.huaweicloud.com/apache/tomcat/](https://mirrors.huaweicloud.com/apache/tomcat/)

1. mkdir  /opt/tomcat    创建tomcat目录并进入
2. cd  /opt/tomcat
3. 把下载好的 tomcat.tar.gz 软件包通过 XFTP 上传到Linux虚拟机的目录下
4. tar  -zxvf  压缩包名     解压
5. 进入解压后的目录
6. 进入 bin 目录下
7. 执行  ./startup.sh  命令启动tomcat服务

此时在windows 宿主机浏览器地址栏中输入 Linux主机ip:8080 发现无法访问，那是因为虚拟机的防火墙服务是处于开启状态的，导致8080端口的请求被拦截下了。需要打开8080服务端口，重新加载后生效，再次访问可以看到tomcat欢迎页面。

8. firewall-cmd --permanent --add-port=8080/tcp	打开8080端口
9. firewall-cmd --reload	重新加载生效
10. firewall-cmd --query-port=8080/tcp   查看8080端口是否开放

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698412403312-74c8719b-1183-4a3f-a4a3-35c5e52b1cfd.png#averageHue=%23272524&clientId=u49d19df0-8ad5-4&from=paste&height=162&id=ud073a741&originHeight=268&originWidth=1494&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=47404&status=done&style=none&taskId=u9919500c-9d04-4263-9c8d-3ed73eba7f3&title=&width=905.4544931206851)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698412707055-241caaf1-4510-4b00-ae89-884d290eb77a.png#averageHue=%230c0909&clientId=u49d19df0-8ad5-4&from=paste&height=505&id=u87b7d3fb&originHeight=833&originWidth=1811&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=185860&status=done&style=none&taskId=u18734f7e-4831-425d-8647-5eb8aad6e2d&title=&width=1097.575694137591)<br />查看Linux虚拟机ip<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698413806240-55d3565d-2828-41d4-af08-9208180b0a6a.png#averageHue=%230f0e0c&clientId=u49d19df0-8ad5-4&from=paste&height=308&id=ucf5e232a&originHeight=509&originWidth=1374&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=71218&status=done&style=none&taskId=ue1973359-e89e-48d4-b2cc-44857c8d7e3&title=&width=832.7272245969353)<br />打开8080网络端口，并重新加载生效<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698413983917-8b84d058-d36d-4365-ad1d-2b9c979909ab.png#averageHue=%230c0b0a&clientId=u49d19df0-8ad5-4&from=paste&height=394&id=u82c9b5c6&originHeight=650&originWidth=1764&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=124211&status=done&style=none&taskId=uc77cd401-b38e-4d11-9699-af0b79b8d62&title=&width=1069.0908472991223)<br />此时可以看到8080端口已经开放，其它外部主机就可以访问该网络端口了<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698414104052-2dbde1b6-e3e7-4e19-ac66-9282311b0d13.png#averageHue=%231d1c1c&clientId=u49d19df0-8ad5-4&from=paste&height=110&id=u20f0ecb4&originHeight=181&originWidth=1151&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=26749&status=done&style=none&taskId=u7c3dcf4e-bd62-4e1e-95fe-716407f1d4a&title=&width=697.575717256967)<br />浏览器访问，欢迎页面<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1698414353192-00bcd09b-adcf-4655-91ee-f28f9664577b.png#averageHue=%23f4e4b8&clientId=u49d19df0-8ad5-4&from=paste&height=570&id=u0c4fb155&originHeight=940&originWidth=2032&originalType=binary&ratio=1.6500000953674316&rotation=0&showTitle=false&size=280826&status=done&style=none&taskId=u43b52766-9161-4e1c-a38d-55a503be6d7&title=&width=1231.5150803354968)
<a name="c0hth"></a>
## 8.4 安装 nginx
官网下载：[http://nginx.org/en/download.html](http://nginx.org/en/download.html)<br />参考文章：[https://blog.csdn.net/qq_45752401/article/details/122660965?](https://blog.csdn.net/qq_45752401/article/details/122660965?)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699858027450-ae898684-19d9-475b-aa5a-ecb8f92e0a89.png#averageHue=%23eaeaea&clientId=u1f00b01a-fa65-4&from=paste&height=474&id=u94e570ce&originHeight=711&originWidth=1669&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=154067&status=done&style=none&taskId=uea054ff0-0958-4302-befa-dcc687f1589&title=&width=1112.6666666666667)

1. 把下载好的资源包上传到 Linux服务器的某个目录下，进行解压后：  tar -zxvf  资源包  

![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699858226076-e26f7dca-517f-457b-a506-66e92c7054ef.png#averageHue=%23030202&clientId=u1f00b01a-fa65-4&from=paste&height=191&id=u681e502f&originHeight=286&originWidth=1364&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=25887&status=done&style=none&taskId=u72445cda-3407-4c0e-8b0e-f9f6245fe77&title=&width=909.3333333333334)

2. 进入解压后的目录   cd   nginx-1.24.0，执行如下命令配置，可以看到目录下，多了一个Makefile文件
```shell
# 配置configure 
# --prefix 代表安装的路径，
# --with-http_ssl_module 安装ssl，
# --with-http_stub_status_module查看nginx的客户端状态

./configure --prefix=/usr/local/nginx-1.24.0 --with-http_ssl_module --with-http_stub_status_module

```
如果你执行的时候出现以下问题：<br />**问题1：**<br />![](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699858535420-1af9f0fa-78d0-4fcf-a24c-00df26b6c189.png#averageHue=%23213c4f&clientId=u1f00b01a-fa65-4&from=paste&id=ucd1906ce&originHeight=340&originWidth=1879&originalType=url&ratio=1.5&rotation=0&showTitle=false&status=done&style=none&taskId=u230d4a3d-4f37-44a7-bf3b-042d0065f3b&title=)

- 输入以下命令
```powershell
yum -y install gcc gcc-c++ autoconf automake make
```
**问题2：**<br />![](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699858601445-bbaa50a6-4693-4c7c-b273-49910d5ea609.png#averageHue=%23213a4d&clientId=u1f00b01a-fa65-4&from=paste&id=ue6b4fcae&originHeight=226&originWidth=1149&originalType=url&ratio=1.5&rotation=0&showTitle=false&status=done&style=none&taskId=u483ccfab-fbf2-4ca5-a80d-beb009ab7d5&title=)

- 输入以下命令
```powershell
yum -y install openssl openssl-devel
```

3. 进行编译安装 nginx  
```shell
// 编译安装
make & make install
```

4. 进入到刚才指定的安装位置目录下，进入sbin目录下，执行一下命令启动
```shell
cd /usr/local/nginx-1.24.0/sbin

// 启动nginx服务
./nginx
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699858975755-f5548507-a2b4-490d-8c2b-62c9824885f8.png#averageHue=%23070706&clientId=u1f00b01a-fa65-4&from=paste&height=333&id=ub4cb7ad7&originHeight=500&originWidth=1743&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=85418&status=done&style=none&taskId=uf6a69848-1a89-44ca-8301-1c957d69361&title=&width=1162)

5. 配置环境变量，这样在任意目录下都可以使用 nginx 命令了
```shell
// 编辑配置文件
vim /etc/profile

// 刷新文件生效
source /etc/profile
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699859144228-99d48a08-6db1-47d0-9bed-582adc686584.png#averageHue=%23080706&clientId=u1f00b01a-fa65-4&from=paste&height=292&id=u8ca02e7f&originHeight=438&originWidth=1094&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=33807&status=done&style=none&taskId=ud326c328-3caf-4643-8e6c-42d8e6b4e54&title=&width=729.3333333333334)

6. 访问： 虚拟机IP:80   (如果浏览器访问不了，可能是被防火墙拦截网络请求了，可以直接关闭防火墙，但不推荐，最好是通过 firewall 命令来开放指定的端口)
```shell
# 1. 添加 --permanent永久生效，没有此参数重启后失效 这里的80为nginx服务的端口，若为其他服务设置，需要对应端口
firewall-cmd --zone=public --add-port=6379/tcp --permanent 

# 2. 重新载入，使得配置生效
firewall-cmd --reload

# 查看所有打开的端口
firewall-cmd --zone=public --list-ports

# 防火墙的关闭： 
systemctl stop firewalld	//一般不用

# 防火墙的启动
systemctl start firewalld

```

7. 如果需要修改 nigix 配置，在安装目录 conf 下找到  nginx.conf  文件，修改之后需要重新加载生效
```shell
// 启动 nginx 服务
nginx

// 重新加载配置文件生效
nginx -s reload
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699859714530-f411581b-8ada-4a9d-a648-9e199ab3e88d.png#averageHue=%230c0b0a&clientId=u1f00b01a-fa65-4&from=paste&height=533&id=u4a66b873&originHeight=800&originWidth=1294&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=127067&status=done&style=none&taskId=u6d2cc7f7-b38a-436f-b447-4ef53a03cdf&title=&width=862.6666666666666)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699859899948-704a934b-a65b-4c6b-b94f-f962268967bc.png#averageHue=%23030302&clientId=u1f00b01a-fa65-4&from=paste&height=447&id=u56bb0065&originHeight=670&originWidth=1219&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=64512&status=done&style=none&taskId=u3ac7000a-a2e7-474a-9227-7ca3533371b&title=&width=812.6666666666666)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699860009496-4ef9fad1-bd67-4a10-a276-2616c8c99385.png#averageHue=%23050403&clientId=u1f00b01a-fa65-4&from=paste&height=486&id=u98dbb959&originHeight=729&originWidth=952&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=68978&status=done&style=none&taskId=u56993395-10a6-4e8c-89c2-e9de1b9166e&title=&width=634.6666666666666)

8. 查看所有启动的服务情况
```shell
netstat -ntlp

netstat -anp | more

netstat -anp | grep nginx
```
![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699860128190-8221941c-7b9e-4c9b-b4fb-cf1d99d8e434.png#averageHue=%230a0908&clientId=u1f00b01a-fa65-4&from=paste&height=355&id=ubf521278&originHeight=533&originWidth=1787&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=94149&status=done&style=none&taskId=u26d7ce76-c7c9-410b-a802-0f645227997&title=&width=1191.3333333333333)
<a name="OJnXB"></a>
## 8.5 安装 mysql 5.7
参考文章：[https://blog.csdn.net/qq_20780541/article/details/122035569?](https://blog.csdn.net/qq_20780541/article/details/122035569?)<br />官网下载：[https://downloads.mysql.com/archives/community/](https://downloads.mysql.com/archives/community/)<br />MySQL5.7资源包：(mysql-5.7.30-linux-glibc2.12-x86_64.tar.gz)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699860399552-09895f04-dc15-4ca6-8ca4-5d8034c9d8eb.png#averageHue=%23f8f7f2&clientId=u1f00b01a-fa65-4&from=paste&height=507&id=u31a1a39d&originHeight=761&originWidth=2227&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=161044&status=done&style=none&taskId=uf3edfec1-2c42-4541-835d-faf56ae53c1&title=&width=1484.6666666666667)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699860863392-52753602-da91-410c-b033-2256942886b3.png#averageHue=%230a0908&clientId=u1f00b01a-fa65-4&from=paste&height=439&id=u14341905&originHeight=659&originWidth=1758&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=122420&status=done&style=none&taskId=u2c430d8e-ed6c-4ccc-a677-df9da881169&title=&width=1172)<br />![image.png](https://cdn.nlark.com/yuque/0/2023/png/35352732/1699861064068-91243e4d-846e-4e62-a6c0-ea671b6e8226.png#averageHue=%23100f0e&clientId=u1f00b01a-fa65-4&from=paste&height=368&id=u2659e249&originHeight=552&originWidth=1509&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=68137&status=done&style=none&taskId=u10cc0cf3-6ac8-48a4-84e7-6fcb3b1fa7c&title=&width=1006)
<a name="T9MZ6"></a>
# 9 P91-P153集未看
