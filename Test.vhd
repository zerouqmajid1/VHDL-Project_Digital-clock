----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:01:32 09/07/2020 
-- Design Name: 
-- Module Name:    Test - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



-- fpga4student.com FPGA projects, VHDL projects, Verilog projects
-- VHDL project: VHDL code for digital clock
ENTITY tb_digital_clock IS
END tb_digital_clock;
ARCHITECTURE behavior OF tb_digital_clock IS 
  -- Component Declaration for the Unit Under Test (UUT)
-- fpga4student.com FPGA projects, VHDL projects, Verilog projects
    COMPONENT digital_clock
    PORT(
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         H_in1 : IN  std_logic_vector(1 downto 0);
         H_in0 : IN  std_logic_vector(3 downto 0);
         M_in1 : IN  std_logic_vector(3 downto 0);
         M_in0 : IN  std_logic_vector(3 downto 0);
         H_out1 : OUT  std_logic_vector(6 downto 0);
         H_out0 : OUT  std_logic_vector(6 downto 0);
         M_out1 : OUT  std_logic_vector(6 downto 0);
         M_out0 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal H_in1 : std_logic_vector(1 downto 0) := (others => '0');
   signal H_in0 : std_logic_vector(3 downto 0) := (others => '0');
   signal M_in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal M_in0 : std_logic_vector(3 downto 0) := (others => '0');

  --Outputs
   signal H_out1 : std_logic_vector(6 downto 0);
   signal H_out0 : std_logic_vector(6 downto 0);
   signal M_out1 : std_logic_vector(6 downto 0);
   signal M_out0 : std_logic_vector(6 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ps;
BEGIN
-- fpga4student.com FPGA projects, VHDL projects, Verilog projects
 -- Instantiate the Unit Under Test (UUT)
   uut: digital_clock PORT MAP (
          clk => clk,
          rst_n => rst_n,
          H_in1 => H_in1,
          H_in0 => H_in0,
          M_in1 => M_in1,
          M_in0 => M_in0,
          H_out1 => H_out1,
          H_out0 => H_out0,
          M_out1 => M_out1,
          M_out0 => M_out0
        );
   -- Clock process definitions
   clk_process :process
   begin
 clk <= '0';
 wait for clk_period/2;
 clk <= '1';
 wait for clk_period/2;
   end process;
   -- Stimulus process
   stim_proc: process
   begin 
      -- hold reset state for 100 ns.
 rst_n <= '0';
 H_in1 <= "01";
 H_in0 <= x"0";
 M_in1 <= x"2";
 M_in0 <= x"0";
      wait for 100 ns; 
 rst_n <= '1';
      wait for clk_period*10;
-- insert stimulus here 
-- fpga4student.com FPGA projects, VHDL projects, Verilog projects
      wait;
   end process;

END;

