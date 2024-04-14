library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity fully_connected_layer_1_3 is
    port (
        clk : in std_logic;
        x_0 : in STD_LOGIC_VECTOR(15 downto 0);
        x_1 : in STD_LOGIC_VECTOR(15 downto 0);
        x_2 : in STD_LOGIC_VECTOR(15 downto 0);
        x_3 : in STD_LOGIC_VECTOR(15 downto 0);
        x_4 : in STD_LOGIC_VECTOR(15 downto 0);
        x_5 : in STD_LOGIC_VECTOR(15 downto 0);
        x_6 : in STD_LOGIC_VECTOR(15 downto 0);
        x_7 : in STD_LOGIC_VECTOR(15 downto 0);
        x_8 : in STD_LOGIC_VECTOR(15 downto 0);
        x_9 : in STD_LOGIC_VECTOR(15 downto 0);
        y_3 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end fully_connected_layer_1_3 ;
architecture Behavioral of fully_connected_layer_1_3 is
signal store_sum : STD_LOGIC_VECTOR(15 downto 0) ;
signal store_value : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_0 : STD_LOGIC_VECTOR(15 downto 0) := "1000000101000001";
signal store_weight_0 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_1 : STD_LOGIC_VECTOR(15 downto 0) := "1000001110010000";
signal store_weight_1 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_2 : STD_LOGIC_VECTOR(15 downto 0) := "1000001111100000";
signal store_weight_2 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_3 : STD_LOGIC_VECTOR(15 downto 0) := "1000001100110000";
signal store_weight_3 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_4 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000111010";
signal store_weight_4 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_5 : STD_LOGIC_VECTOR(15 downto 0) := "1000000000100010";
signal store_weight_5 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_6 : STD_LOGIC_VECTOR(15 downto 0) := "1000001100011011";
signal store_weight_6 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_7 : STD_LOGIC_VECTOR(15 downto 0) := "1000001111111011";
signal store_weight_7 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_8 : STD_LOGIC_VECTOR(15 downto 0) := "0000001000000001";
signal store_weight_8 : STD_LOGIC_VECTOR(15 downto 0) ;
signal weight_9 : STD_LOGIC_VECTOR(15 downto 0) := "0000000010101101";
signal store_weight_9 : STD_LOGIC_VECTOR(15 downto 0) ;
signal sum_0 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_1 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_2 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_3 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_4 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_5 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_6 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_7 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
signal sum_8 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";

signal biases : STD_LOGIC_VECTOR(15 downto 0) := "1000000110101010";
component  sigmoid is
	port (
		num:in integer ;
		y: out STD_LOGIC_VECTOR(15 downto 0)
		);
end component sigmoid;

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
begin
ut0_nn_multiplication: nn_multiplication port map(weight_0 , x_0 ,store_weight_0 );
ut1_nn_multiplication: nn_multiplication port map(weight_1 , x_1 ,store_weight_1 );
ut2_nn_multiplication: nn_multiplication port map(weight_2 , x_2 ,store_weight_2 );
ut3_nn_multiplication: nn_multiplication port map(weight_3 , x_3 ,store_weight_3 );
ut4_nn_multiplication: nn_multiplication port map(weight_4 , x_4 ,store_weight_4 );
ut5_nn_multiplication: nn_multiplication port map(weight_5 , x_5 ,store_weight_5 );
ut6_nn_multiplication: nn_multiplication port map(weight_6 , x_6 ,store_weight_6 );
ut7_nn_multiplication: nn_multiplication port map(weight_7 , x_7 ,store_weight_7 );
ut8_nn_multiplication: nn_multiplication port map(weight_8 , x_8 ,store_weight_8 );
ut9_nn_multiplication: nn_multiplication port map(weight_9 , x_9 ,store_weight_9 );
ut0_nn_addition: nn_addition port map( store_weight_0,store_weight_1,sum_0);
ut1_nn_addition: nn_addition port map( store_weight_2,store_weight_3,sum_1);
ut2_nn_addition: nn_addition port map( store_weight_4,store_weight_5,sum_2);
ut3_nn_addition: nn_addition port map( store_weight_6,store_weight_7,sum_3);
ut4_nn_addition: nn_addition port map( store_weight_8,store_weight_9,sum_4);
ut5_nn_addition: nn_addition port map( sum_0,sum_1,sum_5);
ut6_nn_addition: nn_addition port map( sum_2,sum_3,sum_6);
ut7_nn_addition: nn_addition port map( sum_4,sum_5,sum_7);
ut8_nn_addition: nn_addition port map( sum_6,sum_7,sum_8);
ut10_nn_addition: nn_addition port map(biases,sum_8 ,store_value);
ut1_sigmoid: sigmoid port map( to_integer(unsigned(store_value)),y_3);
end Behavioral;