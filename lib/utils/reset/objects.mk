#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2020 Western Digital Corporation or its affiliates.
#
# Authors:
#   Anup Patel <anup.patel@wdc.com>
#

libsbiutils-objs-$(CONFIG_FDT_RESET) += reset/fdt_reset.o
libsbiutils-objs-$(CONFIG_FDT_RESET) += reset/fdt_reset_drivers.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_ATCWDT200) += fdt_reset_atcwdt200
libsbiutils-objs-$(CONFIG_FDT_RESET_ATCWDT200) += reset/fdt_reset_atcwdt200.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_GPIO) += fdt_poweroff_gpio
carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_GPIO) += fdt_reset_gpio
libsbiutils-objs-$(CONFIG_FDT_RESET_GPIO) += reset/fdt_reset_gpio.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_HTIF) += fdt_reset_htif
libsbiutils-objs-$(CONFIG_FDT_RESET_HTIF) += reset/fdt_reset_htif.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SOPHGO_CPLD) += fdt_reset_sophgo_cpld_poweroff
carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SOPHGO_CPLD) += fdt_reset_sophgo_cpld_reboot
libsbiutils-objs-$(CONFIG_FDT_RESET_SOPHGO_CPLD) += reset/fdt_reset_sophgo_cpld.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SOPHGO_MCU) += fdt_reset_sophgo_mcu
libsbiutils-objs-$(CONFIG_FDT_RESET_SOPHGO_MCU) += reset/fdt_reset_sophgo_mcu.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SOPHGO_WDT) += fdt_reset_sophgo_wdt
libsbiutils-objs-$(CONFIG_FDT_RESET_SOPHGO_WDT) += reset/fdt_reset_sophgo_wdt.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SUNXI_WDT) += fdt_reset_sunxi_wdt
libsbiutils-objs-$(CONFIG_FDT_RESET_SUNXI_WDT) += reset/fdt_reset_sunxi_wdt.o

carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SYSCON) += fdt_syscon_poweroff
carray-fdt_reset_drivers-$(CONFIG_FDT_RESET_SYSCON) += fdt_syscon_reboot
libsbiutils-objs-$(CONFIG_FDT_RESET_SYSCON) += reset/fdt_reset_syscon.o
