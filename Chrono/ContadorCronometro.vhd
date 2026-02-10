library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity ContadorCronometro is
port(
	clock:in std_logic;
	DM:out std_logic_vector(3 downto 0);
	UM:out std_logic_vector(3 downto 0);
	DS:out std_logic_vector(3 downto 0);
	US:out std_logic_vector(3 downto 0)
);
end ContadorCronometro;

architecture test of ContadorCronometro is
signal s_DM: std_logic_vector(3 downto 0);
signal s_UM: std_logic_vector(3 downto 0);
signal s_DS: std_logic_vector(3 downto 0);
signal s_US: std_logic_vector(3 downto 0);
begin

process(clock)
begin
	if clock'event and clock='1' then
--Se genera la cuenta de cada digito, unidades MOD10, decenas MOD6
--una salida nunca va en el lado derecho de uan asignacion, por eso se cren las señales
		if s_US="1001" then--si las unidades de los segundos es 9
			s_US<="0000";	 --pasa a 0
			
			if s_DS="0101" then--si las decenas de los segundos es 5
				s_DS<="0000";--pasa a 0
				
				if s_UM="1001" then--si las unidades de los minutos es 9
					s_UM<="0000";	 --pasa a 0
					
					if s_DM="0101" then--si las decenas de los minutos es 5
						s_DM<="0000";	--pasa a 0
					else
						s_DM<=s_DM+1;
					end if;
					
				else
					s_UM<=s_UM+1;
				end if;
				
			else
				s_DS<=s_DS+1;
			end if;
			
		else
			s_US<=s_US+1;
		end if;
	end if;
	
end process;

DM <= s_DM;
UM <= s_UM;
DS <= s_DS;
US <= s_US;

end test;