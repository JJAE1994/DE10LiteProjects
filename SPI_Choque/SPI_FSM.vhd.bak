library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SPI_FSM is
port ( 	clk, medir, reset, MISO: in std_logic;
       	MOSI, CS, SCK: out std_logic;
			dato_rx: out std_logic_vector(7 downto 0)
		);
end SPI_FSM;

architecture Behavioral of SPI_FSM is

type state is (idle, ready, b7,b6,b5,b4,b3,b2,b1,b0, fintx);

signal instr_leer: std_logic_vector(7 downto 0):= X"0F";
signal dato: std_logic_vector(7 downto 0);
signal s_cs: std_logic:='1';
signal pr_state, nx_state : state := idle;
signal s_clk:std_logic;
begin

process(s_clk, reset)
begin

	if reset='1' then
		pr_state <= idle;
	elsif s_clk'event and s_clk='0' then
		pr_state <= nx_state;
	end if;
end process;

-- Seccion superior
process(pr_state, medir, instr_leer, MISO, dato)
begin
	case pr_state is
		when idle=>
			MOSI<='Z';
			s_cs<='1';
			if medir='1' then
				s_cs<='0';
				MOSI<=instr_leer(7);
				dato(7) <= MISO;
				nx_state<=b6;
			else 
				nx_state<=idle;
			end if;

		when ready=>
			MOSI<='1';
			nx_state<=b7;
			
		when b7=>
			MOSI<=instr_leer(7);
			dato(7) <= MISO;
			nx_state<=b6;
			
		when b6=>
			MOSI<=instr_leer(6);
			dato(6) <= MISO;
			nx_state<=b5;
			
		when b5=>
			MOSI<=instr_leer(5);
			dato(5) <= MISO;
			nx_state<=b4;			
			
		when b4=>
			MOSI<=instr_leer(4);
			dato(4) <= MISO;
			nx_state<=b3;				
			
		when b3=>
			MOSI<=instr_leer(3);
			dato(3) <= MISO;
			nx_state<=b2;			
			
		when b2=>
			MOSI<=instr_leer(2);
			dato(2) <= MISO;
			nx_state<=b1;				
			
		when b1=>
			MOSI<=instr_leer(1);
			dato(1) <= MISO;
			nx_state<=b0;	
			
		when b0=>
			MOSI<=instr_leer(0);
			dato(0) <= MISO;
			nx_state<=fintx;	

		when fintx=>
			dato_rx <= dato;
			nx_state<=idle;			
			
	end case;
end process;


CS<=s_cs;
s_clk <= clk; 
SCK <= s_clk when s_cs='0' else
		 '1';
		 
end Behavioral; 