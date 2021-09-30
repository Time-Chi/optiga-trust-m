
set(src_dirs		"optiga/cmd"
					"optiga/common"
					"optiga/comms"
					"optiga/comms/ifx_i2c"
					"optiga/crypt"
					"optiga/util"
					"pal/esp32_freertos"
					"pal"
					)

set(include_dirs 	"optiga/include")

set(exclude_srcs	"pal/pal_crypt_openssl.c" "pal/pal_crypt_wolfssl.c")

set(requires		"mbedtls" "freertos" "driver")

idf_component_register(	SRC_DIRS		"${src_dirs}"
						INCLUDE_DIRS	"${include_dirs}"
						REQUIRES		"${requires}"
						EXCLUDE_SRCS	"${exclude_srcs}")
