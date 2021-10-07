set(COMPONENT_ADD_INCLUDEDIRS
	"${PROJECT_SOURCE_DIR}/components/mbedtls/mbedtls/include"
	"optiga/include"
	"examples/mbedtls_port/include"
	"examples/utilities/include")

set(COMPONENT_SRCS
	"examples/utilities/optiga_trust.c"
	"examples/mbedtls_port/trustm_ecdh.c"
	"examples/mbedtls_port/trustm_ecdsa.c"
	"examples/mbedtls_port/trustm_rsa.c"
	"pal/esp32_freertos/pal.c"
	"pal/esp32_freertos/pal_gpio.c"
	"pal/esp32_freertos/pal_i2c.c"
	"pal/esp32_freertos/pal_ifx_i2c_config.c"
	"pal/esp32_freertos/pal_logger.c"
	"pal/esp32_freertos/pal_os_datastore.c"
	"pal/esp32_freertos/pal_os_event.c"
	"pal/esp32_freertos/pal_os_lock.c"
	"pal/esp32_freertos/pal_os_timer.c"
	"pal/esp32_freertos/pal_os_memory.c"
	"pal/pal_crypt_mbedtls.c"
	"optiga/cmd/optiga_cmd.c"
	"optiga/common/optiga_lib_common.c"
	"optiga/common/optiga_lib_logger.c"
	"optiga/comms/optiga_comms_ifx_i2c.c"
	"optiga/comms/ifx_i2c/ifx_i2c.c"
	"optiga/comms/ifx_i2c/ifx_i2c_config.c"
	"optiga/comms/ifx_i2c/ifx_i2c_data_link_layer.c"
	"optiga/comms/ifx_i2c/ifx_i2c_physical_layer.c"
	"optiga/comms/ifx_i2c/ifx_i2c_presentation_layer.c"
	"optiga/comms/ifx_i2c/ifx_i2c_transport_layer.c"
	"optiga/crypt/optiga_crypt.c"
	"optiga/util/optiga_util.c")

set(COMPONENT_REQUIRES "mbedtls")

register_component()

# target_sources(mbedcrypto PRIVATE "${COMPONENT_SRCS}")

# target_include_directories(mbedcrypto PUBLIC
# 	$<BUILD_INTERFACE:${COMPONENT_INCLUDEDIRS}>
# )
