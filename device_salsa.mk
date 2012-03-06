TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# proprietary side of the device
$(call inherit-product-if-exists, vendor/acer/liquid/liquid-vendor.mk)

# Check generic.mk/languages_full.mk to see what applications/languages are installed turns out all languages get included if I don't specify, but some seem to be missing the actuall translation.
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := device/acer/liquid/overlay

PRODUCT_BRAND := acer
PRODUCT_NAME := full_salsa
PRODUCT_DEVICE := salsa
PRODUCT_MODEL := A1
PRODUCT_MANUFACTURER := Acer
