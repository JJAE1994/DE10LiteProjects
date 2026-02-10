library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Chrono is
port(
	clock_p, clock_mux:in std_logic;
	sevendisp:out std_logic_vector(7 downto 0);
	hab_US, hab_DS, hab_UM, hab_DM:out std_logic
);
end Chrono;

architecture behavorial of Chrono is

component ContadorCronometro is
port(
	clock:in std_logic;
	DM:out std_logic_vector(3 downto 0);
	UM:out std_logic_vector(3 downto 0);
	DS:out std_logic_vector(3 downto 0);
	US:out std_logic_vector(3 downto 0)
);
end component;

component MUX is
port(
	I0, I1, I2, I3:in std_logic_vector(3 downto 0);
	sel:in std_logic_vector(1 downto 0);
	Y:out std_logic_vector(3 downto 0)
);
end component;

component sevensegdecoder is
port(
	count:in std_logic_vector(3 downto 0);
	sevenseg:out std_logic_vector(7 downto 0)
);
end component;

component count_mux is
port(
	clock:in std_logic;
	qsel:out std_logic_vector(1 downto 0);
	habilitadores:out std_logic_vector(3 downto 0)
);
end component;
--señales para interconectar todos los bloques
signal sel:std_logic_vector(1 downto 0);
signal s_DM, s_UM, s_DS, s_US:std_logic_vector(3 downto 0);
signal cifra:std_logic_vector(3 downto 0);
signal habs:std_logic_vector(3 downto 0);
begin
--contador de mm:ss
CONTADOR:ContadorCronometro
port map(clock_p, s_DM, s_UM, s_DS, s_US);
--s_DM, s_UM, s_DS, s_US señales para interconectar ContadorCronometro con MUX
SELECTOR:MUX
port map(s_US, s_DS, s_UM, s_DM, sel, cifra);
--sel señal para conectar contador MOD4 con el selector del MUX
--cifra señal para conectar MUX con decodificador de siete segmentos
DISPDECODER:sevensegdecoder
port map(cifra, sevendisp);
--habs señal para los habilitadores de cada display
MUXENS:count_mux
port map(clock_mux, sel, habs);
--asocio cada habilitador con el orden correspondiente
hab_DM<=habs(3);
hab_UM<=habs(2);
hab_DS<=habs(1);
hab_US<=habs(0);

end behavorial;