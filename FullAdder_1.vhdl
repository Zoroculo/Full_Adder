library ieee;
use ieee.std_logic_1164.all;

--Use the Gates package already uploaded in my previous repository named AND_using_NAND.
library work;
use work.Gates.all;

entity FULLADDER_1 is
	port(in1,in2,cin:in std_logic;
		  out1,out2:out std_logic);
end entity;

architecture struct of FULLADDER_1 is
   signal sig1,sig2,sig3:std_logic;
	
begin
	inst1: XOR_2 port map(A=>in1,B=>in2,Y=>sig1);
	inst2: AND_2 port map(A=>in1,B=>in2,Y=>sig2);
	inst3: XOR_2 port map(A=>sig1,B=>cin,Y=>out1);
	inst4: AND_2 port map(A=>cin,B=>sig1,Y=>sig3);
	inst5: OR_2 port map(A=>sig3,B=>sig2,Y=>out2);
	
end architecture;
