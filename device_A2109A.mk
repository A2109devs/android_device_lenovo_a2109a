#
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/lenovo/A2109A/A2109A-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/A2109A/overlay
	
PRODUCT_COPY_FILES += \
    device/lenovo/A2109A/k/fstab.kai:root/fstab.kai \
	device/lenovo/A2109A/k/init.IdeaTabA2109A_board.usb.rc:root/init.IdeaTabA2109A_board.usb.rc \
	device/lenovo/A2109A/k/init.kai.rc:root/init.kai.rc \
	device/lenovo/A2109A/k/init.tf.rc:root/init.tf.rc \
	device/lenovo/A2109A/k/ueventd.kai.rc:root/ueventd.kai.rc \
	device/lenovo/A2109A/recovery.fstab:recovery/root/etc/recovery.fstab \
	
PRODUCT_COPY_FILES += \
    device/lenovo/A2109A/k/vold.fstab:system/etc/vold.fstab \
    device/lenovo/A2109A/k/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc \
    device/lenovo/A2109A/k/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
    device/lenovo/A2109A/k/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc \
    device/lenovo/A2109A/k/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# kmods
PRODUCT_COPY_FILES += \
    device/lenovo/A2109A/modules/baseband_usb_chr.ko:system/lib/modules/baseband_usb_chr.ko \
	device/lenovo/A2109A/modules/baseband-xmm-power2.ko:system/lib/modules/baseband-xmm-power2.ko \
	device/lenovo/A2109A/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
	device/lenovo/A2109A/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
	device/lenovo/A2109A/modules/inv_mpu_ak8975.ko:system/lib/modules/inv_mpu_ak8975.ko \
	device/lenovo/A2109A/modules/inv_mpu_ak89xx.ko:system/lib/modules/inv_mpu_ak89xx.ko \
	device/lenovo/A2109A/modules/inv_mpu_kxtf9.ko:system/lib/modules/inv_mpu_kxtf9.ko \
	device/lenovo/A2109A/modules/lib80211.ko:system/lib/modules/lib80211.ko \
	device/lenovo/A2109A/modules/mac80211.ko:system/lib/modules/mac80211.ko \
	device/lenovo/A2109A/modules/mpu3050.ko:system/lib/modules/mpu3050.ko \
	device/lenovo/A2109A/modules/mpu6050b1.ko:system/lib/modules/mpu6050b1.ko \
	device/lenovo/A2109A/modules/raw_ip_net.ko:system/lib/modules/raw_ip_net.ko \
	device/lenovo/A2109A/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/lenovo/A2109A/modules/tcrypt.ko:system/lib/modules/tcrypt.ko \

#bcm
PRODUCT_COPY_FILES += \
	device/lenovo/A2109A/bcm/fw_bcmdhd.bin:system/vendor/firmware/bcm4330/fw_bcmdhd.bin \
	device/lenovo/A2109A/bcm/fw_bcmdhd_apsta.bin:system/vendor/firmware/bcm4330/fw_bcmdhd_apsta.bin \
	device/lenovo/A2109A/bcm/fw_bcmdhd_p2p.bin:system/vendor/firmware/bcm4330/fw_bcmdhd_p2p.bin \
	device/lenovo/A2109A/bcm/mfg.bin:system/vendor/firmware/bcm4330/mfg.bin \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Build characteristics setting 
PRODUCT_CHARACTERISTICS := tablet
	
# Propertys spacific for this device
PRODUCT_PROPERTY_OVERRIDES += \
	ro.wifi.channels=14 \
    wifi.interface=wlan0 \
	ap.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    tf.enable=y \
	drm.service.enabled=true \
    ro.opengles.version=131072 \
	persist.sys.usb.config=mtp,adb \
	persist.sys.systembar.tablet=true

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
    persist.tegra.nvmmlite=1 \
	persist.sys.NV_FPSLIMIT=0 \
	ro.sf.override_null_lcd_density = 1 \
	keyguard.no_require_sim=true

# Extra packages to build for this device
PRODUCT_PACKAGES += \
	setup_fs \
	NvCPLSvc \
    audio.a2dp.default \
    audio.usb.default \
    libaudioutils \
    tinymix \
    tinyplay \
    tinyrec \
    librs_jni \
    make_ext4fs \
    l2ping \
    hcitool \
    bttest \
    com.android.future.usb.accessory \
    whisperd \
    libaudioutils \
    libinvensense_mpl

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# media config xml file
PRODUCT_COPY_FILES += \
    device/lenovo/A2109A/k/media_profiles.xml:system/etc/media_profiles.xml \
    device/lenovo/A2109A/k/media_codecs.xml:system/etc/media_codecs.xml \
    device/lenovo/A2109A/k/audio_policy.conf:system/etc/audio_policy.conf

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
