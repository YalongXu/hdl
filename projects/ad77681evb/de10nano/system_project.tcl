
source ../../scripts/adi_env.tcl
source ../../scripts/adi_project_intel.tcl

adi_project ad77681evb_de10nano

source $ad_hdl_dir/projects/common/de10nano/de10nano_system_assign.tcl

# files

# SPI interface

set_location_assignment PIN_AH12 -to ad77681_spi_sclk      ; ##   Arduino_IO13
set_location_assignment PIN_AH11 -to ad77681_spi_miso      ; ##   Arduino_IO12
set_location_assignment PIN_AG16 -to ad77681_spi_mosi      ; ##   Arduino_IO11
set_location_assignment PIN_AF15 -to ad77681_spi_cs        ; ##   Arduino_IO10

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_spi_sclk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_spi_miso
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_spi_mosi
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_spi_cs

# reset and GPIO signals

set_location_assignment PIN_AE15 -to ad77681_shutdown      ; ##   Arduino_IO9
set_location_assignment PIN_AH8	 -to ad77681_reset_adc     ; ##   Arduino_IO7
set_location_assignment PIN_U13  -to ad77681_csb_aux       ; ##   Arduino_IO5
set_location_assignment PIN_U14  -to ad77681_sw_ff         ; ##   Arduino_IO4
set_location_assignment PIN_AG9  -to ad77681_drdy_aux      ; ##   Arduino_IO3
set_location_assignment PIN_AF13 -to ad77681_blue_led      ; ##   Arduino_IO1
set_location_assignment PIN_AG13 -to ad77681_yellow_led    ; ##   Arduino_IO0

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_shutdown
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_reset_adc
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_csb_aux
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_sw_ff
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_drdy_aux
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_blue_led
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_yellow_led

# synchronization and timing

set_location_assignment PIN_AG8  -to ad77681_sync_in       ; ##   Arduino_IO6
set_location_assignment PIN_AG10 -to ad77681_drdy          ; ##   Arduino_IO2

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_sync_in
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ad77681_drdy

execute_flow -compile
