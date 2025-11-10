

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
--RX = TX del HC-06 
--IN1, IN2 CONTROL MOTOR L
--IN3, IN4 CONTROL MOTOR R
--ENABLE_I HABILITADOR MOTOR L
--ENABLE_D HABILITADOR MOTOR R
entity BTCar is

	port 
	(
	clk, rx: in STD_LOGIC;
	in1, in2, in3, in4, enable_i, enable_d: out std_logic
	
	);


end BTCar;

architecture Behavioral of BTCar is
	
---50MHZ/9600 = 
	
component clock_generator is
port(
clock_in: in std_logic;
clock_out: out std_logic);
end component;
	
	
type state is (ready,b0,b1,b2,b3,b4,b5,b6,b7,b8);   ----fsm PARA RECEPCION
signal ps : state := ready;
signal store : std_logic_vector(7 downto 0);  ----REGISTRO DE ALMACENAMIENTO
signal s_baudclock: std_logic;
signal delay_salida : std_logic_vector(13 downto 0);
begin

BAUDRATE: clock_generator
port map(clock_in=>clk, clock_out=>s_baudclock);


	process(s_baudclock)
	begin
	if s_baudclock'event and s_baudclock = '1' then
		if ps = ready then     
			if rx = '0' then
				ps <= b0;				
			else
				ps <= ready;
			end if;
		end if;
		------------------------------------------1
		if ps = b0 then
			store(0) <= rx;        -----
			ps <= b1;
		end if;
	------------------------------------------2
		if ps = b1 then
			store(1) <= rx;        -----
			ps <= b2;
		end if;
	-----------------------------------------3
		if ps = b2 then
			store(2) <= rx;        -----
			ps <= b3;
		end if;
	----------------------------------------4
		if ps = b3 then
			store(3) <= rx;        -----
			ps <= b4;
		end if;
	---------------------------------------5
		if ps = b4 then
			store(4) <= rx;        -----
			ps <= b5;
		end if;
	---------------------------------------6
		if ps = b5 then
			store(5) <= rx;        -----
			ps <= b6;
		end if;
	---------------------------------------7
		if ps = b6 then
			store(6) <= rx;        -----
			ps <= b7;
		end if;	
	--------------------------------------8
		if ps = b7 then
			store(7) <= rx;        -----
			ps <= b8;
		end if;
	--------------------------------------9
		if ps = b8 then
			if delay_salida = 9600 -1 then
				delay_salida <= (others=>'0');
				store <= (others=>'0');
				ps <= ready;
			else
				delay_salida <= delay_salida + 1;
			end if;
		end if;

	-------------------------------------1
	end if;

	end process;
	

process(store)
	begin
	
		if store = "00110001" then --1 ascii
			in1 <= '0';
			in2 <= '1';
			in3 <= '0';
			in4 <= '1';
			enable_i <= '1';
			enable_d <='1';
		elsif store = "00110010" then --2 ascii
			in1 <= '1';
			in2 <= '0';
			in3 <= '0';
			in4 <= '0';
			enable_i <= '1';
			enable_d <='0';
		elsif store = "00110011" then  --3 ascii
			in1 <= '0';
			in2 <= '0';
			in3 <= '1';
			in4 <= '0';
			enable_i <= '0';
			enable_d <='1';
		elsif store = "00110100" then  --4 ascii
			in1 <= '1';
			in2 <= '0';
			in3 <= '1';
			in4 <= '0';
			enable_i <= '1';
			enable_d <='1';
		else
			in1 <= '0';
			in2 <= '0';
			in3 <= '0';
			in4 <= '0';
			enable_i <= '0';
			enable_d <='0';
		end if;
	end process;
	
	
end Behavioral;

