#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# call the proprietary setup
$(call inherit-product-if-exists, vendor/nubia/nx591j/nx591j-vendor.mk)

PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-01-01.conf:/system/etc/.tp/.thermal-mode-01-01.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-01-02.conf:/system/etc/.tp/.thermal-mode-01-02.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-01-03.conf:/system/etc/.tp/.thermal-mode-01-03.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-01-04.conf:/system/etc/.tp/.thermal-mode-01-04.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-02-01.conf:/system/etc/.tp/.thermal-mode-02-01.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-02-02.conf:/system/etc/.tp/.thermal-mode-02-02.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-02-03.conf:/system/etc/.tp/.thermal-mode-02-03.conf \
    $(LOCAL_PATH)/configs/.tp/.thermal-mode-02-04.conf:/system/etc/.tp/.thermal-mode-02-04.conf \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# BTooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/.bt_nv.bin:/persist/bluetooth/.bt_nv.bin

# Perfdconf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/perfprofd.conf:/data/data/com.google.android.gms/files/perfprofd.conf

# Ramdisk nubia specific
PRODUCT_PACKAGES += \
    init.nb.device.rc

# Inherit from msm8956-common
$(call inherit-product, device/nubia/msm8976-common/msm8976.mk)
