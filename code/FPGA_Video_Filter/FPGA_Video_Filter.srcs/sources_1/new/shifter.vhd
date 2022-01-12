----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 03:12:16 PM
-- Design Name: 
-- Module Name: shifter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shifter is
    Port ( data_in : in STD_LOGIC_VECTOR (23 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           rest : out STD_LOGIC_VECTOR (23 downto 0);
           selector: in STD_LOGIC_VECTOR (1 downto 0));
end shifter;

architecture Behavioral of shifter is

begin

process (data_in, selector) begin

case selector is
    when "00" => 
        data_out <= data_in (7 downto 0);
        rest(7 downto 0) <= "00000000";
        rest(15 downto 8) <= data_in (15 downto 8);
        rest(23 downto 16) <= data_in (23 downto 16);
    when "01" => 
        data_out <= data_in (15 downto 8);
        rest(7 downto 0) <= data_in (7 downto 0);
        rest(15 downto 8) <= "00000000";
        rest(23 downto 16) <= data_in (23 downto 16);
    when "10" => 
        data_out <= data_in (23 downto 16);
        rest(7 downto 0) <= data_in (7 downto 0);
        rest(15 downto 8) <= data_in (15 downto 8);
        rest(23 downto 16) <= "00000000";
    when "11" => 
        data_out <= "11111111";
end case;

--green <= data_in(7 downto 0);
--blue <= data_in(15 downto 8);
--red <= data_in(23 downto 16);

end process;

end Behavioral;
