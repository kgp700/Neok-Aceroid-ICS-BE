clear
echo "============================================================"
echo "                   Start Auto-Compiling                     "
echo "============================================================"
echo "============================================================"
echo "                         Cleaning                           "
echo "============================================================"
make clean mrproper
defconfig=spade
echo "============================================================"
echo "           Compiling Desire HD/Inspire 4G Kernel            "
echo "============================================================"
make spade_defconfig 
make -j`grep 'processor' /proc/cpuinfo | wc -l`
./copy.sh $defconfig;
clear
echo "============================================================"
echo "                         Cleaning                           "
echo "============================================================"
make clean mrproper
defconfig=glacier
echo "============================================================"
echo "                Compiling MyTouch4G Kernel                  "
echo "============================================================"
make glacier_defconfig 
make -j`grep 'processor' /proc/cpuinfo | wc -l`
./copy.sh $defconfig;
clear
echo "============================================================"
echo "                         Cleaning                           "
echo "============================================================"
make clean mrproper
defconfig=vision
echo "============================================================"
echo "               Compiling Desire Z/G2 Kernel                 "
echo "============================================================"
make vision_defconfig 
make -j`grep 'processor' /proc/cpuinfo | wc -l`
./copy.sh $defconfig;
clear
echo "============================================================"
echo "                         Cleaning                           "
echo "============================================================"
make clean mrproper
defconfig=saga
echo "============================================================"
echo "                 Compiling Desire S Kernel                  "
echo "============================================================"
make saga_defconfig 
make -j`grep 'processor' /proc/cpuinfo | wc -l`
./copy.sh $defconfig;
clear
echo "============================================================"
echo "                         Cleaning                           "
echo "============================================================"
make clean mrproper
defconfig=vivo
echo "============================================================"
echo "         Compiling Incredible S/Incredible 2 Kernel         "
echo "============================================================"
make vivo_defconfig 
make -j`grep 'processor' /proc/cpuinfo | wc -l`
./copy.sh $defconfig;
clear
echo "============================================================"
echo "                          Done!!                            "
echo "============================================================"
read ANS
done
