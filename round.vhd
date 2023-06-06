----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:18 05/22/2023 
-- Design Name: 
-- Module Name:    round - Behavioral 
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

entity round is
    Port ( Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
           
			  X1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  X2 : in  STD_LOGIC_VECTOR (15 downto 0);
			  X3 : in  STD_LOGIC_VECTOR (15 downto 0);
			  X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           
			  Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end round;

architecture Behavioral of round is

component addop
	Port ( X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end component addop;

component mulop 	 
    Port ( X1 : in  STD_LOGIC_VECTOR (15  downto 0);
           X2 : in  STD_LOGIC_VECTOR (15  downto 0);
           Y : out  STD_LOGIC_VECTOR (15  downto 0));
end component mulop;

component xorop 
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end component xorop;

signal M1,M2,A2,A1,A3,A4,M3,M4,M6,XO1,XO2 : STD_LOGIC_VECTOR (15 downto 0);
begin

MM1 : mulop port map(X1,Z1,M1);
AA1 : addop port map(X3,Z3,A1);
XX1 : xorop port map(A1,M1,XO1);
MM3 : mulop port map(XO1,Z5,M3);

MM2 : mulop port map(X4,Z4,M2);
AA2 : addop port map(X2,Z2,A2);
XX2 : xorop port map(A2,M2,XO2);

AA3: addop port map(XO2,M3,A3);
MM4: mulop port map(A3,Z6,M4);
AA4 :  addop port map(M3,M4,A4);

XX3:  xorop port map(M4,M1,Y1);
XX5:  xorop port map(A1,M4,Y2);
XX4:  xorop port map(A2,A4,Y3);
XX6:  xorop port map(M2,A4,Y4);

end Behavioral;

