;/**
; ******************************************************************************
;  @file  startup_hc32f334.s
;  @brief Startup for MDK.
; verbatim
;  Change Logs:
;  Date             Author          Notes
;  2024-01-15       CDT             First version
;  2024-06-30       CDT             Added code of clear SRAMC status flags
; endverbatim
; *****************************************************************************
; * Copyright (C) 2022-2024, Xiaohua Semiconductor Co., Ltd. All rights reserved.
; *
; * This software component is licensed by XHSC under BSD 3-Clause license
; * (the "License"); You may not use this file except in compliance with the
; * License. You may obtain a copy of the License at:
; *                    opensource.org/licenses/BSD-3-Clause
; *
; ******************************************************************************
; */

; Stack Configuration
; Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>

Stack_Size      EQU     0x00000C00

                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp


; Heap Configuration
;  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>

Heap_Size       EQU     0x00000400

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit

                PRESERVE8
                THUMB

; Vector Table Mapped to Address 0 at Reset

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

__Vectors       DCD     __initial_sp              ; Top of Stack
                DCD     Reset_Handler             ; Reset Handler
                DCD     NMI_Handler               ; NMI Handler
                DCD     HardFault_Handler         ; Hard Fault Handler
                DCD     MemManage_Handler         ; MPU Fault Handler
                DCD     BusFault_Handler          ; Bus Fault Handler
                DCD     UsageFault_Handler        ; Usage Fault Handler
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     0                         ; Reserved
                DCD     SVC_Handler               ; SVCall Handler
                DCD     DebugMon_Handler          ; Debug Monitor Handler
                DCD     0                         ; Reserved
                DCD     PendSV_Handler            ; PendSV Handler
                DCD     SysTick_Handler           ; SysTick Handler

                ; Peripheral Interrupts
                DCD     IRQ000_Handler
                DCD     IRQ001_Handler
                DCD     IRQ002_Handler
                DCD     IRQ003_Handler
                DCD     IRQ004_Handler
                DCD     IRQ005_Handler
                DCD     IRQ006_Handler
                DCD     IRQ007_Handler
                DCD     IRQ008_Handler
                DCD     IRQ009_Handler
                DCD     IRQ010_Handler
                DCD     IRQ011_Handler
                DCD     IRQ012_Handler
                DCD     IRQ013_Handler
                DCD     IRQ014_Handler
                DCD     IRQ015_Handler
                DCD     EXTINT00_SWINT16_Handler
                DCD     EXTINT01_SWINT17_Handler
                DCD     EXTINT02_SWINT18_Handler
                DCD     EXTINT03_SWINT19_Handler
                DCD     EXTINT04_SWINT20_Handler
                DCD     EXTINT05_SWINT21_Handler
                DCD     EXTINT06_SWINT22_Handler
                DCD     EXTINT07_SWINT23_Handler
                DCD     EXTINT08_SWINT24_Handler
                DCD     EXTINT09_SWINT25_Handler
                DCD     EXTINT10_SWINT26_Handler
                DCD     EXTINT11_SWINT27_Handler
                DCD     EXTINT12_SWINT28_Handler
                DCD     EXTINT13_SWINT29_Handler
                DCD     EXTINT14_SWINT30_Handler
                DCD     EXTINT15_SWINT31_Handler
                DCD     DMA_Error_Handler
                DCD     DMA_TC0_BTC0_Handler
                DCD     DMA_TC1_BTC1_Handler
                DCD     DMA_TC2_BTC2_Handler
                DCD     DMA_TC3_BTC3_Handler
                DCD     DMA_TC4_BTC4_Handler
                DCD     DMA_TC5_BTC5_Handler
                DCD     DMA_TC6_BTC6_Handler
                DCD     DMA_TC7_BTC7_Handler
                DCD     EFM_PEError_ReadCol_Handler
                DCD     EFM_OpEnd_Handler
                DCD     FPU_Error_Handler
                DCD     TMR0_1_Handler
                DCD     TMR0_2_Handler
                DCD     RTC_Handler
                DCD     CLK_XtalStop_Handler
                DCD     PWC_WKTM_Handler
                DCD     SWDT_Handler
                DCD     TMR6_1_GCmp_Handler
                DCD     TMR6_1_Ovf_Udf_Handler
                DCD     TMR6_1_Dte_Handler
                DCD     TMR6_1_SCmp_Handler
                DCD     TMRA_1_Ovf_Udf_Handler
                DCD     TMRA_1_Cmp_Handler
                DCD     TMR6_2_GCmp_Handler
                DCD     TMR6_2_Ovf_Udf_Handler
                DCD     TMR6_2_Dte_Handler
                DCD     TMR6_2_SCmp_Handler
                DCD     TMRA_2_Ovf_Udf_Handler
                DCD     TMRA_2_Cmp_Handler
                DCD     TMR6_3_GCmp_Handler
                DCD     TMR6_3_Ovf_Udf_Handler
                DCD     TMR6_3_Dte_Handler
                DCD     TMR6_3_SCmp_Handler
                DCD     TMRA_3_Ovf_Udf_Handler
                DCD     TMRA_3_Cmp_Handler
                DCD     TMR6_4_GCmp_Handler
                DCD     TMR6_4_Ovf_Udf_Handler
                DCD     TMR6_4_Dte_Handler
                DCD     TMR6_4_SCmp_Handler
                DCD     TMRA_4_Ovf_Udf_Handler
                DCD     TMRA_4_Cmp_Handler
                DCD     HRPWM_1_GCmp_Handler
                DCD     HRPWM_1_Ovf_Udf_Handler
                DCD     HRPWM_1_SCmp_Handler
                DCD     HRPWM_1_GCap_Handler
                DCD     HRPWM_2_GCmp_Handler
                DCD     HRPWM_2_Ovf_Udf_Handler
                DCD     HRPWM_2_SCmp_Handler
                DCD     HRPWM_2_GCap_Handler
                DCD     HRPWM_Handler
                DCD     EMB_GR0_Handler
                DCD     EMB_GR1_Handler
                DCD     EMB_GR2_Handler
                DCD     EMB_GR3_Handler
                DCD     HRPWM_3_GCmp_Handler
                DCD     HRPWM_3_Ovf_Udf_Handler
                DCD     HRPWM_3_SCmp_Handler
                DCD     HRPWM_3_GCap_Handler
                DCD     HRPWM_4_GCmp_Handler
                DCD     HRPWM_4_Ovf_Udf_Handler
                DCD     HRPWM_4_SCmp_Handler
                DCD     HRPWM_4_GCap_Handler
                DCD     EMB_GR4_Handler
                DCD     EMB_GR5_Handler
                DCD     EMB_GR6_Handler
                DCD     EMB_GR7_Handler
                DCD     EMB_GR8_Handler
                DCD     HRPWM_5_GCmp_Handler
                DCD     HRPWM_5_Ovf_Udf_Handler
                DCD     HRPWM_5_SCmp_Handler
                DCD     HRPWM_5_GCap_Handler
                DCD     HRPWM_6_GCmp_Handler
                DCD     HRPWM_6_Ovf_Udf_Handler
                DCD     HRPWM_6_SCmp_Handler
                DCD     HRPWM_6_GCap_Handler
                DCD     MCANRAM_ECCError_Handler
                DCD     MCAN1_INT0_Handler
                DCD     MCAN1_INT1_Handler
                DCD     MCAN2_INT0_Handler
                DCD     MCAN2_INT1_Handler
                DCD     TMR4_GCmp_Handler
                DCD     TMR4_Ovf_Udf_Handler
                DCD     TMR4_Reload_Handler
                DCD     TMR4_SCmp_Handler
                DCD     CMP1_Handler
                DCD     CMP2_Handler
                DCD     CMP3_Handler
                DCD     I2C_Handler
                DCD     USART1_Handler
                DCD     USART1_TCI_Handler
                DCD     SPI_Handler
                DCD     TMRA_5_Ovf_Udf_Handler
                DCD     TMRA_5_Cmp_Handler
                DCD     EVENT_PORT1_Handler
                DCD     EVENT_PORT2_Handler
                DCD     EVENT_PORT3_Handler
                DCD     EVENT_PORT4_Handler
                DCD     USART2_Handler
                DCD     USART2_TxComplete_Handler
                DCD     USART3_Handler
                DCD     USART3_TxComplete_Handler
                DCD     USART4_Handler
                DCD     USART4_TxComplete_Handler
                DCD     PLA_Handler
                DCD     USART1_WKUP_Handler
                DCD     PWC_LVD1_Handler
                DCD     PWC_LVD2_Handler
                DCD     FCM_Handler
                DCD     WDT_Handler
                DCD     CTC_Handler
                DCD     ADC1_Handler
                DCD     ADC2_Handler
                DCD     ADC3_Handler

__Vectors_End

__Vectors_Size  EQU     __Vectors_End - __Vectors

                AREA    |.text|, CODE, READONLY

; Reset Handler

Reset_Handler   PROC
                EXPORT  Reset_Handler             [WEAK]
                IMPORT  SystemInit
                IMPORT  __main
;ClrSramSR
                LDR     R0, =0x40050810
                LDR     R1, =0x1F8
                STR     R1, [R0]

                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =__main
                BX      R0
                ENDP

; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler     PROC
                EXPORT  NMI_Handler               [WEAK]
                B       .
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler         [WEAK]
                B       .
                ENDP
MemManage_Handler\
                PROC
                EXPORT  MemManage_Handler         [WEAK]
                B       .
                ENDP
BusFault_Handler\
                PROC
                EXPORT  BusFault_Handler          [WEAK]
                B       .
                ENDP
UsageFault_Handler\
                PROC
                EXPORT  UsageFault_Handler        [WEAK]
                B       .
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler               [WEAK]
                B       .
                ENDP
DebugMon_Handler\
                PROC
                EXPORT  DebugMon_Handler          [WEAK]
                B       .
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler            [WEAK]
                B       .
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler           [WEAK]
                B       .
                ENDP

Default_Handler PROC
                EXPORT  IRQ000_Handler                  [WEAK]
                EXPORT  IRQ001_Handler                  [WEAK]
                EXPORT  IRQ002_Handler                  [WEAK]
                EXPORT  IRQ003_Handler                  [WEAK]
                EXPORT  IRQ004_Handler                  [WEAK]
                EXPORT  IRQ005_Handler                  [WEAK]
                EXPORT  IRQ006_Handler                  [WEAK]
                EXPORT  IRQ007_Handler                  [WEAK]
                EXPORT  IRQ008_Handler                  [WEAK]
                EXPORT  IRQ009_Handler                  [WEAK]
                EXPORT  IRQ010_Handler                  [WEAK]
                EXPORT  IRQ011_Handler                  [WEAK]
                EXPORT  IRQ012_Handler                  [WEAK]
                EXPORT  IRQ013_Handler                  [WEAK]
                EXPORT  IRQ014_Handler                  [WEAK]
                EXPORT  IRQ015_Handler                  [WEAK]
                EXPORT  EXTINT00_SWINT16_Handler        [WEAK]
                EXPORT  EXTINT01_SWINT17_Handler        [WEAK]
                EXPORT  EXTINT02_SWINT18_Handler        [WEAK]
                EXPORT  EXTINT03_SWINT19_Handler        [WEAK]
                EXPORT  EXTINT04_SWINT20_Handler        [WEAK]
                EXPORT  EXTINT05_SWINT21_Handler        [WEAK]
                EXPORT  EXTINT06_SWINT22_Handler        [WEAK]
                EXPORT  EXTINT07_SWINT23_Handler        [WEAK]
                EXPORT  EXTINT08_SWINT24_Handler        [WEAK]
                EXPORT  EXTINT09_SWINT25_Handler        [WEAK]
                EXPORT  EXTINT10_SWINT26_Handler        [WEAK]
                EXPORT  EXTINT11_SWINT27_Handler        [WEAK]
                EXPORT  EXTINT12_SWINT28_Handler        [WEAK]
                EXPORT  EXTINT13_SWINT29_Handler        [WEAK]
                EXPORT  EXTINT14_SWINT30_Handler        [WEAK]
                EXPORT  EXTINT15_SWINT31_Handler        [WEAK]
                EXPORT  DMA_Error_Handler              [WEAK]
                EXPORT  DMA_TC0_BTC0_Handler           [WEAK]
                EXPORT  DMA_TC1_BTC1_Handler           [WEAK]
                EXPORT  DMA_TC2_BTC2_Handler           [WEAK]
                EXPORT  DMA_TC3_BTC3_Handler           [WEAK]
                EXPORT  DMA_TC4_BTC4_Handler           [WEAK]
                EXPORT  DMA_TC5_BTC5_Handler           [WEAK]
                EXPORT  DMA_TC6_BTC6_Handler           [WEAK]
                EXPORT  DMA_TC7_BTC7_Handler           [WEAK]
                EXPORT  EFM_PEError_ReadCol_Handler     [WEAK]
                EXPORT  EFM_OpEnd_Handler               [WEAK]
                EXPORT  FPU_Error_Handler               [WEAK]
                EXPORT  TMR0_1_Handler                  [WEAK]
                EXPORT  TMR0_2_Handler                  [WEAK]
                EXPORT  RTC_Handler                     [WEAK]
                EXPORT  CLK_XtalStop_Handler            [WEAK]
                EXPORT  PWC_WKTM_Handler                [WEAK]
                EXPORT  SWDT_Handler                    [WEAK]
                EXPORT  TMR6_1_GCmp_Handler             [WEAK]
                EXPORT  TMR6_1_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMR6_1_Dte_Handler              [WEAK]
                EXPORT  TMR6_1_SCmp_Handler             [WEAK]
                EXPORT  TMRA_1_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMRA_1_Cmp_Handler              [WEAK]
                EXPORT  TMR6_2_GCmp_Handler             [WEAK]
                EXPORT  TMR6_2_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMR6_2_Dte_Handler              [WEAK]
                EXPORT  TMR6_2_SCmp_Handler             [WEAK]
                EXPORT  TMRA_2_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMRA_2_Cmp_Handler              [WEAK]
                EXPORT  TMR6_3_GCmp_Handler             [WEAK]
                EXPORT  TMR6_3_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMR6_3_Dte_Handler              [WEAK]
                EXPORT  TMR6_3_SCmp_Handler             [WEAK]
                EXPORT  TMRA_3_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMRA_3_Cmp_Handler              [WEAK]
                EXPORT  TMR6_4_GCmp_Handler             [WEAK]
                EXPORT  TMR6_4_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMR6_4_Dte_Handler              [WEAK]
                EXPORT  TMR6_4_SCmp_Handler             [WEAK]
                EXPORT  TMRA_4_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMRA_4_Cmp_Handler              [WEAK]
                EXPORT  HRPWM_1_GCmp_Handler            [WEAK]
                EXPORT  HRPWM_1_Ovf_Udf_Handler         [WEAK]
                EXPORT  HRPWM_1_SCmp_Handler            [WEAK]
                EXPORT  HRPWM_1_GCap_Handler            [WEAK]
                EXPORT  HRPWM_2_GCmp_Handler            [WEAK]
                EXPORT  HRPWM_2_Ovf_Udf_Handler         [WEAK]
                EXPORT  HRPWM_2_SCmp_Handler            [WEAK]
                EXPORT  HRPWM_2_GCap_Handler            [WEAK]
                EXPORT  HRPWM_Handler                   [WEAK]
                EXPORT  EMB_GR0_Handler                 [WEAK]
                EXPORT  EMB_GR1_Handler                 [WEAK]
                EXPORT  EMB_GR2_Handler                 [WEAK]
                EXPORT  EMB_GR3_Handler                 [WEAK]
                EXPORT  HRPWM_3_GCmp_Handler            [WEAK]
                EXPORT  HRPWM_3_Ovf_Udf_Handler         [WEAK]
                EXPORT  HRPWM_3_SCmp_Handler            [WEAK]
                EXPORT  HRPWM_3_GCap_Handler            [WEAK]
                EXPORT  HRPWM_4_GCmp_Handler            [WEAK]
                EXPORT  HRPWM_4_Ovf_Udf_Handler         [WEAK]
                EXPORT  HRPWM_4_SCmp_Handler            [WEAK]
                EXPORT  HRPWM_4_GCap_Handler            [WEAK]
                EXPORT  EMB_GR4_Handler                 [WEAK]
                EXPORT  EMB_GR5_Handler                 [WEAK]
                EXPORT  EMB_GR6_Handler                 [WEAK]
                EXPORT  EMB_GR7_Handler                 [WEAK]
                EXPORT  EMB_GR8_Handler                 [WEAK]
                EXPORT  HRPWM_5_GCmp_Handler            [WEAK]
                EXPORT  HRPWM_5_Ovf_Udf_Handler         [WEAK]
                EXPORT  HRPWM_5_SCmp_Handler            [WEAK]
                EXPORT  HRPWM_5_GCap_Handler            [WEAK]
                EXPORT  HRPWM_6_GCmp_Handler            [WEAK]
                EXPORT  HRPWM_6_Ovf_Udf_Handler         [WEAK]
                EXPORT  HRPWM_6_SCmp_Handler            [WEAK]
                EXPORT  HRPWM_6_GCap_Handler            [WEAK]
                EXPORT  MCANRAM_ECCError_Handler         [WEAK]
                EXPORT  MCAN1_INT0_Handler               [WEAK]
                EXPORT  MCAN1_INT1_Handler               [WEAK]
                EXPORT  MCAN2_INT0_Handler               [WEAK]
                EXPORT  MCAN2_INT1_Handler               [WEAK]
                EXPORT  TMR4_GCmp_Handler             [WEAK]
                EXPORT  TMR4_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMR4_Reload_Handler           [WEAK]
                EXPORT  TMR4_SCmp_Handler             [WEAK]
                EXPORT  CMP1_Handler                    [WEAK]
                EXPORT  CMP2_Handler                    [WEAK]
                EXPORT  CMP3_Handler                    [WEAK]
                EXPORT  I2C_Handler                    [WEAK]
                EXPORT  USART1_Handler                  [WEAK]
                EXPORT  USART1_TCI_Handler              [WEAK]
                EXPORT  SPI_Handler                    [WEAK]
                EXPORT  TMRA_5_Ovf_Udf_Handler          [WEAK]
                EXPORT  TMRA_5_Cmp_Handler              [WEAK]
                EXPORT  EVENT_PORT1_Handler             [WEAK]
                EXPORT  EVENT_PORT2_Handler             [WEAK]
                EXPORT  EVENT_PORT3_Handler             [WEAK]
                EXPORT  EVENT_PORT4_Handler             [WEAK]
                EXPORT  USART2_Handler                  [WEAK]
                EXPORT  USART2_TxComplete_Handler       [WEAK]
                EXPORT  USART3_Handler                  [WEAK]
                EXPORT  USART3_TxComplete_Handler       [WEAK]
                EXPORT  USART4_Handler                  [WEAK]
                EXPORT  USART4_TxComplete_Handler       [WEAK]
                EXPORT  PLA_Handler                     [WEAK]
                EXPORT  USART1_WKUP_Handler             [WEAK]
                EXPORT  PWC_LVD1_Handler                [WEAK]
                EXPORT  PWC_LVD2_Handler                [WEAK]
                EXPORT  FCM_Handler                     [WEAK]
                EXPORT  WDT_Handler                     [WEAK]
                EXPORT  CTC_Handler                     [WEAK]
                EXPORT  ADC1_Handler                    [WEAK]
                EXPORT  ADC2_Handler                    [WEAK]
                EXPORT  ADC3_Handler                    [WEAK]

IRQ000_Handler
IRQ001_Handler
IRQ002_Handler
IRQ003_Handler
IRQ004_Handler
IRQ005_Handler
IRQ006_Handler
IRQ007_Handler
IRQ008_Handler
IRQ009_Handler
IRQ010_Handler
IRQ011_Handler
IRQ012_Handler
IRQ013_Handler
IRQ014_Handler
IRQ015_Handler
EXTINT00_SWINT16_Handler
EXTINT01_SWINT17_Handler
EXTINT02_SWINT18_Handler
EXTINT03_SWINT19_Handler
EXTINT04_SWINT20_Handler
EXTINT05_SWINT21_Handler
EXTINT06_SWINT22_Handler
EXTINT07_SWINT23_Handler
EXTINT08_SWINT24_Handler
EXTINT09_SWINT25_Handler
EXTINT10_SWINT26_Handler
EXTINT11_SWINT27_Handler
EXTINT12_SWINT28_Handler
EXTINT13_SWINT29_Handler
EXTINT14_SWINT30_Handler
EXTINT15_SWINT31_Handler
DMA_Error_Handler
DMA_TC0_BTC0_Handler
DMA_TC1_BTC1_Handler
DMA_TC2_BTC2_Handler
DMA_TC3_BTC3_Handler
DMA_TC4_BTC4_Handler
DMA_TC5_BTC5_Handler
DMA_TC6_BTC6_Handler
DMA_TC7_BTC7_Handler
EFM_PEError_ReadCol_Handler
EFM_OpEnd_Handler
FPU_Error_Handler
TMR0_1_Handler
TMR0_2_Handler
RTC_Handler
CLK_XtalStop_Handler
PWC_WKTM_Handler
SWDT_Handler
TMR6_1_GCmp_Handler
TMR6_1_Ovf_Udf_Handler
TMR6_1_Dte_Handler
TMR6_1_SCmp_Handler
TMRA_1_Ovf_Udf_Handler
TMRA_1_Cmp_Handler
TMR6_2_GCmp_Handler
TMR6_2_Ovf_Udf_Handler
TMR6_2_Dte_Handler
TMR6_2_SCmp_Handler
TMRA_2_Ovf_Udf_Handler
TMRA_2_Cmp_Handler
TMR6_3_GCmp_Handler
TMR6_3_Ovf_Udf_Handler
TMR6_3_Dte_Handler
TMR6_3_SCmp_Handler
TMRA_3_Ovf_Udf_Handler
TMRA_3_Cmp_Handler
TMR6_4_GCmp_Handler
TMR6_4_Ovf_Udf_Handler
TMR6_4_Dte_Handler
TMR6_4_SCmp_Handler
TMRA_4_Ovf_Udf_Handler
TMRA_4_Cmp_Handler
HRPWM_1_GCmp_Handler
HRPWM_1_Ovf_Udf_Handler
HRPWM_1_SCmp_Handler
HRPWM_1_GCap_Handler
HRPWM_2_GCmp_Handler
HRPWM_2_Ovf_Udf_Handler
HRPWM_2_SCmp_Handler
HRPWM_2_GCap_Handler
HRPWM_Handler
EMB_GR0_Handler
EMB_GR1_Handler
EMB_GR2_Handler
EMB_GR3_Handler
HRPWM_3_GCmp_Handler
HRPWM_3_Ovf_Udf_Handler
HRPWM_3_SCmp_Handler
HRPWM_3_GCap_Handler
HRPWM_4_GCmp_Handler
HRPWM_4_Ovf_Udf_Handler
HRPWM_4_SCmp_Handler
HRPWM_4_GCap_Handler
EMB_GR4_Handler
EMB_GR5_Handler
EMB_GR6_Handler
EMB_GR7_Handler
EMB_GR8_Handler
HRPWM_5_GCmp_Handler
HRPWM_5_Ovf_Udf_Handler
HRPWM_5_SCmp_Handler
HRPWM_5_GCap_Handler
HRPWM_6_GCmp_Handler
HRPWM_6_Ovf_Udf_Handler
HRPWM_6_SCmp_Handler
HRPWM_6_GCap_Handler
MCANRAM_ECCError_Handler
MCAN1_INT0_Handler
MCAN1_INT1_Handler
MCAN2_INT0_Handler
MCAN2_INT1_Handler
TMR4_GCmp_Handler
TMR4_Ovf_Udf_Handler
TMR4_Reload_Handler
TMR4_SCmp_Handler
CMP1_Handler
CMP2_Handler
CMP3_Handler
I2C_Handler
USART1_Handler
USART1_TCI_Handler
SPI_Handler
TMRA_5_Ovf_Udf_Handler
TMRA_5_Cmp_Handler
EVENT_PORT1_Handler
EVENT_PORT2_Handler
EVENT_PORT3_Handler
EVENT_PORT4_Handler
USART2_Handler
USART2_TxComplete_Handler
USART3_Handler
USART3_TxComplete_Handler
USART4_Handler
USART4_TxComplete_Handler
PLA_Handler
USART1_WKUP_Handler
PWC_LVD1_Handler
PWC_LVD2_Handler
FCM_Handler
WDT_Handler
CTC_Handler
ADC1_Handler
ADC2_Handler
ADC3_Handler

                B       .
                ENDP

                ALIGN


; User Initial Stack & Heap

                IF      :DEF:__MICROLIB

                EXPORT  __initial_sp
                EXPORT  __heap_base
                EXPORT  __heap_limit

                ELSE

                IMPORT  __use_two_region_memory
                EXPORT  __user_initial_stackheap

__user_initial_stackheap
                LDR     R0, =  Heap_Mem
                LDR     R1, =(Stack_Mem + Stack_Size)
                LDR     R2, = (Heap_Mem +  Heap_Size)
                LDR     R3, = Stack_Mem
                BX      LR

                ALIGN

                ENDIF


                END
