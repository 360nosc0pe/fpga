360nosc0pe Siglent SDS 1x0xX-E FPGA bitstreams
==============================================

This repo contains the Vivado projects for an open source bitstream of the Siglent SDS 1x0xX-E series oscilloscopes.

For more information about the whole project check out the README in the [yocto build environment](https://github.com/360nosc0pe/yocto).

Supported machines:
* Siglent SDS1202X-E
* Siglent SDS1104X-E or SDS1204X-E (exact same hardware)

Building
--------

You need a Linux installation with Xilinx Vivado to build the FPGA bitstreams.

We offer a docker container which contains all of this [here](https://github.com/360nosc0pe/docker_vivado).


### Building the project

Every time you need to specify a machine, you can choose from these targets:

| Name               | Machine name |
|--------------------|--------------|
| Siglent SDS1202X-E | sds1202xe    |
| Siglent SDS1104X-E | sds1104xe    |


Build the FPGA hardware definition and bitstream:

    ./generate_bitstreams.sh <machine>

If you just want to generate a Vivado project for further editing, you can use this script:

    ./launch_vivado.sh <machine>

Careful! Both of these scripts regenerate the complete project and block diagrams from tcl scripts. Should you already have an existing project in `build/<machine/` it will be overwritten.

Once you have a Vivado project, you can just open the `.xpr` file in `build/<machine>/` and continue working.

### Exporting the block diagram

If you want to commit changes to the repo, you need to export your changes of the block diagram from Vivado to the TCL file.

To do so, open it and go to `File -> Export -> Export Block Design...` and save it to `projects/<machine>/<machine>_top.tcl`.
