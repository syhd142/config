config
============


我的linux下配置，一键部署，可供参考

    aliases(命令别名)
    bin(机器登陆脚本)
    vim (一键部署强大的vim)
    completion (常用工具命令补全)


###NOTICE

2014-12-31 更新完毕

###部署

一键配置，直接执行

    sh -x install.sh
    cd vim/team_bundle/
    git clone https://github.com/VundleVim/Vundle.vim.git
    git submodule update --init
    打开Vim，输入:BundleInstal(安装vim插件)
    source ~/.bash_profile
    进入项目目录，vj 进入ide


------------------------


The End!

Email: syhd142@gmail.com

Github: https://github.com/syhd142
