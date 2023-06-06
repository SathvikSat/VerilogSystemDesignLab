----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea - Structural 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity idea is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end idea;


architecture Structural of idea is

component trafo is
    Port ( Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end component trafo;

component round is
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
end component round;


signal s11,s12,s13,s14,s21,s22,s23,s24,s31,s32,s33,s34,s41,s42,s43,s44,s51,s52,s53,s54,s61,s62,s63,s64,s71,s72,s73,s74,s81,s82,s83,s84 : STD_LOGIC_VECTOR (15 downto 0);
signal Z11,Z12,Z13,Z14,Z15,Z16,Z21,Z22,Z23,Z24,Z25,Z26,Z31,Z32,Z33,Z34,Z35,Z36,Z41,Z42,Z43,Z44,Z45,Z46,Z51,Z52,Z53,Z54,Z55,Z56,Z61,Z62,Z63,Z64,Z65,Z66,Z71,Z72,Z73,Z74,Z75,Z76,Z81,Z82,Z83,Z84,Z85,Z86,Z91,Z92,Z93,Z94: STD_LOGIC_VECTOR (15 downto 0);
signal temp_key_0,temp_key_1,temp_key_2,temp_key_3,temp_key_4,temp_key_5,temp_key_6,temp_key_7,temp_key_8,temp_key_9 : STD_LOGIC_VECTOR (127 downto 0);

begin


--R1

temp_key_0 <= KEY;


Z11 <= temp_key_0 (127 downto 112);
Z12 <= temp_key_0 (111 downto 96);
Z13 <= temp_key_0 (95 downto 80);
Z14 <= temp_key_0 (79 downto 64);
Z15 <= temp_key_0 (63 downto 48);
Z16 <= temp_key_0 (47 downto 32);


R1: round port map(Z11,Z12,Z13,Z14,Z15,Z16,X_1,X_2,X_3,X_4,s11,s12,s13,s14);


--R2




Z21 <= temp_key_0 (31 downto 16);
Z22 <= temp_key_0 (15 downto 0);
------Rotate---------------------
temp_key_1 <= temp_key_0(102 downto 0) & temp_key_0(127 downto 103)	 ;
------Rotate---------------------
Z23 <= temp_key_1 (127 downto 112);
Z24 <= temp_key_1 (111 downto 96);
Z25 <= temp_key_1 (95 downto 80);
Z26 <= temp_key_1 (79 downto 64);

R2: round port map(Z21,Z22,Z23,Z24,Z25,Z26,s11,s12,s13,s14,s21,s22,s23,s24);

--R3




Z31 <= temp_key_1 (63 downto 48);
Z32 <= temp_key_1 (47 downto 32);
Z33 <= temp_key_1 (31 downto 16);
Z34 <= temp_key_1 (15 downto 0);
------Rotate---------------------
temp_key_2 <= temp_key_1(102 downto 0) & temp_key_1(127 downto 103);
------Rotate---------------------
Z35 <= temp_key_2 (127 downto 112);
Z36 <= temp_key_2 (111 downto 96);

R3: round port map(Z31,Z32,Z33,Z34,Z35,Z36,s21,s22,s23,s24,s31,s32,s33,s34);

--R4


Z41 <= temp_key_2 (95 downto 80);
Z42 <= temp_key_2 (79 downto 64);
Z43 <= temp_key_2 (63 downto 48);
Z44 <= temp_key_2 (47 downto 32);
Z45 <= temp_key_2 (31 downto 16);
Z46 <= temp_key_2 (15 downto 0);

------Rotate---------------------
temp_key_3 <= temp_key_2(102 downto 0) & temp_key_2(127 downto 103);
------Rotate---------------------

R4: round port map(Z41,Z42,Z43,Z44,Z45,Z46,s31,s32,s33,s34,s41,s42,s43,s44);

--R5



Z51 <= temp_key_3 (127 downto 112);
Z52 <= temp_key_3 (111 downto 96);
Z53 <= temp_key_3 (95 downto 80);
Z54 <= temp_key_3 (79 downto 64);
Z55 <= temp_key_3 (63 downto 48);
Z56 <= temp_key_3 (47 downto 32);

R5: round port map(Z51,Z52,Z53,Z54,Z55,Z56,s41,s42,s43,s44,s51,s52,s53,s54);

-- R6

Z61 <= temp_key_3 (31 downto 16);
Z62 <= temp_key_3 (15 downto 0);
------Rotate---------------------
temp_key_4 <= temp_key_3(102 downto 0) & temp_key_3(127 downto 103);
------Rotate---------------------
Z63 <= temp_key_4 (127 downto 112);
Z64 <= temp_key_4 (111 downto 96);
Z65 <= temp_key_4 (95 downto 80);
Z66 <= temp_key_4 (79 downto 64);

R6: round port map(Z61,Z62,Z63,Z64,Z65,Z66,s51,s52,s53,s54,s61,s62,s63,s64);

-- R7



Z71 <= temp_key_4 (63 downto 48);
Z72 <= temp_key_4 (47 downto 32);
Z73 <= temp_key_4 (31 downto 16);
Z74 <= temp_key_4 (15 downto 0);
------Rotate---------------------
temp_key_5 <= temp_key_4(102 downto 0) & temp_key_4(127 downto 103)	 ;
------Rotate---------------------
Z75 <= temp_key_5 (127 downto 112);
Z76 <= temp_key_5 (111 downto 96);

R7: round port map(Z71,Z72,Z73,Z74,Z75,Z76,s61,s62,s63,s64,s71,s72,s73,s74);

-- R8


Z81 <= temp_key_5 (95 downto 80);
Z82 <= temp_key_5 (79 downto 64);
Z83 <= temp_key_5 (63 downto 48);
Z84 <= temp_key_5 (47 downto 32);
Z85 <= temp_key_5 (31 downto 16);
Z86 <= temp_key_5 (15 downto 0);

R8: round port map(Z81,Z82,Z83,Z84,Z85,Z86,s71,s72,s73,s74,s81,s82,s83,s84);

------Rotate---------------------
temp_key_6 <= temp_key_5(102 downto 0) & temp_key_5(127 downto 103);
------Rotate---------------------

-- Output transformation

Z91 <= temp_key_6 (127 downto 112);
Z92 <= temp_key_6 (111 downto 96);
Z93 <= temp_key_6 (95 downto 80);
Z94 <= temp_key_6 (79 downto 64);



OP_TRANSFORM : trafo port map(Z91,Z92,Z93,Z94,s81,s82,s83,s84,Y_1,Y_2,Y_3,Y_4);

end Structural;

