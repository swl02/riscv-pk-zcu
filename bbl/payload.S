#include "encoding.h"

  .section ".payload","a",@progbits
  .align RISCV_PGSHIFT + RISCV_PGLEVEL_BITS

  .globl _payload_start, _payload_end
_payload_start:
  .incbin BBL_PAYLOAD
_payload_end:

#TUO define our device tree
.globl _bbl_dtb
_bbl_dtb:
#.incbin "/home/lituo/workspace/riscv/riscv-zcu102/fpga-zynq/rocket-chip/bootrom/spike.dtb"
.incbin "/home/lituo/workspace/riscv/riscv-zcu102/fpga-zynq/rocket-chip/bootrom/qemu.dtb"
