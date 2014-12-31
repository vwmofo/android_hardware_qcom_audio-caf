ifeq ($(call my-dir),$(call project-path-for,qcom-audio))

ifneq ($(filter msm8660,$(TARGET_BOARD_PLATFORM)),)

AUDIO_HW_ROOT := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),msm8660)
    include $(AUDIO_HW_ROOT)/msm8660/Android.mk
    include $(AUDIO_HW_ROOT)/mm-audio/Android.mk
endif
endif
endif