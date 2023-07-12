#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:3c09c646f52186825a4fa7f092d79e8794ed5550; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:8ee28e16edaa0ef91c253b2b4f9814c5f386a957 \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:3c09c646f52186825a4fa7f092d79e8794ed5550 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
