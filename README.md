命令行stardict

(Command line Stardict which can search words from many dicts)

部分源码来处网络，大家可以自由使用

(Some of the codes  are from the internet , And You can use it free)

仅为学习之用

(It is only for study to me.)

本人网站

(my website: http://www.redlinux.org)

日期
Date: 20151231

安装

Install:

    ./install.sh

使用

Usage: 

[user@localhost ~]$ s dictionary

[Dict: cdict-gb.dict]

[ˋdIkʃәnˏєrI;ˊdikʃәnri,-ʃәnәri]

<<名词>>

字典, 辞典

[Dict: oxford-gb-formated.dict]

/ˈdɪkʃənrɪ;   [US]    -nerɪ; `dɪkʃəˌnɛrɪ/
n
(a) book that lists and explain, and is usu arranged in 
alphabetical order 字典; 词典
*an English dictionary 英语词典.


[备注]

[Comment]

  dicts/a.dict (新下下来的词典为 a.dict.dz,  请使用 7z x a.dict.dz)

  dicts/a.idx

  dicts/a.ifo


词典下载: 

Download dicts: 

  http://download.huzheng.org/

  http://download.huzheng.org/zh_CN/


安装词典:

Install Dicts:

  $  tar xvf a-2.4.2.tar.bz2 

  $  cd a-2.4.2/

  $ 7z  x  a.dict.dz 

  $ cp -pfr a.dict a.idx a.ifo  $STARDICT_HOME/dicts/
