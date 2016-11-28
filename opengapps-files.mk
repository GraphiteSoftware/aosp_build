# Always needed
PRODUCT_COPY_FILES += $(call gapps-copy-to-system,all,etc)
PRODUCT_COPY_FILES += $(call gapps-copy-to-system,all,framework)

# Pico and higher
ifneq ($(filter $(TARGET_GAPPS_VARIANT),pico),)
# vendor/pittpatt seems to be removed on N+ (so only copy it to older than N)
ifeq ($(filter $(call get-allowed-api-levels),24),)
ifneq ($(filter bullhead, $(TARGET_DEVICE)),)
# Graphite change: for bullhead, we build a vendor image, and so
# copying things to system/vendor isn't allowed.
  PRODUCT_COPY_FILES += $(call gapps-copy-to-system,all,vendor/pittpatt)
endif
endif
  PRODUCT_COPY_FILES += $(call gapps-copy-to-system,all,usr/srec)
endif
