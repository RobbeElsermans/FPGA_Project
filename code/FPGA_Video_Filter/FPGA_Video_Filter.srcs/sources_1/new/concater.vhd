----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/12/2022 03:23:19 PM
-- Design Name: 
-- Module Name: concater - Behavioral
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

entity concater is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (23 downto 0);
           rest : in STD_LOGIC_VECTOR (23 downto 0);
           selector: in STD_LOGIC_VECTOR (1 downto 0));
end concater;

architecture Behavioral of concater is

begin

process (data_in, rest, selector) begin

case selector is
    when "00" =>
        data_out(7 downto 0) <= data_in;
        data_out(15 downto 8) <= rest(15 downto 8);
        data_out(23 downto 16) <= rest(23 downto 16);
    when "01" =>
        data_out(7 downto 0) <= rest(7 downto 0);
        data_out(15 downto 8) <= data_in;
        data_out(23 downto 16) <= rest(23 downto 16);
    when "10" =>
        data_out(7 downto 0) <= rest(7 downto 0);
        data_out(15 downto 8) <= rest(15 downto 8);
        data_out(23 downto 16) <= data_in;
    when "11" =>
        data_out(7 downto 0) <= rest(7 downto 0);
        data_out(15 downto 8) <= rest(15 downto 8);
        data_out(23 downto 16) <= rest(23 downto 16);
end case;


end process;

end Behavioral;
