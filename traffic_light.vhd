

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity traffic_light is
    Port(
        clk       : in STD_LOGIC;
        reset     : in STD_LOGIC;
        emergency : in STD_LOGIC;

        A_R : out STD_LOGIC;
        A_Y : out STD_LOGIC;
        A_G : out STD_LOGIC;

        B_R : out STD_LOGIC;
        B_Y : out STD_LOGIC;
        B_G : out STD_LOGIC
    );
end traffic_light;

architecture Behavioral of traffic_light is

    type state_type is (S0, S1, S2, S3, S4);

    signal current_state : state_type := S0;

begin

    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;

       elsif rising_edge(clk) then

    if emergency = '1' then
        current_state <= S4;

    else

        case current_state is

            when S0 =>
                current_state <= S1;

            when S1 =>
                current_state <= S2;

            when S2 =>
                current_state <= S3;

            when S3 =>
                current_state <= S0;

            when S4 =>
                current_state <= S0;

        end case;

    end if;

end if;
    end process;
process(current_state)
begin

    case current_state is

        when S0 =>
            A_R <= '0';
            A_Y <= '0';
            A_G <= '1';

            B_R <= '1';
            B_Y <= '0';
            B_G <= '0';

        when S1 =>
            A_R <= '0';
            A_Y <= '1';
            A_G <= '0';

            B_R <= '1';
            B_Y <= '0';
            B_G <= '0';

        when S2 =>
            A_R <= '1';
            A_Y <= '0';
            A_G <= '0';

            B_R <= '0';
            B_Y <= '0';
            B_G <= '1';

        when S3 =>
            A_R <= '1';
            A_Y <= '0';
            A_G <= '0';

            B_R <= '0';
            B_Y <= '1';
            B_G <= '0';

        when S4 =>
            A_R <= '1';
            A_Y <= '0';
            A_G <= '0';

            B_R <= '0';
            B_Y <= '0';
            B_G <= '1';

    end case;

end process;
end Behavioral;