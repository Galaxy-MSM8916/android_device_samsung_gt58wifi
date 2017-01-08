#
# Copyright (C) 2015 The Android Open-Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, device/samsung/gtelwifiue/full_gtelwifiue.mk)

# Device identifier. This must come after all inclusions
# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab E

# Boot animation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_DEVICE := gtelwifiue
PRODUCT_NAME := omni_gtelwifiue
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T560NU
PRODUCT_MANUFACTURER := samsung

# My own ID
TARGET_UNOFFICIAL_BUILD_ID  := VINNY

# Inherit some common omni stuff.
$(call inherit-product-if-exists, vendor/omni/config/common_tablet.mk)

