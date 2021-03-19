--------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------------------

entity ADD is

generic(n: natural :=10);
port(	A:	in std_logic_vector(n-1 downto 0);
	B:	in std_logic_vector(n-1 downto 0);
	C0: in std_logic:='0';
	C:	out std_logic;
	F:	out std_logic_vector(n-1 downto 0)
);

end ADD;

--------------------------------------------------------

architecture behv of ADD is
signal result: std_logic_vector(n downto 0);
 
begin   
    result <= ('0' & A)+('0' & B)+C0;
    F <= result(n-1 downto 0);
    C <= result(n);
end behv;
--------------------------------------------------------