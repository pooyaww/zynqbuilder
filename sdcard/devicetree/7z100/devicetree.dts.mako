// Generated automatically by ${toolName} on ${date}
// Based on 7z100 configuration created with XSDK device tree generator
/dts-v1/;

/ {
	#address-cells = <0x1>;
	#size-cells = <0x1>;
	compatible = "xlnx,zynq-7000";
	model = "ZMMP_7100_PL2015_2";

	chosen {
		bootargs = "console=ttyPS0,115200 root=/dev/mmcblk0p2 cma=200MB rw earlyprintk rootfstype=ext4 rootwait devtmpfs.mount=1";
	};

	aliases {
		serial0 = "/amba/serial@e0001000";
		ethernet0 = "/amba/ethernet@e000b000";
	};

	memory {
		device_type = "memory";
		reg = <0x0 0x40000000>;
	};

	cpus {
		#address-cells = <0x1>;
		#size-cells = <0x0>;

		cpu@0 {
			compatible = "arm,cortex-a9";
			device_type = "cpu";
			reg = <0x0>;
			clocks = <0x1 0x3>;
			clock-latency = <0x3e8>;
			cpu0-supply = <0x2>;
			operating-points = <0xa2c2a 0xf4240 0x51615 0xf4240>;
		};

		cpu@1 {
			compatible = "arm,cortex-a9";
			device_type = "cpu";
			reg = <0x1>;
			clocks = <0x1 0x3>;
		};
	};

	pmu {
		compatible = "arm,cortex-a9-pmu";
		interrupts = <0x0 0x5 0x4 0x0 0x6 0x4>;
		interrupt-parent = <0x3>;
		reg = <0xf8891000 0x1000 0xf8893000 0x1000>;
	};

	fixedregulator@0 {
		compatible = "regulator-fixed";
		regulator-name = "VCCPINT";
		regulator-min-microvolt = <0xf4240>;
		regulator-max-microvolt = <0xf4240>;
		regulator-boot-on;
		regulator-always-on;
		linux,phandle = <0x2>;
		phandle = <0x2>;
	};

	amba {
		compatible = "simple-bus";
		#address-cells = <0x1>;
		#size-cells = <0x1>;
		interrupt-parent = <0x3>;
		ranges;

		adc@f8007100 {
			compatible = "xlnx,zynq-xadc-1.00.a";
			reg = <0xf8007100 0x20>;
			interrupts = <0x0 0x7 0x4>;
			interrupt-parent = <0x3>;
			clocks = <0x1 0xc>;
		};

		can@e0008000 {
			compatible = "xlnx,zynq-can-1.0";
			status = "disabled";
			clocks = <0x1 0x13 0x1 0x24>;
			clock-names = "can_clk", "pclk";
			reg = <0xe0008000 0x1000>;
			interrupts = <0x0 0x1c 0x4>;
			interrupt-parent = <0x3>;
			tx-fifo-depth = <0x40>;
			rx-fifo-depth = <0x40>;
		};

		can@e0009000 {
			compatible = "xlnx,zynq-can-1.0";
			status = "disabled";
			clocks = <0x1 0x14 0x1 0x25>;
			clock-names = "can_clk", "pclk";
			reg = <0xe0009000 0x1000>;
			interrupts = <0x0 0x33 0x4>;
			interrupt-parent = <0x3>;
			tx-fifo-depth = <0x40>;
			rx-fifo-depth = <0x40>;
		};

		gpio@e000a000 {
			compatible = "xlnx,zynq-gpio-1.0";
			#gpio-cells = <0x2>;
			clocks = <0x1 0x2a>;
			gpio-controller;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x14 0x4>;
			reg = <0xe000a000 0x1000>;
			emio-gpio-width = <0x40>;
			gpio-mask-high = <0x0>;
			gpio-mask-low = <0x5600>;
			linux,phandle = <0x4>;
			phandle = <0x4>;
		};

		i2c@e0004000 {
			compatible = "cdns,i2c-r1p10";
			status = "okay";
			clocks = <0x1 0x26>;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x19 0x4>;
			reg = <0xe0004000 0x1000>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			clock-frequency = <0x61a80>;
		};

		i2c@e0005000 {
			compatible = "cdns,i2c-r1p10";
			status = "disabled";
			clocks = <0x1 0x27>;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x30 0x4>;
			reg = <0xe0005000 0x1000>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
		};

		interrupt-controller@f8f01000 {
			compatible = "arm,cortex-a9-gic";
			#interrupt-cells = <0x3>;
			interrupt-controller;
			reg = <0xf8f01000 0x1000 0xf8f00100 0x100>;
			num_cpus = <0x2>;
			num_interrupts = <0x60>;
			linux,phandle = <0x3>;
			phandle = <0x3>;
		};

		cache-controller@f8f02000 {
			compatible = "arm,pl310-cache";
			reg = <0xf8f02000 0x1000>;
			arm,data-latency = <0x3 0x2 0x2>;
			arm,tag-latency = <0x2 0x2 0x2>;
			cache-unified;
			cache-level = <0x2>;
		};

		memory-controller@f8006000 {
			compatible = "xlnx,zynq-ddrc-a05";
			reg = <0xf8006000 0x1000>;
		};

		ocmc@f800c000 {
			compatible = "xlnx,zynq-ocmc-1.0";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x3 0x4>;
			reg = <0xf800c000 0x1000>;
		};

		serial@e0000000 {
			compatible = "xlnx,xuartps", "cdns,uart-r1p8";
			status = "disabled";
			clocks = <0x1 0x17 0x1 0x28>;
			clock-names = "uart_clk", "pclk";
			reg = <0xe0000000 0x1000>;
			interrupts = <0x0 0x1b 0x4>;
		};

		serial@e0001000 {
			compatible = "xlnx,xuartps", "cdns,uart-r1p8";
			status = "okay";
			clocks = <0x1 0x18 0x1 0x29>;
			clock-names = "uart_clk", "pclk";
			reg = <0xe0001000 0x1000>;
			interrupts = <0x0 0x32 0x4>;
			current-speed = <0x1c200>;
			device_type = "serial";
			port-number = <0x0>;
		};

		spi@e0006000 {
			compatible = "xlnx,zynq-spi-r1p6";
			reg = <0xe0006000 0x1000>;
			status = "disabled";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x1a 0x4>;
			clocks = <0x1 0x19 0x1 0x22>;
			clock-names = "ref_clk", "pclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
		};

		spi@e0007000 {
			compatible = "xlnx,zynq-spi-r1p6";
			reg = <0xe0007000 0x1000>;
			status = "disabled";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x31 0x4>;
			clocks = <0x1 0x1a 0x1 0x23>;
			clock-names = "ref_clk", "pclk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
		};

		spi@e000d000 {
			clock-names = "ref_clk", "pclk";
			clocks = <0x1 0xa 0x1 0x2b>;
			compatible = "xlnx,zynq-qspi-1.0";
			status = "okay";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x13 0x4>;
			reg = <0xe000d000 0x1000>;
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			is-dual = <0x1>;
			num-cs = <0x1>;

			flash@0 {
				compatible = "micron,n25q128a11";
				reg = <0x0>;
				#address-cells = <0x1>;
				#size-cells = <0x1>;
				spi-max-frequency = <0x2faf080>;

				partition@0x00000000 {
					label = "boot";
					reg = <0x0 0x500000>;
				};

				partition@0x00500000 {
					label = "bootenv";
					reg = <0x500000 0x20000>;
				};

				partition@0x00520000 {
					label = "kernel";
					reg = <0x520000 0xa80000>;
				};

				partition@0x00fa0000 {
					label = "spare";
					reg = <0xfa0000 0x0>;
				};
			};
		};

		memory-controller@e000e000 {
			#address-cells = <0x1>;
			#size-cells = <0x1>;
			status = "disabled";
			clock-names = "memclk", "aclk";
			clocks = <0x1 0xb 0x1 0x2c>;
			compatible = "arm,pl353-smc-r2p1";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x12 0x4>;
			ranges;
			reg = <0xe000e000 0x1000>;

			flash@e1000000 {
				status = "disabled";
				compatible = "arm,pl353-nand-r2p1";
				reg = <0xe1000000 0x1000000>;
				#address-cells = <0x1>;
				#size-cells = <0x1>;
			};

			flash@e2000000 {
				status = "disabled";
				compatible = "cfi-flash";
				reg = <0xe2000000 0x2000000>;
				#address-cells = <0x1>;
				#size-cells = <0x1>;
			};
		};

		ethernet@e000b000 {
			compatible = "cdns,gem";
			reg = <0xe000b000 0x1000>;
			status = "okay";
			interrupts = <0x0 0x16 0x4>;
			clocks = <0x1 0x1e 0x1 0x1e 0x1 0xd>;
			clock-names = "pclk", "hclk", "tx_clk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
			enet-reset = <0x4 0x7 0x0>;
			phy-mode = "rgmii-id";
			xlnx,ptp-enet-clock = <0x69f6bcb>;
			local-mac-address = [00 0a 35 00 1e 53];
			phy-handle = <0x5>;

			mdio {
				#address-cells = <0x1>;
				#size-cells = <0x0>;
				status = "disabled";
			};

			phy@7 {
				compatible = "marvell,88e1518";
				device_type = "ethernet-phy";
				reg = <0x7>;
				marvell,reg-init = <0x3 0x10 0xff00 0x1e 0x3 0x11 0xfff0 0x0>;
				linux,phandle = <0x5>;
				phandle = <0x5>;
			};
		};

		ethernet@e000c000 {
			compatible = "cdns,gem";
			reg = <0xe000c000 0x1000>;
			status = "disabled";
			interrupts = <0x0 0x2d 0x4>;
			clocks = <0x1 0x1f 0x1 0x1f 0x1 0xe>;
			clock-names = "pclk", "hclk", "tx_clk";
			#address-cells = <0x1>;
			#size-cells = <0x0>;
		};

		sdhci@e0100000 {
			compatible = "arasan,sdhci-8.9a";
			status = "okay";
			clock-names = "clk_xin", "clk_ahb";
			clocks = <0x1 0x15 0x1 0x20>;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x18 0x4>;
			reg = <0xe0100000 0x1000>;
			clock-frequency = <0x2faf080>;
		};

		sdhci@e0101000 {
			compatible = "arasan,sdhci-8.9a";
			status = "disabled";
			clock-names = "clk_xin", "clk_ahb";
			clocks = <0x1 0x16 0x1 0x21>;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x2f 0x4>;
			reg = <0xe0101000 0x1000>;
		};

		slcr@f8000000 {
			#address-cells = <0x1>;
			#size-cells = <0x1>;
			compatible = "xlnx,zynq-slcr", "syscon";
			reg = <0xf8000000 0x1000>;
			ranges;

			clkc@100 {
				#clock-cells = <0x1>;
				compatible = "xlnx,ps7-clkc";
				fclk-enable = <0x1>;
				clock-output-names = "armpll", "ddrpll", "iopll", "cpu_6or4x", "cpu_3or2x", "cpu_2x", "cpu_1x", "ddr2x", "ddr3x", "dci", "lqspi", "smc", "pcap", "gem0", "gem1", "fclk0", "fclk1", "fclk2", "fclk3", "can0", "can1", "sdio0", "sdio1", "uart0", "uart1", "spi0", "spi1", "dma", "usb0_aper", "usb1_aper", "gem0_aper", "gem1_aper", "sdio0_aper", "sdio1_aper", "spi0_aper", "spi1_aper", "can0_aper", "can1_aper", "i2c0_aper", "i2c1_aper", "uart0_aper", "uart1_aper", "gpio_aper", "lqspi_aper", "smc_aper", "swdt", "dbg_trc", "dbg_apb";
				reg = <0x100 0x100>;
				ps-clk-frequency = <0x1fca055>;
				linux,phandle = <0x1>;
				phandle = <0x1>;
			};
		};

		dmac@f8003000 {
			compatible = "arm,pl330", "arm,primecell";
			reg = <0xf8003000 0x1000>;
			interrupt-parent = <0x3>;
			interrupt-names = "abort", "dma0", "dma1", "dma2", "dma3", "dma4", "dma5", "dma6", "dma7";
			interrupts = <0x0 0xd 0x4 0x0 0xe 0x4 0x0 0xf 0x4 0x0 0x10 0x4 0x0 0x11 0x4 0x0 0x28 0x4 0x0 0x29 0x4 0x0 0x2a 0x4 0x0 0x2b 0x4>;
			#dma-cells = <0x1>;
			#dma-channels = <0x8>;
			#dma-requests = <0x4>;
			clocks = <0x1 0x1b>;
			clock-names = "apb_pclk";
		};

		devcfg@f8007000 {
			clock-names = "ref_clk", "fclk0", "fclk1", "fclk2", "fclk3";
			clocks = <0x1 0xc 0x1 0xf 0x1 0x10 0x1 0x11 0x1 0x12>;
			compatible = "xlnx,zynq-devcfg-1.0";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x8 0x4>;
			reg = <0xf8007000 0x100>;
		};

		timer@f8f00200 {
			compatible = "arm,cortex-a9-global-timer";
			reg = <0xf8f00200 0x20>;
			interrupts = <0x1 0xb 0x301>;
			interrupt-parent = <0x3>;
			clocks = <0x1 0x4>;
		};

		timer@f8001000 {
			interrupt-parent = <0x3>;
			interrupts = <0x0 0xa 0x4 0x0 0xb 0x4 0x0 0xc 0x4>;
			compatible = "cdns,ttc";
			clocks = <0x1 0x6>;
			reg = <0xf8001000 0x1000>;
		};

		timer@f8002000 {
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x25 0x4 0x0 0x26 0x4 0x0 0x27 0x4>;
			compatible = "cdns,ttc";
			clocks = <0x1 0x6>;
			reg = <0xf8002000 0x1000>;
		};

		timer@f8f00600 {
			interrupt-parent = <0x3>;
			interrupts = <0x1 0xd 0x301>;
			compatible = "arm,cortex-a9-twd-timer";
			reg = <0xf8f00600 0x20>;
			clocks = <0x1 0x4>;
		};

		usb@e0002000 {
			compatible = "xlnx,zynq-usb-2.20a", "chipidea,usb2";
			status = "okay";
			clocks = <0x1 0x1c>;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x15 0x4>;
			reg = <0xe0002000 0x1000>;
			phy_type = "ulpi";
			dr_mode = "otg";
			usb-reset = <0x4 0x2f 0x0>;
			usb-phy = <0x6>;
		};

		usb@e0003000 {
			compatible = "xlnx,zynq-usb-2.20a", "chipidea,usb2";
			status = "disabled";
			clocks = <0x1 0x1d>;
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x2c 0x4>;
			reg = <0xe0003000 0x1000>;
			phy_type = "ulpi";
		};

		watchdog@f8005000 {
			clocks = <0x1 0x2d>;
			compatible = "cdns,wdt-r1p2";
			interrupt-parent = <0x3>;
			interrupts = <0x0 0x9 0x1>;
			reg = <0xf8005000 0x1000>;
			timeout-sec = <0xa>;
		};
	};

	amba_pl {
		#address-cells = <0x1>;
		#size-cells = <0x1>;
		compatible = "simple-bus";
		ranges;


		hwacc@43c10000 {
			compatible = "hwacc";
			reg = <0x43c10000 0x100>;
			interrupts = ${', '.join(['<0 %d 4>' % (stream['irq']-32) for stream in streams])};
			interrupt-parent = <0x3>;
		};

		xilcam@43000000 {
			compatible = "xilcam";
			reg = <0x43000000 0x20>;
			interrupts = ${'<0 %d 4>' % (vdma_irq-32)};
			interrupt-parent = <0x3>;
		};

	};

	usb_phy@0 {
		compatible = "usb-nop-xceiv";
		#phy-cells = <0x0>;
		linux,phandle = <0x6>;
		phandle = <0x6>;
	};
};
