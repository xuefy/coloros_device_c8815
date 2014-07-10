#!/bin/bash

#先安装dexcrypt
#将脚本文件customize_crypt_frameworks.sh 放到项目根目录下。
#修改项目makefile在local-pre-zip-misc:下面增加调用如：
#local-pre-zip-misc:
#                      bash customize_crypt_frameworks.sh
#然后编译过程中会弹出dexcrypt，选择文件encrypt_temp/apk_tmp.apk 点Crypt，等提示加密完成就关闭dexcrypt。

DIR=`pwd`
FILE="app/SystemUI.apk app/Phone.apk framework/android.policy.jar framework/pm.jar framework/services.jar framework/framework.jar"
mkdir -p $DIR/encrypt_temp/
WKTMP=$DIR/encrypt_temp
for f in $FILE
do
	if [ -e $DIR/new-update/system/$f ];
	then
		echo copy SettingsProvider as template
		cp -f $DIR/new-update/system/app/SettingsProvider.apk $WKTMP/apk_tmp.apk
		unzip -o $DIR/new-update/system/$f classes.dex -d $WKTMP/
		zip -j $WKTMP/apk_tmp.apk $WKTMP/classes.dex
		echo Please choose $WKTMP/apk_tmp.apk in QtDexCrypt to encrypt $f
		QtDexCrypt
		rm -f $WKTMP/classes.dex
		unzip -o $WKTMP/apk_tmp.apk.dexcrypt.apk classes.dex -d $WKTMP/
		zip -j $DIR/new-update/system/$f $WKTMP/classes.dex
		echo $f encrypt done
	else
		echo $f NOT FOUND in this build,skip the encryption. processing next file
	fi
done
rm -rf $WKTMP
