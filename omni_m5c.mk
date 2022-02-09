# Release name
PRODUCT_RELEASE_NAME := m5c

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)


PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/xolo/era_3/recovery.fstab:recovery/root/recovery.fstab

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m5c
PRODUCT_NAME := omni_m5c
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M5c
PRODUCT_MANUFACTURER := Meizu
