----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:42 05/12/2023 
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity mulop is
	 
    Port ( X1 : in  STD_LOGIC_VECTOR (15  downto 0);
           X2 : in  STD_LOGIC_VECTOR (15  downto 0);
           Y : out  STD_LOGIC_VECTOR (15  downto 0));
end mulop;

architecture Behavioral of mulop is

--	variable a,b: STD_LOGIC_VECTOR (CONSTANT_SIZE+1  downto 0);
--	variable result: STD_LOGIC_VECTOR (CONSTANT_SIZE  downto 0);
signal result: STD_LOGIC_VECTOR (16  downto 0); -- Shared variable was causing an error here
signal mul1: STD_LOGIC_VECTOR (33  downto 0);


begin

	mul_process1 : process(X1,X2)
	

	variable a,b: STD_LOGIC_VECTOR (16  downto 0);
	
	begin
	
	
	--reduce(nor,X2)
		
	if X1 = "0000000000000000" then
		a := "10000000000000000";
	else
		a:='0'&X1;
	end if;
	
	if X2 = "0000000000000000" then
		 b :="10000000000000000";
	else
		b:= '0'&X2;
	
	end if;
	
	mul1 <= a*b;
	
	end process mul_process1 ;
	
	
	mul_process2 : process(mul1)
	
	variable temp2: STD_LOGIC_VECTOR (16  downto 0);
	variable temp1: STD_LOGIC_VECTOR (15  downto 0);
	
	begin
	
	temp1 := mul1(15 downto 0);
	temp2 := mul1(32 downto 16);

	if temp1 >= temp2 then
		result <= ('0'&temp1)-temp2;
	else

		result <= (('0'&temp1)- temp2) + "10000000000000001";

	end if;
	
	end process mul_process2;
	
	Y <= result(15  downto 0);

end Behavioral;

