library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all;

entity counter_tb is
end entity;

architecture sim of counter_tb is
  signal clk   : std_logic := '0';
  signal count : unsigned(3 downto 0);
begin
  dut : entity work.counter
    port map (clk => clk, count => count);

  clk <= not clk after 10 ns;

  process
  begin
    wait for 400 ns;
    assert count = 4 report "count mismatch at 400 ns" severity error;
    report "test done";
    finish;
  end process;
end architecture;