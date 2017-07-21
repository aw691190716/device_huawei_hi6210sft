# Release name
PRODUCT_RELEASE_NAME := hi6210sft

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hi6210sft/device_hi6210sft.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hi6210sft
PRODUCT_NAME := aokp_hi6210sft
PRODUCT_BRAND := huawei
PRODUCT_MODEL := hi6210sft
PRODUCT_MANUFACTURER := huawei
