--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:44 05/23/2023
-- Design Name:   
-- Module Name:   /nas/lrz/home/ge85zic/VHDL_LAB/xorop/tb_round.vhd
-- Project Name:  xorop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: round
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_round IS
END tb_round;
 
ARCHITECTURE behavior OF tb_round IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT round
    PORT(
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Z5 : IN  std_logic_vector(15 downto 0);
         Z6 : IN  std_logic_vector(15 downto 0);
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z3 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z5 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z6 : std_logic_vector(15 downto 0) := (others => '0');
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace y below with 
   -- appropriate port name 
 
   constant y_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: round PORT MAP (
          Z1 => Z1,
          Z2 => Z2,
          Z3 => Z3,
          Z4 => Z4,
          Z5 => Z5,
          Z6 => Z6,
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );

   -- Clock process definitions
   y_process :process
   begin
		X1 <= X"0000";
		X2 <= X"0000";
		X3 <= X"0000";
		X4 <= X"0000";
		
		Z1 <= X"0000";
		Z2 <= X"0000";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		
		X1 <= X"FFFF";
		X2 <= X"0000";
		X3 <= X"0000";
		X4 <= X"0000";
		
		Z1 <= X"0000";
		Z2 <= X"0000";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"0000";
		X4 <= X"0000";
		
		Z1 <= X"0000";
		Z2 <= X"0000";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"0000";
		
		Z1 <= X"0000";
		Z2 <= X"0000";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"0000";
		Z2 <= X"0000";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"DB6D";
		Z2 <= X"0000";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"DB6D";
		Z2 <= X"1C71";
		Z3 <= X"0000";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"DB6D";
		Z2 <= X"1C71";
		Z3 <= X"CCCC";
		Z4 <= X"0000";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"DB6D";
		Z2 <= X"1C71";
		Z3 <= X"CCCC";
		Z4 <= X"0002";
		Z5 <= X"0000";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"DB6D";
		Z2 <= X"1C71";
		Z3 <= X"CCCC";
		Z4 <= X"0002";
		Z5 <= X"EEEE";
		Z6 <= X"0000";
		wait for y_period/2;
		X1 <= X"FFFF";
		X2 <= X"AAAA";
		X3 <= X"5555";
		X4 <= X"2492";
		
		Z1 <= X"DB6D";
		Z2 <= X"1C71";
		Z3 <= X"CCCC";
		Z4 <= X"0002";
		Z5 <= X"EEEE";
		Z6 <= X"8888";
		wait for y_period/2;
		
		
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for y_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
