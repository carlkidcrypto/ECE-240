VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL X
        SIGNAL R
        BEGIN SIGNAL S1
        END SIGNAL
        BEGIN SIGNAL XLXN_5
        END SIGNAL
        SIGNAL XLXN_7
        BEGIN SIGNAL S0
        END SIGNAL
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_16
        SIGNAL CLK
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL Y
        SIGNAL XLXN_21
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        PORT Input X
        PORT Input R
        PORT Input CLK
        PORT Output Y
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
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
        BEGIN BLOCK S1_FD fd
            PIN C CLK
            PIN D XLXN_21
            PIN Q S1
        END BLOCK
        BEGIN BLOCK S2_FD fd
            PIN C CLK
            PIN D XLXN_34
            PIN Q S0
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I X
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I R
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I S1
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I S0
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_8 and4
            PIN I0 XLXN_18
            PIN I1 S1
            PIN I2 XLXN_9
            PIN I3 XLXN_10
            PIN O Y
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I S0
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_10 or2
            PIN I0 XLXN_23
            PIN I1 XLXN_24
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_12 and4
            PIN I0 XLXN_10
            PIN I1 X
            PIN I2 S0
            PIN I3 S1
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_13 and4
            PIN I0 XLXN_10
            PIN I1 XLXN_9
            PIN I2 XLXN_12
            PIN I3 S1
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 XLXN_35
            PIN I1 XLXN_36
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_15 and3
            PIN I0 R
            PIN I1 S0
            PIN I2 XLXN_11
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_16 and3
            PIN I0 XLXN_10
            PIN I1 XLXN_9
            PIN I2 XLXN_11
            PIN O XLXN_36
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH S1
            WIRE 512 80 2112 80
            WIRE 2112 80 2112 656
            WIRE 2112 656 2656 656
            WIRE 2112 656 2112 1088
            WIRE 512 80 512 192
            WIRE 512 192 608 192
            WIRE 608 192 608 208
            WIRE 512 192 512 640
            WIRE 512 640 1056 640
            WIRE 512 640 512 864
            WIRE 512 864 1056 864
            WIRE 512 864 512 2352
            WIRE 2000 1088 2112 1088
        END BRANCH
        BEGIN BRANCH S0
            WIRE 720 128 720 208
            WIRE 720 208 832 208
            WIRE 832 208 832 224
            WIRE 720 208 720 928
            WIRE 720 928 1056 928
            WIRE 720 928 720 1936
            WIRE 720 1936 720 2352
            WIRE 720 1936 1136 1936
            WIRE 720 128 2160 128
            WIRE 2160 128 2160 720
            WIRE 2160 720 2400 720
            WIRE 2160 720 2160 2112
            WIRE 2144 2112 2160 2112
        END BRANCH
        INSTANCE XLXI_4 144 208 R90
        INSTANCE XLXI_5 368 208 R90
        INSTANCE XLXI_6 576 208 R90
        INSTANCE XLXI_7 800 224 R90
        BEGIN BRANCH XLXN_9
            WIRE 176 432 176 592
            WIRE 176 592 2656 592
            WIRE 176 592 176 768
            WIRE 176 768 1056 768
            WIRE 176 768 176 1776
            WIRE 176 1776 176 2352
            WIRE 176 1776 1136 1776
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 400 432 400 528
            WIRE 400 528 2656 528
            WIRE 400 528 400 832
            WIRE 400 832 1056 832
            WIRE 400 832 400 1056
            WIRE 400 1056 1056 1056
            WIRE 400 1056 400 1840
            WIRE 400 1840 400 2352
            WIRE 400 1840 1136 1840
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 608 432 608 1712
            WIRE 608 1712 1136 1712
            WIRE 608 1712 608 1872
            WIRE 608 1872 1136 1872
            WIRE 608 1872 608 2352
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 832 448 832 704
            WIRE 832 704 832 2352
            WIRE 832 704 1056 704
        END BRANCH
        IOMARKER 288 128 R R270 28
        BEGIN BRANCH R
            WIRE 288 128 288 192
            WIRE 288 192 400 192
            WIRE 400 192 400 208
            WIRE 288 192 288 2000
            WIRE 288 2000 1152 2000
            WIRE 288 2000 288 2352
            WIRE 1136 2000 1152 2000
        END BRANCH
        IOMARKER 96 128 X R270 28
        BEGIN BRANCH X
            WIRE 96 128 96 192
            WIRE 96 192 176 192
            WIRE 176 192 176 208
            WIRE 96 192 96 976
            WIRE 96 976 96 992
            WIRE 96 992 96 2352
            WIRE 96 992 1056 992
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 992 224 992 1216
            WIRE 992 1216 992 2240
            WIRE 992 2240 992 2368
            WIRE 992 2240 1760 2240
            WIRE 992 1216 1616 1216
        END BRANCH
        IOMARKER 992 224 CLK R270 28
        INSTANCE XLXI_9 2400 752 R0
        BEGIN BRANCH XLXN_18
            WIRE 2624 720 2656 720
        END BRANCH
        INSTANCE XLXI_8 2656 784 R0
        BEGIN BRANCH Y
            WIRE 2912 624 3056 624
        END BRANCH
        IOMARKER 3056 624 Y R0 28
        BEGIN INSTANCE S2_FD 1760 2368 R0
            BEGIN DISPLAY 128 -216 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE S1_FD 1616 1344 R0
            BEGIN DISPLAY 144 -200 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        INSTANCE XLXI_12 1056 1120 R0
        INSTANCE XLXI_13 1056 896 R0
        INSTANCE XLXI_10 1344 960 R0
        BEGIN BRANCH XLXN_24
            WIRE 1312 736 1328 736
            WIRE 1328 736 1328 832
            WIRE 1328 832 1344 832
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1312 960 1328 960
            WIRE 1328 896 1344 896
            WIRE 1328 896 1328 960
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1600 864 1600 1088
            WIRE 1600 1088 1616 1088
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1680 1856 1744 1856
            WIRE 1744 1856 1744 2112
            WIRE 1744 2112 1760 2112
        END BRANCH
        INSTANCE XLXI_15 1136 2064 R0
        INSTANCE XLXI_16 1136 1904 R0
        INSTANCE XLXI_14 1424 1952 R0
        BEGIN BRANCH XLXN_36
            WIRE 1392 1776 1408 1776
            WIRE 1408 1776 1408 1824
            WIRE 1408 1824 1424 1824
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1392 1936 1408 1936
            WIRE 1408 1888 1424 1888
            WIRE 1408 1888 1408 1936
        END BRANCH
    END SHEET
END SCHEMATIC
