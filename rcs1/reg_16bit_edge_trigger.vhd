----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:15 06/15/2023 
-- Design Name: 
-- Module Name:    reg_16bit_edge_trigger - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_16bit_edge_trigger is
    Port ( D : in  STD_LOGIC_VECTOR (15 downto 0);
           Q : out  STD_LOGIC_VECTOR (15 downto 0);
			  CLK: in  STD_LOGIC;
			  ENABLE: in STD_LOGIC );
end reg_16bit_edge_trigger;

architecture Behavioral of reg_16bit_edge_trigger is

begin
	process(CLK)
	begin
		--clk=1 and clk-event ensures rising edge
		if( CLK ='1' and CLK'EVENT ) then
			if( ENABLE = '1') then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;

