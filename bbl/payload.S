#include "encoding.h"

  .section ".payload","a",@progbits
  .align RISCV_PGSHIFT + RISCV_PGLEVEL_BITS

  .globl _payload_start, _payload_end
_payload_start:
  .incbin BBL_PAYLOAD
_payload_end:

#TUO define our device tree here. 
#TODO move it back to bootrom.
.globl _bbl_dtb
_bbl_dtb:
#.incbin "../../../bootrom/rocket.dtb"
#.incbin "../../../bootrom/spike.dtb"
#.incbin "../../../bootrom/qemu.dtb"
