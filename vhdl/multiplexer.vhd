library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplexer is
	port(
		a: in std_logic;
		b: in std_logic;
		y: out std_logic;
		sel: in std_logic
	);
end multiplexer;

architecture rtl of multiplexer is

begin

	process(a, b, sel)
	begin
		if sel = '1' then y <= a; else y <= b; end if;
	end process;

end architecture rtl;