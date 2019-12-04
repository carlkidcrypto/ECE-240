--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TB.vhw
-- /___/   /\     Timestamp : Mon Apr 22 18:32:22 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TB IS
END TB;

ARCHITECTURE testbench_arch OF TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ALU
        PORT (
            A : In std_logic_vector (2 DownTo 0);
            B : In std_logic_vector (2 DownTo 0);
            OP : In std_logic_vector (1 DownTo 0);
            LED : Out std_logic;
            Y : Out std_logic_vector (2 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL B : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL OP : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL LED : std_logic := '0';
    SIGNAL Y : std_logic_vector (2 DownTo 0) := "000";

    BEGIN
        UUT : ALU
        PORT MAP (
            A => A,
            B => B,
            OP => OP,
            LED => LED,
            Y => Y
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                B <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                A <= "011";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 300 ns;
                OP <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 400 ns;
                A <= "110";
                OP <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 200 ns;
                B <= "100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 200 ns;
                OP <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 400 ns;
                OP <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 200 ns;
                A <= "001";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                B <= "011";
                OP <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 400 ns;
                OP <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 200 ns;
                A <= "111";
                B <= "110";
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 300 ns;
                OP <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  3200ns
                WAIT FOR 300 ns;
                A <= "010";
                B <= "000";
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 100 ns;
                OP <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  3400ns
                WAIT FOR 100 ns;
                OP <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  3700ns
                WAIT FOR 300 ns;
                A <= "100";
                B <= "101";
                -- -------------------------------------
                -- -------------  Current Time:  4000ns
                WAIT FOR 300 ns;
                OP <= "00";
                -- -------------------------------------
                WAIT FOR 1000 ns;

            END PROCESS;

    END testbench_arch;

