--! @brief IEEE Library
library IEEE; 
	--! @brief Standard Logic
	use IEEE.std_logic_1164.all; 
	--! @brief Numbers
	use ieee.numeric_std.all;

--! @brief A module which uses b_module and c_module
entity a_module is
	port ( 	a_in : in std_logic;  	--! a input
			a_out : out std_logic 	--! a output
	);
end a_module;

--! @brief Architecture of a_module
architecture behavioral of a_module is
	signal b_in     : std_logic; 	--! b input 
	signal b_out    : std_logic; 	--! b output
	signal c_in		: std_logic; 	--! c input
	signal c_out    : std_logic; 	--! c output
begin
	b_i : entity work.b_module
		port map (b_in => b_in, b_out => b_out);
	c_i : entity lib.c_module
		port map (c_in => c_in, c_out => c_out);
end behavioral;

--! @brief IEEE Library
library IEEE;
	--! @brief Standard Logic
	use IEEE.std_logic_1164.all; 
	--! @brief Numbers
	use ieee.numeric_std.all;

--! @brief 'B' Module
entity b_module is
	port ( 	b_in : in std_logic;	--! b input
			b_out : out std_logic	--! b output
	);
end b_module;

--! @brief Architecture of b_module
architecture behavioral of b_module is
	signal b_in 	: std_logic; 	--! b input
	signal b_out 	: std_logic; 	--! b outout
begin
	b_out <= b_in;
end behavioral;

--! @brief IEEE Library
library IEEE; 
	--! @brief Standard Logic
	use IEEE.std_logic_1164.all; 
	--! @brief Numbers
	use ieee.numeric_std.all;

--! @brief 'C' Module
entity c_module is
	port ( 	c_in : in std_logic; 	--! c input
			c_out : out std_logic	--! c output
	);
end b_module;

--! @brief Architecture of c_module
architecture behavioral of c_module is
	signal c_in 	: std_logic;	--! c input
	signal c_out 	: std_logic;	--! c output
begin
	c_out <= c_in;
end behavioral;

