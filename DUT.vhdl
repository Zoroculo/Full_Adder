-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component FULLADDER_1 is
port(in1,in2,cin : in std_logic; out1,out2 : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   adder_instance: FULLADDER_1 port map (in1 => input_vector(2), in2 => input_vector(1),cin => input_vector(0),
											         out1 => output_vector(1),out2 => output_vector(0));

end DutWrap;

