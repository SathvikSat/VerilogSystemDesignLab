--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:36:39 06/15/2023
-- Design Name:   
-- Module Name:   /home/ash-ketchum/Downloads/submission_template/submit/rcs1/tb_reg_16bit_edge_trigger.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_16bit_edge_trigger
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
 
ENTITY tb_reg_16bit_edge_trigger IS
END tb_reg_16bit_edge_trigger;
 
ARCHITECTURE behavior OF tb_reg_16bit_edge_trigger IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_16bit_edge_trigger
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0);
         CLK : IN  std_logic;
         ENABLE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(15 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal ENABLE : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_16bit_edge_trigger PORT MAP (
          D => D,
          Q => Q,
          CLK => CLK,
          ENABLE => ENABLE
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		D <= x"ABCD";
		ENABLE <= '0';
		
      wait for 100 ns;	
		
		ENABLE <= '1';
		
      wait for CLK_period*10;

      -- insert stimulus here 
		D <= x"1234";
		ENABLE <= '0';
		
      wait for CLK_period*10;
		
		ENABLE <= '1';
		
		wait for CLK_period*10;
   end process;

END;
