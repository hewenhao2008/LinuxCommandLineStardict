有声命令行stardict电子词典
sounds dictionary

[ from internet for the internet (http://www.redlinux.org) ]

====================================

Install:

       $ ./install.sh
 
       $ source ~/.bashrc

 Ubuntu$ sudo apt-get install espeak espeak-data

 CentOS$ sudo yum install espeak espeak-data

====================================

Usage: 

   Normal Search Words:
  
   [user@localhost ~]$ s dictionary


   Speak word with espeak:

   [user@localhost ~]$ sp dictionary


   Only Speak word:


   [user@localhost ~]$ sv dictionary


====================================

Download dicts: 

  http://download.huzheng.org/

  http://download.huzheng.org/zh_CN/


Install Dicts:

  $  tar xvf a-2.4.2.tar.bz2 

  $  cd a-2.4.2/

  $ 7z  x  a.dict.dz 

  $ cp -pfr a.dict a.idx a.ifo  $STARDICT_HOME/dicts/
