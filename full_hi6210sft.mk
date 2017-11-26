# Release name
PRODUCT_RELEASE_NAME := hi6210sft

# Inherit some common AOKP stuff
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hi6210sft/device_hi6210sft.mk)

# Inherit 
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)

## Device info
PRODUCT_DEVICE := hi6210sft
PRODUCT_NAME := aokp_hi6210sft
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := hi6210sft
PRODUCT_MANUFACTURER := Huawei

# Bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_GMS_CLIENTID_BASE := android-huawei
