current_ver=$1
CMP=../compiled
SPACMP=../compiled/spade
GLACMP=../compiled/glacier
VISCMP=../compiled/vision
SAGCMP=../compiled/saga
VIVCMP=../compiled/vivo

if [ ! -e $CMP ]
then
	mkdir $CMP
fi

if [ "$current_ver" == "spade" ]
then
  if [ -e $SPACMP ]
    then
      rm -r $SPACMP
  fi
  if [ ! -e $SPACMP ]
    then
      mkdir $SPACMP $SPACMP/modules
  fi
  echo "============================================================"
  echo "      Copying Desire HD/Inspire 4G Kernel and Modules       "
  echo "============================================================"
  cp arch/arm/common/cpaccess.ko $SPACMP/modules/cpaccess.ko
  cp arch/arm/mach-msm/reset_modem.ko $SPACMP/modules/reset_modem.ko
  cp arch/arm/mach-msm/dma_test.ko $SPACMP/modules/dma_test.ko
  cp drivers/net/wireless/bcmdhd/bcmdhd.ko $SPACMP/modules/bcmdhd.ko
  cp drivers/scsi/scsi_wait_scan.ko $SPACMP/modules/scsi_wait_scan.ko
  cp drivers/net/kineto_gan.ko $SPACMP/modules/kineto_gan.ko
  cp arch/arm/boot/zImage $SPACMP/zImage
fi

if [ "$current_ver" == "glacier" ]
then
  if [ -e $GLACMP ]
    then
      rm -r $GLACMP
  fi
  if [ ! -e $GLACMP ]
    then
      mkdir $GLACMP $GLACMP/modules
  fi
  echo "============================================================"
  echo "           Copying MyTouch4G Kernel and Modules             "
  echo "============================================================"
  cp drivers/net/wireless/bcmdhd/bcmdhd.ko $GLACMP/modules/bcmdhd.ko
  cp drivers/scsi/scsi_wait_scan.ko $GLACMP/modules/scsi_wait_scan.ko
  cp arch/arm/boot/zImage $GLACMP/zImage
fi

if [ "$current_ver" == "vision" ]
then
  if [ -e $VISCMP ]
    then
      rm -r $VISCMP
  fi
  if [ ! -e $VISCMP ]
    then
      mkdir $VISCMP $VISCMP/modules
  fi
  echo "============================================================"
  echo "          Copying Desire Z/G2 Kernel and Modules            "
  echo "============================================================"
  cp arch/arm/common/cpaccess.ko $VISCMP/modules/cpaccess.ko 
  cp arch/arm/mach-msm/reset_modem.ko $VISCMP/modules/reset_modem.ko 
  cp arch/arm/mach-msm/dma_test.ko $VISCMP/modules/dma_test.ko 
  cp drivers/net/wireless/bcmdhd/bcmdhd.ko $VISCMP/modules/bcmdhd.ko 
  cp drivers/net/kineto_gan.ko $VISCMP/modules/kineto_gan.ko 
  cp drivers/scsi/scsi_wait_scan.ko $VISCMP/modules/scsi_wait_scan.ko
  cp arch/arm/boot/zImage $VISCMP/zImage
fi

if [ "$current_ver" == "saga" ]
then
  if [ -e $SAGCMP ]
    then
      rm -r $SAGCMP
  fi
  if [ ! -e $SAGCMP ]
    then
      mkdir $SAGCMP $SAGCMP/modules
  fi
  echo "============================================================"
  echo "            Copying Desire S Kernel and Modules             "
  echo "============================================================"
  cp arch/arm/common/cpaccess.ko $SAGCMP/modules/cpaccess.ko 
  cp arch/arm/mach-msm/dma_test.ko $SAGCMP/modules/dma_test.ko 
  cp arch/arm/mach-msm/reset_modem.ko $SAGCMP/modules/reset_modem.ko 
  cp crypto/ansi_cprng.ko $SAGCMP/modules/ansi_cprng.ko
  cp drivers/crypto/msm/qce.ko $SAGCMP/modules/qce.ko
  cp drivers/crypto/msm/qcedev.ko $SAGCMP/modules/qcedev.ko 
  cp drivers/crypto/msm/qcrypto.ko $SAGCMP/modules/qcrypto.ko 
  cp drivers/net/kineto_gan.ko $SAGCMP/modules/kineto_gan.ko
  cp drivers/net/wireless/bcmdhd/bcmdhd.ko $SAGCMP/modules/bcmdhd.ko
  cp drivers/net/wireless/libra/librasdioif.ko $SAGCMP/modules/librasdioif.ko
  cp drivers/staging/ti-st/fm_drv.ko $SAGCMP/modules/fm_drv.ko 
  cp arch/arm/boot/zImage $SAGCMP/zImage
fi

if [ "$current_ver" == "vivo" ]
then
  if [ -e $VIVCMP ]
    then
      rm -r $VIVCMP
  fi
  if [ ! -e $VIVCMP ]
    then
      mkdir $VIVCMP $VIVCMP/modules
  fi
  echo "============================================================"
  echo "    Copying Incredible S/Incredible 2 Kernel and Modules    "
  echo "============================================================"
  cp arch/arm/common/cpaccess.ko $VIVCMP/modules/cpaccess.ko 
  cp arch/arm/mach-msm/dma_test.ko $VIVCMP/modules/dma_test.ko 
  cp arch/arm/mach-msm/reset_modem.ko $VIVCMP/modules/reset_modem.ko 
  cp crypto/ansi_cprng.ko $VIVCMP/modules/ansi_cprng.ko
  cp drivers/crypto/msm/qce.ko $VIVCMP/modules/qce.ko
  cp drivers/crypto/msm/qcedev.ko $VIVCMP/modules/qcedev.ko 
  cp drivers/crypto/msm/qcrypto.ko $VIVCMP/modules/qcrypto.ko 
  cp drivers/net/wireless/bcmdhd/bcmdhd.ko $VIVCMP/modules/bcmdhd.ko
  cp drivers/net/wireless/libra/librasdioif.ko $VIVCMP/modules/librasdioif.ko
  cp drivers/staging/ti-st/fm_drv.ko $VIVCMP/modules/fm_drv.ko 
  cp arch/arm/boot/zImage $VIVCMP/zImage
fi
