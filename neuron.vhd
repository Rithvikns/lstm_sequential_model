library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity neuron is
    port (
        x : in STD_LOGIC_VECTOR(7 downto 0);
        c_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
        h_t_minus_in : in STD_LOGIC_VECTOR(15 downto 0);
        c_t_minus_out : out STD_LOGIC_VECTOR(15 downto 0);
        h_t_minus_out : out STD_LOGIC_VECTOR(15 downto 0);
        y : out STD_LOGIC_VECTOR(7 downto 0)
        
    );
end entity neuron;

architecture behavioral of neuron is
constant wf : std_logic_vector(15 downto 0) := "0000000001010101";
constant wi : std_logic_vector(15 downto 0) := "0000000000100110";
constant wc : std_logic_vector(15 downto 0) := "0000000000101101";
constant wo : std_logic_vector(15 downto 0) := "0000000001100100";
constant bf : std_logic_vector(15 downto 0) := "1000001011000101";
constant bi : std_logic_vector(15 downto 0):= "1000000011011111";
constant bc : std_logic_vector(15 downto 0):= "0000001001110010";
constant bo : std_logic_vector(15 downto 0):= "0000001000001011";
constant uf : std_logic_vector(15 downto 0):= "1000000010010110";
constant ui : std_logic_vector(15 downto 0):= "1000000000000010";
constant uc : std_logic_vector(15 downto 0):= "0000000011011000";
constant uo : std_logic_vector(15 downto 0):= "0000000010000110";
signal f_t : STD_LOGIC_VECTOR(15 downto 0);
signal i_t : STD_LOGIC_VECTOR(15 downto 0);
signal c_t : STD_LOGIC_VECTOR(15 downto 0);
signal o_t : STD_LOGIC_VECTOR(15 downto 0);
signal c_t_minus_1 : STD_LOGIC_VECTOR(15 downto 0);
signal h_t_minus_1 : STD_LOGIC_VECTOR(15 downto 0);
signal x_op : STD_LOGIC_VECTOR(15 downto 0);
signal wf1 : STD_LOGIC_VECTOR(15 downto 0);
signal wf2 : STD_LOGIC_VECTOR(15 downto 0);
signal wf3 : STD_LOGIC_VECTOR(15 downto 0);
signal wf4 : STD_LOGIC_VECTOR(15 downto 0);
signal wf5 : STD_LOGIC_VECTOR(15 downto 0);
signal wf6 : STD_LOGIC_VECTOR(15 downto 0);
signal wf7 : STD_LOGIC_VECTOR(15 downto 0);
signal wf8 : STD_LOGIC_VECTOR(15 downto 0);
signal wf9 : STD_LOGIC_VECTOR(15 downto 0);
signal wf10 : STD_LOGIC_VECTOR(15 downto 0);
signal wf11 : STD_LOGIC_VECTOR(15 downto 0);
signal wf12 : STD_LOGIC_VECTOR(15 downto 0);
signal wf13 : STD_LOGIC_VECTOR(15 downto 0);
signal wf14 : STD_LOGIC_VECTOR(15 downto 0);
signal wf15 : STD_LOGIC_VECTOR(15 downto 0);
signal wf16 : STD_LOGIC_VECTOR(15 downto 0);
signal wf17 : STD_LOGIC_VECTOR(15 downto 0);
signal wf18 : STD_LOGIC_VECTOR(15 downto 0);
signal wf19 : STD_LOGIC_VECTOR(15 downto 0);


    -- Component declarations
 component  sigmoid_1 is
	port (
		num:in integer ;
		y: out STD_LOGIC_VECTOR(15 downto 0)
		);
end component sigmoid_1;

component  tanh is
	port (
		num:in integer ;
		y: out STD_LOGIC_VECTOR(15 downto 0)
		);
end component tanh;

component  nn_addition is
	Port (
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end component nn_addition;

component  nn_multiplication is
	Port (
		inputx : in STD_LOGIC_VECTOR(15 downto 0);
		inputy : in STD_LOGIC_VECTOR(15 downto 0);
		output : out STD_LOGIC_VECTOR(15 downto 0));
end component nn_multiplication;


    -- ROM declaration
begin
x_op <= "00000000" & x;
ut1_nn_multiplication: nn_multiplication port map( x_op ,wf , wf1);
ut2_nn_multiplication: nn_multiplication port map( uf,h_t_minus_in , wf2);
ut1_nn_addition: nn_addition port map( wf1,wf2 , wf3);
ut2_nn_addition: nn_addition port map( wf3,bf , wf4);
ut1_sigmoid: sigmoid_1 port map( to_integer(unsigned(wf4)),f_t);
ut3_nn_multiplication: nn_multiplication port map( x_op,wi , wf5);
ut4_nn_multiplication: nn_multiplication port map(ui,h_t_minus_in , wf6);
ut3_nn_addition: nn_addition port map( wf5,wf6 , wf7);
ut4_nn_addition: nn_addition port map( wf7,bi , wf8);
ut2_sigmoid: sigmoid_1 port map( to_integer(unsigned(wf8)),i_t);
ut5_nn_multiplication: nn_multiplication port map( x_op,wc , wf9);
ut6_nn_multiplication: nn_multiplication port map( uc,h_t_minus_in , wf10);
ut5_nn_addition: nn_addition port map( wf9,wf10 , wf11);
ut6_nn_addition: nn_addition port map( wf11,bc , wf12);
ut1_tanh : tanh port map( to_integer(unsigned(wf12)),c_t);
ut7_nn_multiplication: nn_multiplication port map( x_op,wo , wf13);
ut8_nn_multiplication: nn_multiplication port map(uo,h_t_minus_in , wf14);
ut7_nn_addition: nn_addition port map( wf13,wf14 , wf15);
ut8_nn_addition: nn_addition port map( wf15,bo , wf16);
ut3_sigmoid: sigmoid_1 port map( to_integer(unsigned(wf16)),o_t);
ut9_nn_multiplication: nn_multiplication port map( c_t_minus_in ,f_t , wf17);
ut10_nn_multiplication: nn_multiplication port map( i_t , c_t , wf18);
ut9_nn_addition: nn_addition port map( wf17,wf18 , c_t_minus_1);
ut2_tanh: tanh port map(to_integer(unsigned(c_t_minus_1)),wf19);
ut11_nn_multiplication: nn_multiplication port map( wf19 ,o_t , h_t_minus_1);

y <= "00000000" when ((unsigned(h_t_minus_1)> "0000000001000001") and (unsigned(h_t_minus_1)< "0000000001001011")) else "00000001" ;
h_t_minus_out <=  h_t_minus_1;
c_t_minus_out <=  c_t_minus_1;



end architecture behavioral;
