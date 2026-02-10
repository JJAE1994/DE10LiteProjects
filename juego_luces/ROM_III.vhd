LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ROM_III IS
PORT(
clk, en: IN std_logic;
addr_bus: IN unsigned (3 downto 0);
data_bus: OUT std_logic_vector (7 downto 0)
);
END ROM_III;

ARCHITECTURE ROM_III OF ROM_III IS
TYPE vector_array is array(0 to 15) of std_logic_vector (7 downto 0);
CONSTANT my_memory : vector_array := (x"80",
												  x"00",
												  x"40",
												  x"00",
												  x"20",
												  x"00",
												  x"10",
												  x"00",
												  x"08",
												  x"00",
												  x"04",
												  x"00",
												  x"02",
												  x"00",
												  x"01",
												  x"00"												  
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
END ROM_III;