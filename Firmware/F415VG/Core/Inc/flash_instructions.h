/*
 * flash_instructions.h
 *
 *  Created on: 04.04.2021
 *      Author: Johannes Höfler
 */

#ifndef INC_FLASH_INSTRUCTIONS_H_
#define INC_FLASH_INSTRUCTIONS_H_

/************************************************/
/******************** MACROS ********************/
/************************************************/

#define FLASH_ENABLE()            cs_port->BSRR = (uint32_t) cs_pin << 16U;
#define FLASH_DISABLE()           cs_port->BSRR = cs_pin;

/************************************************/
/******************** DEFINES *******************/
/************************************************/

#define FLASH_ADDR_SIZE           3
#define FLASH_TX_TIMEOUT          0
#define FLASH_RX_TIMEOUT          10

/************************************************/
/***************** INSTRUCTIONS *****************/
/************************************************/

/*
 * CONFIGURATION
 */
#define FLASH_NOP                 0x00        // No Operation
#define FLASH_RSTEN               0x66        // Reset Enable
#define FLASH_RST                 0x99        // Reset Memory
#define FLASH_EQIO                0x38        // Enable Quad I/O
#define FLASH_RSTQIO              0xFF        // Reset Quad I/O
#define FLASH_RDSR                0x05        // Read STATUS Register
#define FLASH_WRSR                0x01        // Write STATUS Register
#define FLASH_RDCR                0x35        // Read Configuration Register

/*
 * READ
 */
#define FLASH_READ                0x03        // Read Memory
#define FLASH_HS_READ             0x0B        // Read Memory at Higher Speed
#define FLASH_SDOR                0x3B        // SPI Dual Output Read
#define FLASH_SDIOR               0xBB        // SPI Dual I/O Read
#define FLASH_SQOR                0x6B        // SPI Quad Output Read
#define FLASH_SQIOR               0xEB        // SPI Quad I/O Read
#define FLASH_SB                  0xC0        // Set Burst Length
#define FLASH_RBSQI               0x0C        // SQI nB Burst with Wrap
#define FLASH_RBSPI               0xEC        // SPI nB Burst with Wrap

/*
 * WRITE
 */
#define FLASH_WREN                0x06        // Write Enable
#define FLASH_WRDI                0x04        // Write Disable
#define FLASH_ERASE_SECTOR_4      0x20        // Erase 4 Kbyte of Memory Array
#define FLASH_ERASE_BLOCK_32      0x52        // Erase 32 Kbyte of Block Memory Array
#define FLASH_ERASE_BLOCK_64      0xD8        // Erase 64 Kbyte of Block Memory Array
#define FLASH_ERASE_CHIP          0x60        // Erase Full Memory Array
#define FLASH_PAGE_PROG           0x02        // To Program 1 to 256 Data Bytes
#define FLASH_QUAD_PAGE_PROG      0x32        // SPI Quad Page Program
#define FLASH_WRSU                0xB0        // Suspends Program/Erase
#define FLASH_WRRE                0x30        // Resume Program/Erase

/*
 * PROTECTION
 */
#define FLASH_LDPS                0x8D        // Lock-Down Protection Settings
#define FLASH_RSID                0x88        // Read Security ID
#define FLASH_PSID                0xA5        // Program User Security ID Area
#define FLASH_LSID                0x85        // Lockout Security ID Programming

/*
 * POWER-SAVING
 */
#define FLASH_DPD                 0xB9        // Deep Power-Down Mode
#define FLASH_RDPD                0xAB        // Release from Deep Power-Down and Read ID

/*
 * IDENTIFICATION
 */
#define FLASH_JEDEC_ID            0x9F        // JEDEC® ID Read
#define FLASH_QUAD_JID            0xAF        // Quad I/O J-ID Read
#define FLASH_SFDP                0x5A        // Serial Flash Discoverable Parameters

#endif /* INC_FLASH_INSTRUCTIONS_H_ */
