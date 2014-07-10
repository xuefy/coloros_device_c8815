#!/bin/bash

DIR=`pwd`
CUSTDIR=$DIR/customize
java -jar $CUSTDIR/apktool.jar if $DIR/new-update/system/framework/oppo-framework-res.apk
java -jar $CUSTDIR/apktool.jar if $DIR/new-update/system/framework/framework-res.apk

echo "开始处理 oppo-framework ..."
rm -rf $CUSTDIR/oppo-framework_dex
${PORT_TOOLS}/apktool d $DIR/new-update/system/framework/oppo-framework.jar $CUSTDIR/oppo-framework_dex
cd $CUSTDIR/oppo-framework_dex
patch -p1 < ../oppo-framework_dex.patch
cd $CUSTDIR
${PORT_TOOLS}/apktool b oppo-framework_dex oppo-framework.jar
mv -f $CUSTDIR/oppo-framework.jar $DIR/new-update/system/framework/oppo-framework.jar
rm -rf $CUSTDIR/oppo-framework_dex
cd $DIR
echo "oppo-framework 处理完成"
echo ""

cp -rf $CUSTDIR/res_mod/mod/* $DIR/new-update/
rm -f $DIR/new-update/system/app/OppoCompass.apk
#bash customize_crypt_frameworks.sh
