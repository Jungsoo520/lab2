library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture tb of sevensegDecoder_tb is

  signal i_S : std_logic_vector(3 downto 0);
  signal o_S : std_logic_vector(6 downto 0);

begin

  DUT: entity work.sevenSegDecoder
    port map(
      i_S => i_S,
      o_S => o_S
    );

  process
  begin
    i_S <= "0000"; wait for 10 ns;
    i_S <= "0001"; wait for 10 ns;
    i_S <= "0010"; wait for 10 ns;
    i_S <= "0011"; wait for 10 ns;
    i_S <= "0100"; wait for 10 ns;
    i_S <= "0101"; wait for 10 ns;
    i_S <= "0110"; wait for 10 ns;
    i_S <= "0111"; wait for 10 ns;
    i_S <= "1000"; wait for 10 ns;
    i_S <= "1001"; wait for 10 ns;
    i_S <= "1010"; wait for 10 ns;
    i_S <= "1011"; wait for 10 ns;
    i_S <= "1100"; wait for 10 ns;
    i_S <= "1101"; wait for 10 ns;
    i_S <= "1110"; wait for 10 ns;
    i_S <= "1111"; wait for 10 ns;

    wait;
  end process;

end tb;