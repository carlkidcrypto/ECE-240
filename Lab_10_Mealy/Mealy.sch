VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLK
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL RST
        SIGNAL XLXN_14
        SIGNAL XLXN_24
        SIGNAL X
        SIGNAL XLXN_12
        SIGNAL XLXN_33
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL Y
        PORT Input CLK
        PORT Input RST
        PORT Input X
        PORT Output Y
        BEGIN BLOCKDEF fdr
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCK S1 fdr
            PIN C CLK
            PIN D XLXN_4
            PIN R RST
            PIN Q XLXN_35
        END BLOCK
        BEGIN BLOCK S0 fdr
            PIN C CLK
            PIN D XLXN_5
            PIN R RST
            PIN Q XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_3 and3
            PIN I0 X
            PIN I1 XLXN_12
            PIN I2 XLXN_24
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 XLXN_2
            PIN I1 XLXN_3
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 and3
            PIN I0 XLXN_36
            PIN I1 XLXN_12
            PIN I2 XLXN_24
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_11 inv
            PIN I XLXN_35
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I XLXN_12
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I X
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_15 and3
            PIN I0 XLXN_36
            PIN I1 XLXN_14
            PIN I2 XLXN_24
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_16 and3
            PIN I0 XLXN_36
            PIN I1 XLXN_33
            PIN I2 XLXN_35
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_17 inv
            PIN I XLXN_12
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_19 obuf
            PIN I XLXN_42
            PIN O Y
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE S1 1936 816 R0
            BEGIN DISPLAY 160 -220 ATTR InstName
                FONT 40 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE S0 1936 1424 R0
            BEGIN DISPLAY 160 -220 ATTR InstName
                FONT 40 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH XLXN_4
            WIRE 1536 528 1920 528
            WIRE 1920 528 1920 560
            WIRE 1920 560 1936 560
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1760 1168 1936 1168
        END BRANCH
        INSTANCE XLXI_6 1504 1264 R0
        BEGIN BRANCH XLXN_2
            WIRE 1456 1264 1488 1264
            WIRE 1488 1200 1504 1200
            WIRE 1488 1200 1488 1264
        END BRANCH
        BEGIN BRANCH RST
            WIRE 256 144 256 800
            WIRE 256 800 256 1440
            WIRE 256 1440 256 2480
            WIRE 256 1440 1936 1440
            WIRE 256 800 1936 800
            WIRE 1936 784 1936 800
            WIRE 1936 1392 1936 1440
        END BRANCH
        IOMARKER 112 144 CLK R270 28
        IOMARKER 256 144 RST R270 28
        INSTANCE XLXI_3 1280 656 R0
        IOMARKER 336 160 X R270 28
        INSTANCE XLXI_12 944 208 R90
        BEGIN BRANCH XLXN_14
            WIRE 976 432 976 1104
            WIRE 976 1104 976 2464
            WIRE 976 1104 1200 1104
        END BRANCH
        INSTANCE XLXI_11 640 192 R90
        INSTANCE XLXI_13 416 192 R90
        BEGIN BRANCH X
            WIRE 336 160 336 176
            WIRE 336 176 448 176
            WIRE 448 176 448 192
            WIRE 336 176 336 592
            WIRE 336 592 336 2480
            WIRE 336 592 1280 592
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 672 416 672 464
            WIRE 672 464 672 1040
            WIRE 672 1040 1200 1040
            WIRE 672 1040 672 1200
            WIRE 672 1200 672 2480
            WIRE 672 1200 1200 1200
            WIRE 672 464 1280 464
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 784 128 2368 128
            WIRE 2368 128 2368 912
            WIRE 2368 912 2368 1168
            WIRE 2368 912 2464 912
            WIRE 784 128 784 208
            WIRE 784 208 784 528
            WIRE 784 528 784 1264
            WIRE 784 1264 784 2464
            WIRE 784 1264 1200 1264
            WIRE 784 528 1280 528
            WIRE 784 208 976 208
            WIRE 2320 1168 2368 1168
            WIRE 2464 864 2464 912
            WIRE 2464 864 2576 864
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 112 144 112 688
            WIRE 112 688 1936 688
            WIRE 112 688 112 1392
            WIRE 112 1392 112 2480
            WIRE 112 1392 1536 1392
            WIRE 1536 1296 1936 1296
            WIRE 1536 1296 1536 1392
        END BRANCH
        INSTANCE XLXI_5 1200 1392 R0
        BEGIN BRANCH XLXN_3
            WIRE 1456 1104 1488 1104
            WIRE 1488 1104 1488 1136
            WIRE 1488 1136 1504 1136
        END BRANCH
        INSTANCE XLXI_15 1200 1232 R0
        BEGIN BRANCH XLXN_33
            WIRE 2800 864 2816 864
            WIRE 2816 864 2848 864
        END BRANCH
        INSTANCE XLXI_17 2576 896 R0
        INSTANCE XLXI_16 2848 992 R0
        BEGIN BRANCH XLXN_35
            WIRE 560 192 560 2480
            WIRE 560 192 672 192
            WIRE 672 112 2384 112
            WIRE 2384 112 2384 368
            WIRE 2384 368 2384 560
            WIRE 2384 368 2848 368
            WIRE 2848 368 2848 800
            WIRE 672 112 672 192
            WIRE 2320 560 2384 560
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 448 416 448 1168
            WIRE 448 1168 1200 1168
            WIRE 448 1168 448 1360
            WIRE 448 1360 448 1568
            WIRE 448 1568 2848 1568
            WIRE 448 1568 448 2448
            WIRE 448 1312 464 1312
            WIRE 464 1312 464 1328
            WIRE 464 1328 1200 1328
            WIRE 448 1312 448 1360
            WIRE 2848 928 2848 1568
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 3104 864 3136 864
        END BRANCH
        INSTANCE XLXI_19 3136 896 R0
        BEGIN BRANCH Y
            WIRE 3360 864 3392 864
        END BRANCH
        IOMARKER 3392 864 Y R0 28
    END SHEET
END SCHEMATIC
