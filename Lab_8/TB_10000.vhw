--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TB_10000.vhw
-- /___/   /\     Timestamp : Mon Mar 25 20:37:48 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB_10000
--Device: Xilinx
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_1164.All;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY TB_10000 IS
END TB_10000;

ARCHITECTURE testbench_arch OF TB_10000 IS
    COMPONENT Lab_8_crazy_counter_mealy_machine
        PORT (
            A : In STD_LOGIC;
            CLK : In STD_LOGIC;
            S0N : Out STD_LOGIC;
            S1N : Out STD_LOGIC;
            S2N : Out STD_LOGIC
        );
    END COMPONENT;

    SIGNAL A : STD_LOGIC := '0';
    SIGNAL CLK : STD_LOGIC := '0';
    SIGNAL S0N : STD_LOGIC := '0';
    SIGNAL S1N : STD_LOGIC := '0';
    SIGNAL S2N : STD_LOGIC := '0';

    constant PERIOD : time := 350 ns;
    constant DUTY_CYCLE : real := 0.5714285714;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : Lab_8_crazy_counter_mealy_machine
        PORT MAP (
            A => A,
            CLK => CLK,
            S0N => S0N,
            S1N => S1N,
            S2N => S2N
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  900ns
                WAIT FOR 900 ns;
                A <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 1400 ns;
                A <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3700ns
                WAIT FOR 1400 ns;
                A <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6150ns
                WAIT FOR 2450 ns;
                A <= '0';
                -- -------------------------------------
                WAIT FOR 4200 ns;

            END PROCESS;

    END testbench_arch;

