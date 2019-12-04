--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TB1.vhw
-- /___/   /\     Timestamp : Fri Apr 26 19:18:54 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TB1 IS
END TB1;

ARCHITECTURE testbench_arch OF TB1 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT alu
        PORT (
            rega : In std_logic_vector (4 DownTo 0);
            regb : In std_logic_vector (4 DownTo 0);
            controls : In std_logic_vector (3 DownTo 0);
            alu_out : Out std_logic_vector (4 DownTo 0);
            ccr_out : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL rega : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL regb : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL controls : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL alu_out : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL ccr_out : std_logic_vector (3 DownTo 0) := "0000";

    BEGIN
        UUT : alu
        PORT MAP (
            rega => rega,
            regb => regb,
            controls => controls,
            alu_out => alu_out,
            ccr_out => ccr_out
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                rega <= "00110";
                regb <= "00010";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                regb <= "00100";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                regb <= "00110";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                regb <= "01000";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                regb <= "01010";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                regb <= "01100";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                regb <= "01110";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                regb <= "00000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                regb <= "00010";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                regb <= "00100";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                regb <= "00110";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                regb <= "01000";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                regb <= "01010";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                regb <= "01100";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                regb <= "01110";
                -- -------------------------------------
                WAIT FOR 3500 ns;

            END PROCESS;

    END testbench_arch;

