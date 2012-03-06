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

# Prebuilt libraries that are needed to build open-source libraries

## (1) Copy Configuration files
PRODUCT_COPY_FILES += \
    device/acer/liquid/proprietary/vold.fstab:system/etc/vold.fstab \
    device/acer/liquid/proprietary/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/liquid/proprietary/sysctl.conf:system/etc/sysctl.conf \
    device/acer/liquid/proprietary/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/acer/liquid/proprietary/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

## (2) Keypad and Touchscreen
PRODUCT_COPY_FILES += \
    device/acer/liquid/proprietary/a1-keypad.kcm:system/usr/keychars/a1-keypad.kcm \
    device/acer/liquid/proprietary/a1-keypad.kl:system/usr/keylayout/a1-keypad.kl \
    device/acer/liquid/proprietary/avr.kl:system/usr/keylayout/avr.kl \
    device/acer/liquid/proprietary/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/acer/liquid/proprietary/auo-touch.idc:system/usr/idc/auo-touch.idc

## (3) Ramdisk 
PRODUCT_COPY_FILES += \
    device/acer/liquid/proprietary/init.salsa.rc:root/init.salsa.rc \
    device/acer/liquid/proprietary/init.salsa.usb.rc:root/init.salsa.usb.rc \
    device/acer/liquid/proprietary/ueventd.salsa.rc:root/ueventd.salsa.rc \
    device/acer/liquid/proprietary/initlogo.rle:root/initlogo.rle
