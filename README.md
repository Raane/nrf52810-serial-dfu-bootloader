# nrf52810-serial-dfu-bootloader
A serial DFU bootloader for the nrf52810 based on SDK 14.2.0. For development purposes you may run the project on nrf52832.

The project can be found in: examples/dfu/bootloader_secure_serial/pca10040e/s132 (Note, the project will require an S112 SoftDevice. The folder name was just never changed.)

Flash the S112 v5.1.0 SoftDevice.

Compile the  in Segger Embedded studio, Keil 5, or ARM gcc and flash it.

Optionally create and flash a DFU settings page and application to the device. Use the nrfutil flag "--start-address" to set the correct address for the settings page.

To test the bootloader you may performing a DFU operation using the command "nrfutil dfu serial -pkg examples/dfu/secure_dfu_test_images/ble_app_hrs_for_nrf52810.zip -p COM5".
This will add a heart rate peripheral application to the device and run it. You will  see LED1 blinking and the device will be adverticing on BLE.
