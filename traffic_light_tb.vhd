library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity traffic_light_tb is
end traffic_light_tb;

architecture Behavioral of traffic_light_tb is

component traffic_light
port(
    clk       : in  STD_LOGIC;
    reset     : in  STD_LOGIC;
    emergency : in  STD_LOGIC;

    A_R : out STD_LOGIC;
    A_Y : out STD_LOGIC;
    A_G : out STD_LOGIC;

    B_R : out STD_LOGIC;
    B_Y : out STD_LOGIC;
    B_G : out STD_LOGIC
);
end component;

signal clk       : STD_LOGIC := '0';
signal reset     : STD_LOGIC := '1';
signal emergency : STD_LOGIC := '0';

signal A_R : STD_LOGIC;
signal A_Y : STD_LOGIC;
signal A_G : STD_LOGIC;

signal B_R : STD_LOGIC;
signal B_Y : STD_LOGIC;
signal B_G : STD_LOGIC;

constant clk_period : time := 100 ns;

begin

UUT: traffic_light
port map(
    clk       => clk,
    reset     => reset,
    emergency => emergency,

    A_R => A_R,
    A_Y => A_Y,
    A_G => A_G,

    B_R => B_R,
    B_Y => B_Y,
    B_G => B_G
);

--------------------------------------------------------------------
-- Clock Generation
--------------------------------------------------------------------
clk_process : process
begin
    while true loop
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end loop;
end process;

--------------------------------------------------------------------
-- Stimulus
--------------------------------------------------------------------
stimulus : process
begin

    -- Apply Reset
    reset <= '1';
    emergency <= '0';
    wait for 200 ns;

    -- Release Reset
    reset <= '0';

    -- Normal Operation
    wait for 500 ns;

    -- Emergency Mode ON
    emergency <= '1';
    wait for 300 ns;

    -- Emergency Mode OFF
    emergency <= '0';

    -- Normal Operation Again
    wait for 500 ns;

    wait;

end process;

end Behavioral;