library ieee;
use ieee.std_logic_1164.all;

entity tb_not_gate is
end entity;

architecture sim of tb_not_gate is
    signal a : std_logic := '0';
    signal y : std_logic;
begin
    dut : entity work.not_gate
        port map (a => a, y => y);

    process
    begin
        a <= '0'; wait for 10 ns;
        a <= '1'; wait for 10 ns;
        a <= '0'; wait for 10 ns;
        wait;
    end process;
end architecture;