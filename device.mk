#
# Copyright (C) 2026 OrangeFox Recovery Project
#

LOCAL_PATH := device/oppo/CPH2269

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Fastbootd Support
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Decryption & Security HALs
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.keymaster@4.0-service.trustonic \
    vendor.oplus.hardware.cryptoeng@1.0-service \
    android.hardware.health@2.1-service

# Shared Libraries
PRODUCT_PACKAGES += \
    libMcClient \
    libMcGatekeeper \
    libSoftGatekeeper \
    gatekeeper.mt6765 \
    gatekeeper.oppo6765 \
    libhidlbase \
    libutils \
    libcutils

# VINTF Manifest
PRODUCT_MANIFEST_FILES += \
    $(LOCAL_PATH)/recovery/root/system/etc/vintf/manifest.xml

# Touchscreen
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/rgx.fw:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/rgx.fw
    