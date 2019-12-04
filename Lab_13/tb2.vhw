--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tb2.vhw
-- /___/   /\     Timestamp : Fri Apr 26 19:43:38 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb2
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb2 IS
END tb2;

ARCHITECTURE testbench_arch OF tb2 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT alu
        PORT (
            rega : In std_logic_vector (4 DownTo 0);
            regb : In std_logic_vector (4 DownTo 0);
            controls : In std_logic_vector (3 DownTo 0);
            alu_out : Out std_logic_vector (4 DownTo 0);
            ccr_out : Out std_logic_vector (3 DownTo 0);
            clk : In std_logic
        );
    END COMPONENT;

    SIGNAL rega : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL regb : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL controls : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL alu_out : std_logic_vector (4 DownTo 0) := "00000";
    SIGNAL ccr_out : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL clk : std_logic := '0';

    BEGIN
        UUT : alu
        PORT MAP (
            rega => rega,
            regb => regb,
            controls => controls,
            alu_out => alu_out,
            ccr_out => ccr_out,
            clk => clk
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                rega <= "01111";
                regb <= "00001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                regb <= "00010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                regb <= "00011";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                regb <= "00100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                regb <= "00101";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                clk <= '1';
                regb <= "00110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                regb <= "00111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                regb <= "01000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                regb <= "01001";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                regb <= "01010";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                regb <= "01011";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                regb <= "01100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                regb <= "01101";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                regb <= "01110";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                rega <= "00000";
                regb <= "01111";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                rega <= "00001";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                rega <= "00010";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                rega <= "00011";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                rega <= "00100";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                rega <= "00101";
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                rega <= "00110";
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 100 ns;
                rega <= "00111";
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 100 ns;
                rega <= "01000";
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 100 ns;
                rega <= "01001";
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 100 ns;
                rega <= "01010";
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 100 ns;
                rega <= "01011";
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 100 ns;
                rega <= "01100";
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                rega <= "01101";
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                rega <= "01110";
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 100 ns;
                rega <= "01111";
                -- -------------------------------------
                WAIT FOR 2000 ns;

            END PROCESS;

    END testbench_arch;

