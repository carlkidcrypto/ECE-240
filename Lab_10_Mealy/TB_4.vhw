--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TB_4.vhw
-- /___/   /\     Timestamp : Mon Apr 08 20:48:54 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB_4
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY TB_4 IS
END TB_4;

ARCHITECTURE testbench_arch OF TB_4 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Mealy
        PORT (
            CLK : In std_logic;
            RST : In std_logic;
            X : In std_logic;
            Y : Out std_logic
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL RST : std_logic := '0';
    SIGNAL X : std_logic := '0';
    SIGNAL Y : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : Mealy
        PORT MAP (
            CLK => CLK,
            RST => RST,
            X => X,
            Y => Y
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

        PROCESS    -- Process for CLK
            BEGIN
                -- -------------  Current Time:  85ns
                WAIT FOR 85 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  285ns
                WAIT FOR 200 ns;
                RST <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 400 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1085ns
                WAIT FOR 400 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1485ns
                WAIT FOR 200 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1685ns
                WAIT FOR 200 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1885ns
                WAIT FOR 200 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2285ns
                WAIT FOR 400 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2685ns
                WAIT FOR 400 ns;
                X <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2885ns
                WAIT FOR 200 ns;
                X <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3085ns
                WAIT FOR 200 ns;
                X <= '0';
                -- -------------------------------------
                WAIT FOR 1115 ns;

            END PROCESS;

    END testbench_arch;

