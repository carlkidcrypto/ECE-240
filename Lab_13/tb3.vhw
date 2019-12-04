--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tb3.vhw
-- /___/   /\     Timestamp : Fri Apr 26 20:23:47 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb3
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb3 IS
END tb3;

ARCHITECTURE testbench_arch OF tb3 IS
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

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

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

        PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                controls <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  385ns
                WAIT FOR 285 ns;
                rega <= "00001";
                regb <= "00001";
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 200 ns;
                rega <= "00010";
                regb <= "00010";
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 200 ns;
                rega <= "00011";
                regb <= "00011";
                -- -------------------------------------
                -- -------------  Current Time:  985ns
                WAIT FOR 200 ns;
                rega <= "00100";
                regb <= "00100";
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 200 ns;
                rega <= "00101";
                regb <= "00101";
                -- -------------------------------------
                -- -------------  Current Time:  1385ns
                WAIT FOR 200 ns;
                rega <= "00110";
                regb <= "00110";
                -- -------------------------------------
                -- -------------  Current Time:  1585ns
                WAIT FOR 200 ns;
                rega <= "00111";
                regb <= "00111";
                -- -------------------------------------
                -- -------------  Current Time:  1785ns
                WAIT FOR 200 ns;
                rega <= "01000";
                regb <= "01000";
                -- -------------------------------------
                -- -------------  Current Time:  1985ns
                WAIT FOR 200 ns;
                rega <= "01001";
                regb <= "01001";
                -- -------------------------------------
                -- -------------  Current Time:  2185ns
                WAIT FOR 200 ns;
                rega <= "01010";
                regb <= "01010";
                -- -------------------------------------
                -- -------------  Current Time:  2385ns
                WAIT FOR 200 ns;
                rega <= "01011";
                regb <= "01011";
                -- -------------------------------------
                -- -------------  Current Time:  2585ns
                WAIT FOR 200 ns;
                rega <= "01100";
                regb <= "01100";
                -- -------------------------------------
                -- -------------  Current Time:  2785ns
                WAIT FOR 200 ns;
                rega <= "01101";
                regb <= "01101";
                -- -------------------------------------
                -- -------------  Current Time:  2985ns
                WAIT FOR 200 ns;
                rega <= "01110";
                regb <= "01110";
                -- -------------------------------------
                -- -------------  Current Time:  3185ns
                WAIT FOR 200 ns;
                rega <= "01111";
                regb <= "01111";
                -- -------------------------------------
                -- -------------  Current Time:  3385ns
                WAIT FOR 200 ns;
                regb <= "00000";
                -- -------------------------------------
                -- -------------  Current Time:  3585ns
                WAIT FOR 200 ns;
                rega <= "00000";
                regb <= "01111";
                -- -------------------------------------
                WAIT FOR 1615 ns;

            END PROCESS;

    END testbench_arch;

