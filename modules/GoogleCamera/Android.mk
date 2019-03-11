LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := GoogleCamera
LOCAL_PACKAGE_NAME := com.google.android.googlecamera
# on oreo, the api-level 26 apk does not work.  Use 25 instead.
GAPPS_LOCAL_SRC_FILES_OVERRIDE := vendor/opengapps/sources/arm64/app/com.google.android.googlecamera/25/nodpi/41174009.apk

GAPPS_LOCAL_OVERRIDES_MIN_VARIANT :=
GAPPS_LOCAL_OVERRIDES_PACKAGES := Camera Camera2 MotCamera Snap

include $(BUILD_GAPPS_PREBUILT_APK)
