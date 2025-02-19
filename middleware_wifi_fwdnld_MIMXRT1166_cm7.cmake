#Description: NXP WLAN f/w dnld driver; user_visible: False
include_guard(GLOBAL)
message("middleware_wifi_fwdnld component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/wifidriver/sdio.c
    ${CMAKE_CURRENT_LIST_DIR}/wifidriver/firmware_dnld.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/.
    ${CMAKE_CURRENT_LIST_DIR}/incl
    ${CMAKE_CURRENT_LIST_DIR}/incl/port/os
    ${CMAKE_CURRENT_LIST_DIR}/incl/wifidriver
    ${CMAKE_CURRENT_LIST_DIR}/wifi_bt_firmware
    ${CMAKE_CURRENT_LIST_DIR}/wifidriver
    ${CMAKE_CURRENT_LIST_DIR}/wifidriver/incl
)


include(middleware_wifi_common_files)
include(middleware_wifi_sdio-2)
include(middleware_freertos-kernel_MIMXRT1166_cm7)
