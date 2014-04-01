#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "make framework2.jar"

    rm "framework2.jar.out/" -rf
	mkdir -p "framework2.jar.out/smali"
	touch "framework2.jar.out/apktool.yml"
	echo "version: 1.4.3" >> "framework2.jar.out/apktool.yml"
	echo "apkFileName: framework2.jar" >> "framework2.jar.out/apktool.yml"
	
	mkdir -p "framework2.jar.out/smali/android"
	mv "out/framework/smali/android/gesture" "framework2.jar.out/smali/android"
	mv "out/framework/smali/android/test" "framework2.jar.out/smali/android"
	
	mkdir -p "framework2.jar.out/smali/android/media"
	mv "out/framework/smali/android/media/audiofx" "framework2.jar.out/smali/android/media"
	mv "out/framework/smali/android/media/effect" "framework2.jar.out/smali/android/media"
	mv "out/framework/smali/android/media/videoeditor" "framework2.jar.out/smali/android/media"
fi
