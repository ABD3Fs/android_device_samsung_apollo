# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for apollo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and apollo, hence its name.
#

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/apollo/overlay

PRODUCT_LOCALES += mdpi ldpi

PRODUCT_COPY_FILES += \
        device/samsung/apollo/gps.conf:system/etc/gps.conf \
        device/samsung/apollo/secgps.conf:system/etc/secgps.conf

PRODUCT_PACKAGES += \
    brcm_patchram_plus \
    gralloc.s5p6442 \
    sensors.s5p6442 \
    copybit.s5p6442 \
    gps.s5p6442 \
    lights.s5p6442 \
    libGLES_fimg \
    FileManager \
    screencap \
    hwcomposer.default \
    Gallery \
    libsecgps.so
#    
#    
#    sensors.s5p6442 \
#    camera.s5p6442 \
#    
#    libGLES_fimg \
#    screencap \
#    CMWallpapers \
#    Pacman \
#    Stk \
#    FM \
#    Superuser \
#    FileManager \
#    Androidian \
#    Cyanbread \
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    MagicSmokeWallpapers \
#    VisualizationWallpapers \
#    librs_jni


# audio
PRODUCT_PACKAGES += \
	audio_policy.s5p6442 \
	audio.primary.s5p6442 \
	audio.a2dp.default \
	audio.usb.default

# Bluetooth MAC Address
PRODUCT_PACKAGES += \
    bdaddr_read \
    static_busybox

# Samsung Specific tools
PRODUCT_PACKAGES += \
    SamsungServiceMode \
    G3Parts

PRODUCT_COPY_FILES += \
	device/samsung/apollo/kernel:kernel \
  device/samsung/apollo/klogtail:system/bin/klogtail

#    phone.ril.classname = com.android.internal.telephony.SamsungRIL \

PRODUCT_COPY_FILES += \
	device/samsung/apollo/libaudio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120 \
    wifi.interface=eth0 \
    ro.telephony.ril_class=SamsungRIL \
    ro.telephony.sends_barcount=1 \
    wifi.supplicant_scan_interval=120 \
    mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false \
    ro.ril.enable.managed.roaming=1 \
    persist.sys.use_dithering=0 \
    persist.sys.use_16bpp_alpha=1 \
    persist.sys.led_trigger=none \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2 \
    ro.opengles.version=65537


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml


# device/samsung/apollo/prebuilt/ril/rild:system/bin/rild \
# device/samsung/apollo/prebuilt/ril/libril.so:system/lib/libril.so \
# device/samsung/apollo/prebuilt/ril/libsec-ril.so:system/lib/libsec-ril.so \

PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
        device/samsung/apollo/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
        device/samsung/apollo/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
        device/samsung/apollo/prebuilt/etc/asound.conf:system/etc/asound.conf \
        device/samsung/apollo/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd.conf \
        device/samsung/apollo/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
        device/samsung/apollo/prebuilt/etc/dbus.conf:system/etc/dbus.conf \
        device/samsung/apollo/Credits-CM.html:system/etc/Credits-CM.html \
        device/samsung/apollo/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/qt602240_ts_input.kcm.bin:system/usr/keychars/qt602240_ts_input.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
        device/samsung/apollo/prebuilt/keychars/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin \
        device/samsung/apollo/prebuilt/keylayout/qt602240_ts_input.kl:system/usr/keylayout/qt602240_ts_input.kl \
        device/samsung/apollo/prebuilt/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
        device/samsung/apollo/prebuilt/keylayout/sec_headset.kl:system/usr/keylayout/sec_headset.kl \
        device/samsung/apollo/prebuilt/idc/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc \
        device/samsung/apollo/prebuilt/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
        device/samsung/apollo/prebuilt/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
        device/samsung/apollo/prebuilt/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
        device/samsung/apollo/prebuilt/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
        device/samsung/apollo/prebuilt/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
        device/samsung/apollo/prebuilt/wifi/wifi.conf:system/etc/wifi/wifi.conf \
        device/samsung/apollo/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
      	device/samsung/apollo/prebuilt/camera/libcamera.so:obj/lib/libcamera.so \
    	device/samsung/apollo/prebuilt/camera/libsecjpeg.so:obj/lib/libsecjpeg.so \
    	device/samsung/apollo/prebuilt/camera/libcamera.so:system/lib/libcamera.so \
    	device/samsung/apollo/prebuilt/gps/libsecgps.so:system/lib/libsecgps.so \
    	device/samsung/apollo/prebuilt/gps/libsecril-client.so:system/lib/libsecril-client.so \
    	device/samsung/apollo/prebuilt/sensors/akmd2:system/bin/akmd2 \
    	device/samsung/apollo/prebuilt/bluetooth/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    	device/samsung/apollo/prebuilt/bin/charging_mode:system/bin/charging_mode \
    	device/samsung/apollo/prebuilt/bin/playlpm:system/bin/playlpm \
    	device/samsung/apollo/prebuilt/bin/immvibed:system/bin/immvibed \
      device/samsung/apollo/prebuilt/bootanimation.zip:system/media/bootanimation.zip \
    	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# HardwareRenderer properties
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false

# Misc properties
PRODUCT_PROPERTY_OVERRIDES += \
    pm.sleep_mode=1

# LDPI assets
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

