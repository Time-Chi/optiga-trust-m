#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS := optiga/include examples/mbedtls_port/include examples/utilities/include

COMPONENT_SRCDIRS := pal/esp32_freertos \
                     optiga/cmd \
                     optiga/common \
                     optiga/comms/ifx_i2c \
                     optiga/comms \
                     optiga/crypt \
                     optiga/util \
                     examples/mbedtls_port \
					 examples/utilities \
					 optiga \

COMPONENT_SUBMODULES += mbedtls
