#
# Copyright (C) 2018-2023 Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

AOSP_TARGET_PACKAGE := $(PRODUCT_OUT)/$(AOSP_VERSION).zip

.PHONY: bacon
bacon: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(AOSP_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(AOSP_TARGET_PACKAGE) > $(AOSP_TARGET_PACKAGE).md5sum
	echo -e "========================================="
	echo -e "    AOSP  "
	echo -e "    AOSP  "
	echo -e "    AOSP  "
	echo -e "    AOSP  "
	echo -e "    AOSP  "
	echo -e "========================================="
	echo -e ""
	@echo "**Package completed**: $(AOSP_TARGET_PACKAGE)"
