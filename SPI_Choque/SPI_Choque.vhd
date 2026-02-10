library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

entity SPI_Choque is
port ( 	clk, reset, MISO: in std_logic;
       	MOSI, CS, SCK: out std_logic;
			buzzer        : out std_logic:='0';
			dato_rx		  : out std_logic_vector(7 downto 0)
		);
end SPI_Choque;

architecture Behavioral of SPI_Choque is

component SPI_FSM is
port ( 	clk, medir, reset, MISO: in std_logic;
       	MOSI, CS, SCK: out std_logic;
			dato_rx: out std_logic_vector(7 downto 0):="00000001"
		);
end component;

component divisor_frecuencia is
port ( 	clk_in: in std_logic;
       	clk_out: out std_logic
		);
end component;

component muestreador is
port ( 	clk_in: in std_logic;
       	clk_out: out std_logic
		);
end component;

signal clk_20MHz, muestra: std_logic;
signal data: std_logic_vector(7 downto 0):="00000001";

begin

FSM:SPI_FSM
port map(clk_20MHz, muestra, reset, MISO, MOSI, CS, SCK, data);

DIVF:divisor_frecuencia
port map(clk, clk_20MHz);

REQUESTREAD:muestreador
port map(clk, muestra);

dato_rx<=data;

process(data)
begin
	if (data(7 downto 1)<10) and (data(0)='0') then
		buzzer<='1';
	else
		buzzer<='0';
	end if;
end process;

				
end Behavioral; 
