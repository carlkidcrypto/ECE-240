--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : comparator_2b_tbw.vhw
-- /___/   /\     Timestamp : Tue Mar 05 15:38:46 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: comparator_2b_tbw
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY comparator_2b_tbw IS
END comparator_2b_tbw;

ARCHITECTURE testbench_arch OF comparator_2b_tbw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT comparator_2b
        PORT (
            A : In std_logic_vector (1 DownTo 0);
            B : In std_logic_vector (1 DownTo 0);
            G : Out std_logic;
            L : Out std_logic;
            E : Out std_logic
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL B : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL G : std_logic := '0';
    SIGNAL L : std_logic := '0';
    SIGNAL E : std_logic := '0';

    BEGIN
        UUT : comparator_2b
        PORT MAP (
            A => A,
            B => B,
            G => G,
            L => L,
            E => E
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                A <= "01";
                B <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                A <= "10";
                B <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                B <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                A <= "11";
                B <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                B <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                B <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                B <= "11";
                -- -------------------------------------
                WAIT FOR 400 ns;

            END PROCESS;

    END testbench_arch;

