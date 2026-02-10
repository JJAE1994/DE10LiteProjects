LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ROM_I IS
PORT(
clk, en: IN std_logic;
addr_bus: IN unsigned (3 downto 0);
data_bus: OUT std_logic_vector (7 downto 0)
);
END ROM_I;

ARCHITECTURE ROM_I OF ROM_I IS
TYPE vector_array is array(0 to 15) of std_logic_vector (7 downto 0);
CONSTANT my_memory : vector_array := (x"80",
												  x"80",
												  x"40",
												  x"40",
												  x"20",
												  x"20",
												  x"10",
												  x"10",
												  x"08",
												  x"08",
												  x"04",
												  x"04",
												  x"02",
												  x"02",
												  x"01",
												  x"01"												  
												  );
BEGIN
PROCESS(clk)
BEGIN
if rising_edge(clk) then
	if (en='1') then
		data_bus<= my_memory(to_integer(addr_bus));
	else
		data_bus<= (OTHERS => 'Z');
	end if;
end if;
END PROCESS;
END ROM_I;