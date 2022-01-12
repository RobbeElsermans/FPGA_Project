----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.12.2021 19:15:43
-- Design Name: 
-- Module Name: FilterSpecial - Behavioral
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

entity FilterSpecial is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           selector : in STD_LOGIC_VECTOR (1 downto 0));
end FilterSpecial;

architecture Behavioral of FilterSpecial is

signal temp_data: STD_LOGIC_VECTOR (7 downto 0) :="00000000";
constant mask_1: STD_LOGIC_VECTOR (7 downto 0) :="00000000";
constant mask_2: STD_LOGIC_VECTOR (7 downto 0) :="10101010";
constant mask_3: STD_LOGIC_VECTOR (7 downto 0) :="11110000";
constant mask_4: STD_LOGIC_VECTOR (7 downto 0) :="11111111";

begin

process (selector, data_in) begin
temp_data <= data_in;


case selector is
    when "00" => data_out <= (temp_data XOR mask_1);
    when "01" => data_out <= (temp_data XOR mask_2);
    when "10" => data_out <= (temp_data AND mask_3);
    when "11" => data_out <= (temp_data OR mask_4);
    when others => data_out <= temp_data;
end case;
end process;

end Behavioral;
