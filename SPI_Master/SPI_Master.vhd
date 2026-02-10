library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

entity SPI_Master is
port ( 	clk, reset, MISO: in std_logic;
       	MOSI, CS, SCK, SERVO: out std_logic
			--data_rx: out std_logic_vector(7 downto 0)
			
		);
end SPI_Master;

architecture Behavioral of SPI_Master is

component SPI_FSM is
port ( 	clk, medir, reset, MISO: in std_logic;
       	MOSI, CS, SCK: out std_logic;
			dato_rx: out std_logic_vector(7 downto 0)
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

component PWM_generator is
port ( 	clk_in: in std_logic;
       	dc2_45, dc2, dc1_55: out std_logic
		);
end component;


signal clk_20MHz, muestra,p245,p200,p155 : std_logic;
signal selector: std_logic_vector(1 downto 0);
signal data: std_logic_vector(7 downto 0);


begin

FSM:SPI_FSM
port map(clk_20MHz, muestra, reset, MISO, MOSI, CS, SCK, data);

DIVF:divisor_frecuencia
port map(clk, clk_20MHz);

PWM:PWM_generator
port map(clk, p245,p200,p155);

REQUESTREAD:muestreador
port map(clk, muestra);



process(data)
begin
	if data<43 and data>34 then
		selector<="10";
	end if;

	if data<62 and data>57 then
		selector<="01";
	end if;

	if data<73 and data>69 then
		selector<="00";
	end if;	
end process;
						
--data_rx <= data;

	SERVO <= 
	p155		  when selector="00" else
	p200 when selector="01" else 
	p245 when selector="10" else
	'0';

						
end Behavioral; 
