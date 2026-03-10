library ieee;
use ieee.std_logic_1164.all;

entity sevenseg_decoder is
  port(
    i_S : in  std_logic_vector(3 downto 0);
    o_S : out std_logic_vector(6 downto 0)
  );
end sevenseg_decoder;

architecture behavioral of sevenseg_decoder is
begin
  -- o_S = g f e d c b a, active low
  with i_S select
    o_S <=
      "1000000" when "0000", -- 0
      "1111001" when "0001", -- 1
      "0100100" when "0010", -- 2
      "0110000" when "0011", -- 3
      "0011001" when "0100", -- 4
      "0010010" when "0101", -- 5
      "0000010" when "0110", -- 6
      "1111000" when "0111", -- 7
      "0000000" when "1000", -- 8
      "0010000" when "1001", -- 9
      "0001000" when "1010", -- A
      "0000011" when "1011", -- b
      "0100111" when "1100", -- c
      "0100001" when "1101", -- d
      "0000110" when "1110", -- E
      "0001110" when "1111", -- F
      "1111111" when others; -- all off
end behavioral;
