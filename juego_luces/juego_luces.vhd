LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

--CERVANTES BARRETO DIEGO 1410315
ENTITY juego_luces IS
PORT(
CLK: IN std_logic;
SEL: IN std_logic_vector(1 downto 0);
LIGHTS: OUT std_logic_vector (7 downto 0)
);
END juego_luces;

ARCHITECTURE juegos_luces OF juego_luces IS

component frecuency_divider is
	port(
			clk50Mhz		:	in std_logic;
			clk_o			:	out std_logic
	
					);
end component;

component count_4_bits is
	port(
	clk:	in std_logic;
	cuenta: out unsigned(3 downto 0)
					);
end component;

component ROM_SEC_1 is
PORT(
clk, en: IN std_logic;
addr_bus: IN unsigned (3 downto 0);
data_bus: OUT std_logic_vector (7 downto 0)
);
end component;

component ROM_SEC_2 is
PORT(
clk, en: IN std_logic;
addr_bus: IN unsigned (3 downto 0);
data_bus: OUT std_logic_vector (7 downto 0)
);
end component;

component ROM_SEC_3 is
PORT(
clk, en: IN std_logic;
addr_bus: IN unsigned (3 downto 0);
data_bus: OUT std_logic_vector (7 downto 0)
);
end component;
signal clk_d:std_logic;
signal count:unsigned(3 downto 0);
signal out_rom_1, out_rom_2, out_rom_3:std_logic_vector(7 downto 0);
BEGIN

DIVF:frecuency_divider
port map(CLK, clk_d);
CONTADOR:count_4_bits
port map(clk_d, count);
ROMUNO:ROM_SEC_1
port map(clk_d, '1', count, out_rom_1);
ROMDOS:ROM_SEC_2
port map(clk_d, '1', count, out_rom_2);
ROMTRES:ROM_SEC_3
port map(clk_d, '1', count, out_rom_3);
--mux 4 a 1
LIGHTS <=
			"00000000" when SEL="00" else
			out_rom_1  when SEL="01" else
			out_rom_2  when SEL="10" else
			out_rom_3;

END juegos_luces;