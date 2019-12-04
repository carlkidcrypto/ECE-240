VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_23
        SIGNAL XLXN_60
        SIGNAL XLXN_85
        SIGNAL XLXN_59
        SIGNAL XLXN_61
        SIGNAL XLXN_101
        SIGNAL XLXN_102
        SIGNAL XLXN_103
        SIGNAL S1next
        SIGNAL S0next
        SIGNAL S0N
        SIGNAL S2N
        SIGNAL CLK
        SIGNAL XLXN_163
        SIGNAL XLXN_164
        SIGNAL XLXN_165
        SIGNAL XLXN_166
        SIGNAL XLXN_167
        SIGNAL XLXN_168
        SIGNAL XLXN_171
        SIGNAL XLXN_169
        SIGNAL S1N
        SIGNAL A
        SIGNAL XLXN_175
        SIGNAL XLXN_178
        SIGNAL XLXN_179
        SIGNAL XLXN_180
        SIGNAL XLXN_182
        PORT Output S0N
        PORT Output S2N
        PORT Input CLK
        PORT Output S1N
        PORT Input A
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
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF or5
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 72 -192 
            LINE N 0 -256 48 -256 
            LINE N 0 -320 48 -320 
            LINE N 256 -192 192 -192 
            ARC N 28 -320 204 -144 112 -144 192 -192 
            LINE N 112 -240 48 -240 
            LINE N 112 -144 48 -144 
            LINE N 48 -64 48 -144 
            LINE N 48 -320 48 -240 
            ARC N 28 -240 204 -64 192 -192 112 -240 
            ARC N -40 -248 72 -136 48 -144 48 -240 
        END BLOCKDEF
        BEGIN BLOCK S2_INV inv
            PIN I S2N
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK S1_INV inv
            PIN I S1N
            PIN O XLXN_169
        END BLOCK
        BEGIN BLOCK S0_INV inv
            PIN I S0N
            PIN O XLXN_171
        END BLOCK
        BEGIN BLOCK XLXI_46 and3
            PIN I0 XLXN_179
            PIN I1 XLXN_169
            PIN I2 S2N
            PIN O XLXN_85
        END BLOCK
        BEGIN BLOCK XLXI_47 and3
            PIN I0 A
            PIN I1 XLXN_171
            PIN I2 S1N
            PIN O XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_48 and3
            PIN I0 A
            PIN I1 S0N
            PIN I2 XLXN_169
            PIN O XLXN_60
        END BLOCK
        BEGIN BLOCK XLXI_49 and3
            PIN I0 S0N
            PIN I1 XLXN_169
            PIN I2 S2N
            PIN O XLXN_61
        END BLOCK
        BEGIN BLOCK XLXI_51 or4
            PIN I0 XLXN_61
            PIN I1 XLXN_60
            PIN I2 XLXN_59
            PIN I3 XLXN_85
            PIN O S1next
        END BLOCK
        BEGIN BLOCK XLXI_57 and3
            PIN I0 XLXN_179
            PIN I1 S0N
            PIN I2 S1N
            PIN O XLXN_102
        END BLOCK
        BEGIN BLOCK XLXI_58 and3
            PIN I0 CLK
            PIN I1 S0N
            PIN I2 S2N
            PIN O XLXN_103
        END BLOCK
        BEGIN BLOCK XLXI_59 or3
            PIN I0 XLXN_103
            PIN I1 XLXN_102
            PIN I2 XLXN_101
            PIN O S0next
        END BLOCK
        BEGIN BLOCK XLXI_56 and2
            PIN I0 A
            PIN I1 XLXN_171
            PIN O XLXN_101
        END BLOCK
        BEGIN BLOCK XLXI_23 and4
            PIN I0 A
            PIN I1 S0N
            PIN I2 S1N
            PIN I3 XLXN_23
            PIN O XLXN_164
        END BLOCK
        BEGIN BLOCK XLXI_25 and3
            PIN I0 XLXN_179
            PIN I1 S1N
            PIN I2 S2N
            PIN O XLXN_165
        END BLOCK
        BEGIN BLOCK XLXI_26 and3
            PIN I0 XLXN_171
            PIN I1 S1N
            PIN I2 S2N
            PIN O XLXN_166
        END BLOCK
        BEGIN BLOCK XLXI_27 and3
            PIN I0 A
            PIN I1 XLXN_171
            PIN I2 S2N
            PIN O XLXN_167
        END BLOCK
        BEGIN BLOCK XLXI_60 and3
            PIN I0 A
            PIN I1 XLXN_169
            PIN I2 S2N
            PIN O XLXN_168
        END BLOCK
        BEGIN BLOCK XLXI_11 fd
            PIN C CLK
            PIN D S0next
            PIN Q S0N
        END BLOCK
        BEGIN BLOCK XLXI_13 fd
            PIN C CLK
            PIN D S1next
            PIN Q S1N
        END BLOCK
        BEGIN BLOCK XLXI_66 or5
            PIN I0 XLXN_168
            PIN I1 XLXN_167
            PIN I2 XLXN_166
            PIN I3 XLXN_165
            PIN I4 XLXN_164
            PIN O XLXN_163
        END BLOCK
        BEGIN BLOCK XLXI_67 fd
            PIN C CLK
            PIN D XLXN_163
            PIN Q S2N
        END BLOCK
        BEGIN BLOCK XLXI_68 inv
            PIN I A
            PIN O XLXN_179
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        INSTANCE XLXI_46 1632 1792 R0
        INSTANCE XLXI_47 1632 2000 R0
        INSTANCE XLXI_48 1616 2208 R0
        INSTANCE XLXI_49 1616 2400 R0
        BEGIN BRANCH XLXN_60
            WIRE 1872 2080 1904 2080
            WIRE 1904 1936 1904 2080
            WIRE 1904 1936 1936 1936
        END BRANCH
        BEGIN BRANCH XLXN_85
            WIRE 1888 1664 1936 1664
            WIRE 1936 1664 1936 1808
        END BRANCH
        BEGIN BRANCH XLXN_59
            WIRE 1888 1872 1936 1872
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 1872 2272 1936 2272
            WIRE 1936 2000 1936 2272
        END BRANCH
        INSTANCE XLXI_51 1936 2064 R0
        INSTANCE XLXI_57 1632 2832 R0
        INSTANCE XLXI_58 1616 3024 R0
        INSTANCE XLXI_59 2064 2832 R0
        BEGIN BRANCH XLXN_101
            WIRE 1888 2512 2064 2512
            WIRE 2064 2512 2064 2640
        END BRANCH
        INSTANCE XLXI_56 1632 2608 R0
        BEGIN BRANCH XLXN_102
            WIRE 1888 2704 2064 2704
        END BRANCH
        BEGIN BRANCH XLXN_103
            WIRE 1872 2896 2064 2896
            WIRE 2064 2768 2064 2896
        END BRANCH
        BEGIN BRANCH S1next
            WIRE 2192 1904 2208 1904
            WIRE 2208 1904 2208 2112
            WIRE 2208 2112 3472 2112
        END BRANCH
        BEGIN BRANCH S0next
            WIRE 2320 2704 2336 2704
            WIRE 2336 2576 3456 2576
            WIRE 2336 2576 2336 2704
        END BRANCH
        BEGIN BRANCH S0N
            WIRE 992 384 4160 384
            WIRE 4160 384 4160 2576
            WIRE 992 384 992 496
            WIRE 992 496 1136 496
            WIRE 1136 496 1136 512
            WIRE 992 496 992 912
            WIRE 992 912 992 2160
            WIRE 992 2160 992 2400
            WIRE 992 2400 992 2704
            WIRE 992 2704 992 2896
            WIRE 992 2896 992 2992
            WIRE 992 2896 1616 2896
            WIRE 992 2704 1632 2704
            WIRE 992 2400 1616 2400
            WIRE 992 2160 1392 2160
            WIRE 992 912 1472 912
            WIRE 1392 2080 1392 2160
            WIRE 1392 2080 1616 2080
            WIRE 1472 688 1472 912
            WIRE 1472 688 2752 688
            WIRE 1616 2336 1616 2400
            WIRE 3840 2576 4128 2576
            WIRE 4128 2576 4128 2592
            WIRE 4128 2592 4560 2592
            WIRE 4128 2576 4160 2576
            WIRE 4560 2576 4560 2592
        END BRANCH
        INSTANCE XLXI_23 2752 816 R0
        INSTANCE XLXI_25 2768 1008 R0
        INSTANCE XLXI_26 2768 1168 R0
        INSTANCE XLXI_27 2384 1264 R0
        INSTANCE XLXI_60 2784 1488 R0
        INSTANCE XLXI_11 3456 2832 R0
        INSTANCE XLXI_13 3472 2368 R0
        INSTANCE XLXI_66 3216 1072 R0
        BEGIN BRANCH CLK
            WIRE 1472 2944 1472 2992
            WIRE 1472 2992 1488 2992
            WIRE 1472 2944 1504 2944
            WIRE 1504 2944 1504 2960
            WIRE 1504 2960 1616 2960
            WIRE 1488 496 1488 544
            WIRE 1488 544 1488 2064
            WIRE 1488 2064 1488 2784
            WIRE 1488 2784 1488 2992
            WIRE 1488 2784 2464 2784
            WIRE 1488 2064 1520 2064
            WIRE 1520 2064 1520 2192
            WIRE 1520 2192 1952 2192
            WIRE 1952 2192 1952 2240
            WIRE 1952 2240 3472 2240
            WIRE 1488 544 3440 544
            WIRE 3440 544 3440 576
            WIRE 3440 576 3552 576
            WIRE 3552 576 3552 928
            WIRE 3552 928 3664 928
            WIRE 2464 2704 3456 2704
            WIRE 2464 2704 2464 2784
        END BRANCH
        INSTANCE XLXI_67 3664 1056 R0
        BEGIN BRANCH XLXN_163
            WIRE 3472 880 3568 880
            WIRE 3568 800 3568 880
            WIRE 3568 800 3664 800
        END BRANCH
        BEGIN BRANCH XLXN_164
            WIRE 3008 656 3216 656
            WIRE 3216 656 3216 752
        END BRANCH
        BEGIN BRANCH XLXN_165
            WIRE 3024 880 3120 880
            WIRE 3120 816 3120 880
            WIRE 3120 816 3216 816
        END BRANCH
        BEGIN BRANCH XLXN_166
            WIRE 3024 1040 3136 1040
            WIRE 3136 880 3136 1040
            WIRE 3136 880 3216 880
        END BRANCH
        BEGIN BRANCH XLXN_167
            WIRE 2640 1136 3072 1136
            WIRE 3072 944 3072 1136
            WIRE 3072 944 3216 944
        END BRANCH
        BEGIN BRANCH XLXN_168
            WIRE 3040 1360 3216 1360
            WIRE 3216 1008 3216 1360
        END BRANCH
        BEGIN BRANCH XLXN_171
            WIRE 1136 736 1136 1264
            WIRE 1136 1264 1136 1408
            WIRE 1136 1408 1136 1936
            WIRE 1136 1936 1136 2512
            WIRE 1136 2512 1136 2976
            WIRE 1136 2512 1440 2512
            WIRE 1136 1936 1440 1936
            WIRE 1136 1408 1808 1408
            WIRE 1136 1264 2768 1264
            WIRE 1440 1872 1632 1872
            WIRE 1440 1872 1440 1936
            WIRE 1440 2480 1440 2512
            WIRE 1440 2480 1632 2480
            WIRE 1808 1136 2384 1136
            WIRE 1808 1136 1808 1408
            WIRE 2768 1104 2768 1264
        END BRANCH
        BEGIN BRANCH XLXN_169
            WIRE 848 736 848 1360
            WIRE 848 1360 848 1728
            WIRE 848 1728 848 2080
            WIRE 848 2080 848 2336
            WIRE 848 2336 848 2992
            WIRE 848 2336 1440 2336
            WIRE 848 2080 1344 2080
            WIRE 848 1728 1360 1728
            WIRE 848 1360 2784 1360
            WIRE 1344 2048 1616 2048
            WIRE 1344 2048 1344 2080
            WIRE 1360 1664 1632 1664
            WIRE 1360 1664 1360 1728
            WIRE 1440 2272 1616 2272
            WIRE 1440 2272 1440 2336
            WIRE 1616 2016 1616 2048
        END BRANCH
        BEGIN BRANCH S1N
            WIRE 688 304 4112 304
            WIRE 4112 304 4112 2112
            WIRE 4112 2112 4384 2112
            WIRE 688 304 688 496
            WIRE 688 496 848 496
            WIRE 848 496 848 512
            WIRE 688 496 688 848
            WIRE 688 848 1504 848
            WIRE 688 848 688 880
            WIRE 688 880 2768 880
            WIRE 688 880 688 1040
            WIRE 688 1040 688 1872
            WIRE 688 1872 688 2640
            WIRE 688 2640 688 2992
            WIRE 688 2640 1632 2640
            WIRE 688 1872 1312 1872
            WIRE 688 1040 2768 1040
            WIRE 1312 1840 1312 1872
            WIRE 1312 1840 1632 1840
            WIRE 1504 624 1504 848
            WIRE 1504 624 2752 624
            WIRE 1632 1808 1632 1840
            WIRE 3856 2112 4112 2112
        END BRANCH
        IOMARKER 1488 496 CLK R270 28
        BEGIN BRANCH S2N
            WIRE 336 160 4208 160
            WIRE 4208 160 4208 800
            WIRE 4208 800 4352 800
            WIRE 336 160 336 496
            WIRE 336 496 544 496
            WIRE 544 496 544 512
            WIRE 336 496 336 816
            WIRE 336 816 336 960
            WIRE 336 960 2768 960
            WIRE 2768 960 2768 976
            WIRE 336 960 336 1072
            WIRE 336 1072 336 1296
            WIRE 336 1296 2784 1296
            WIRE 336 1296 336 1600
            WIRE 336 1600 336 2272
            WIRE 336 2272 336 2816
            WIRE 336 2816 336 2992
            WIRE 336 2816 1616 2816
            WIRE 1616 2816 1616 2832
            WIRE 336 2272 1408 2272
            WIRE 336 1600 1632 1600
            WIRE 336 1072 2384 1072
            WIRE 336 816 2768 816
            WIRE 1408 2208 1616 2208
            WIRE 1408 2208 1408 2272
            WIRE 4048 800 4208 800
        END BRANCH
        IOMARKER 4352 800 S2N R0 28
        IOMARKER 4384 2112 S1N R0 28
        IOMARKER 4560 2576 S0N R270 28
        INSTANCE S2_INV 512 512 R90
        BEGIN BRANCH XLXN_23
            WIRE 544 736 544 784
            WIRE 544 784 912 784
            WIRE 912 784 1520 784
            WIRE 560 784 912 784
            WIRE 560 784 560 2992
            WIRE 1520 560 1520 784
            WIRE 1520 560 2752 560
        END BRANCH
        INSTANCE S1_INV 816 512 R90
        INSTANCE S0_INV 1104 512 R90
        BEGIN BRANCH A
            WIRE 1248 3024 1280 3024
            WIRE 1280 448 1280 464
            WIRE 1280 464 1392 464
            WIRE 1392 464 1392 480
            WIRE 1280 464 1280 752
            WIRE 1280 752 2752 752
            WIRE 1280 752 1280 1200
            WIRE 1280 1200 2384 1200
            WIRE 1280 1200 1280 1472
            WIRE 1280 1472 2784 1472
            WIRE 1280 1472 1280 2000
            WIRE 1280 2000 1632 2000
            WIRE 1280 2000 1280 2224
            WIRE 1280 2224 1440 2224
            WIRE 1280 2224 1280 2576
            WIRE 1280 2576 1280 3024
            WIRE 1280 2576 1456 2576
            WIRE 1440 2144 1440 2224
            WIRE 1440 2144 1616 2144
            WIRE 1456 2544 1456 2576
            WIRE 1456 2544 1632 2544
            WIRE 1632 1936 1632 2000
            WIRE 2784 1424 2784 1472
        END BRANCH
        IOMARKER 1280 448 A R270 28
        INSTANCE XLXI_68 1360 480 R90
        BEGIN BRANCH XLXN_179
            WIRE 1392 704 1392 944
            WIRE 1392 944 2768 944
            WIRE 1392 944 1392 1744
            WIRE 1392 1744 1632 1744
            WIRE 1392 1744 1392 2544
            WIRE 1392 2544 1392 2752
            WIRE 1392 2752 1392 2768
            WIRE 1392 2768 1392 3024
            WIRE 1392 2768 1632 2768
            WIRE 1632 1728 1632 1744
        END BRANCH
    END SHEET
END SCHEMATIC
