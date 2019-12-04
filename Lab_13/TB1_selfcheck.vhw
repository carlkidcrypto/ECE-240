--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TB1_selfcheck.vhw
-- /___/   /\     Timestamp : Tue Apr 23 18:05:58 2019
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TB1_selfcheck
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TB1_selfcheck IS
END TB1_selfcheck;

ARCHITECTURE testbench_arch OF TB1_selfcheck IS
    COMPONENT alu
        PORT (
            rega : In std_logic_vector (3 DownTo 0);
            regb : In std_logic_vector (3 DownTo 0);
            controls : In std_logic_vector (3 DownTo 0);
            alu_out : Out std_logic_vector (3 DownTo 0);
            ccr_out : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL rega : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL regb : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL controls : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL alu_out : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL ccr_out : std_logic_vector (3 DownTo 0) := "U1UU";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

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
            PROCEDURE CHECK_alu_out(
                next_alu_out : std_logic_vector (3 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (alu_out /= next_alu_out) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns alu_out="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, alu_out);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_alu_out);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_ccr_out(
                next_ccr_out : std_logic_vector (3 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (ccr_out /= next_ccr_out) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns ccr_out="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, ccr_out);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_ccr_out);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                rega <= "1111";
                regb <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  150ns
                WAIT FOR 50 ns;
                CHECK_ccr_out("10UU", 150);
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 50 ns;
                regb <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                regb <= "0011";
                controls <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  350ns
                WAIT FOR 50 ns;
                CHECK_alu_out("1100", 350);
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 50 ns;
                regb <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                regb <= "0101";
                controls <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  550ns
                WAIT FOR 50 ns;
                CHECK_alu_out("0101", 550);
                CHECK_ccr_out("100X", 550);
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 50 ns;
                regb <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                regb <= "0111";
                controls <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  750ns
                WAIT FOR 50 ns;
                CHECK_alu_out("1111", 750);
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 50 ns;
                regb <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  850ns
                WAIT FOR 50 ns;
                CHECK_ccr_out("1000", 850);
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 50 ns;
                regb <= "1001";
                controls <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  950ns
                WAIT FOR 50 ns;
                CHECK_alu_out("0000", 950);
                CHECK_ccr_out("100X", 950);
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 50 ns;
                regb <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                regb <= "1011";
                controls <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  1150ns
                WAIT FOR 50 ns;
                CHECK_alu_out("1111", 1150);
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 50 ns;
                regb <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                regb <= "1101";
                controls <= "0000";
                -- -------------------------------------
                -- -------------  Current Time:  1350ns
                WAIT FOR 50 ns;
                CHECK_alu_out("1100", 1350);
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 50 ns;
                regb <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                regb <= "1111";
                -- -------------------------------------
                WAIT FOR 3500 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

