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

# inherit from the proprietary version
-include vendor/samsung/apollo/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := s5p6442
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s
TARGET_GLOBAL_CFLAGS += -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -O3
TARGET_GLOBAL_CPPFLAGS += -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp -O3

#TARGET_KERNEL_SOURCE := kernel/samsung/apollo
#TARGET_KERNEL_CONFIG := cyanogenmod_apollo_defconfig
#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/apollo/shbootimg.mk

TARGET_PREBUILT_KERNEL := device/samsung/apollo/prebuilt/kernel
TARGET_RECOVERY_INITRC := device/samsung/apollo/prebuilt/recovery.rc

# Graphics
BOARD_EGL_CFG := device/samsung/apollo/prebuilt/graphics/egl.cfg
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# skia
BOARD_USE_SKIA_LCDTEXT := true

# Sensors
BOARD_USES_GPSSHIM := true
#BOARD_GPS_LIBRARIES := libsecgps libsecril-client
TARGET_BOOTLOADER_BOARD_NAME := s5p6442

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcamera
BOARD_CAMERA_DEVICE := /dev/video0

TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_BOOTANIMATION_PRELOAD := true

# Misc
WITH_DEXPREOPT := true
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_LIBSECRIL_STUB := true

BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_USES_MMCUTILS := true

BOARD_KERNEL_CMDLINE := console=ttySAC1,115200 loglevel=4 no_console_suspend
BOARD_KERNEL_BASE := 0x22000000

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_NAME     := "dhd"

# NAND
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 222822400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 204996608
BOARD_FLASH_BLOCK_SIZE := 4096

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/apollo/releasetools/apollo_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/apollo/releasetools/apollo_img_from_target_files

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
SAMSUNG_USB_MTP_DEVICE := true

# Recovery
BOARD_USES_BOOTMENU := false
BOARD_PROVIDES_BOOTMODE := true
BOARD_USES_BML_OVER_MTD := false
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/apollo/recovery/recovery_ui.c
BOARD_BOOT_DEVICE := /dev/block/bml5
BOARD_DATA_DEVICE := /dev/block/stl7
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
BOARD_HAS_DATADATA := false
BOARD_SYSTEM_DEVICE := /dev/block/stl6
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no
BOARD_BML_BOOT := "/dev/block/bml5"
BOARD_CACHE_DEVICE := /dev/block/stl8
BOARD_CACHE_FILESYSTEM := rfs
BOARD_CACHE_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
BOARD_SDEXT_DEVICE := /dev/block/mmcblk0p2
BOARD_SDEXT_FILESYSTEM := auto
BOARD_HAS_PARAMFS := false
BOARD_USES_BMLUTILS := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p1
BOARD_HAS_SDCARD_INTERNAL := false
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_ROOT_IS_RECOVERY := true
TARGET_BOOT_IS_RAMDISK := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
TARGET_RECOVERY_PRE_COMMAND := "echo 1 > /cache/.startrecovery; sync;"
BOARD_RECOVERY_HANDLES_MOUNT := true
TARGET_NO_KERNEL := true
BOARD_LDPI_RECOVERY := true

