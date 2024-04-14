-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sigmoid_1 is
	port (
		num:in integer ;
		y: out STD_LOGIC_VECTOR(15 downto 0)
		);
end sigmoid_1;

architecture Behavioral of sigmoid_1 is
signal a : std_logic_vector (7 downto 0);
begin 

            
                 
      a <=     "00000000" when  (num >= 34187 and num <= 65535) else
"00000001" when  (num >= 34009 and num <= 34186) else
"00000010" when  (num >= 33904 and num <= 34008) else
"00000011" when  (num >= 33829 and num <= 33903) else
"00000100" when  (num >= 33771 and num <= 33828) else
"00000101" when  (num >= 33723 and num <= 33770) else
"00000110" when  (num >= 33683 and num <= 33722) else
"00000111" when  (num >= 33648 and num <= 33682) else
"00001000" when  (num >= 33616 and num <= 33647) else
"00001001" when  (num >= 33588 and num <= 33615) else
"00001010" when  (num >= 33563 and num <= 33587) else
"00001011" when  (num >= 33540 and num <= 33562) else
"00001100" when  (num >= 33518 and num <= 33539) else
"00001101" when  (num >= 33498 and num <= 33517) else
"00001110" when  (num >= 33479 and num <= 33497) else
"00001111" when  (num >= 33462 and num <= 33478) else
"00010000" when  (num >= 33445 and num <= 33461) else
"00010001" when  (num >= 33429 and num <= 33444) else
"00010010" when  (num >= 33415 and num <= 33428) else
"00010011" when  (num >= 33400 and num <= 33414) else
"00010100" when  (num >= 33387 and num <= 33399) else
"00010101" when  (num >= 33374 and num <= 33386) else
"00010110" when  (num >= 33361 and num <= 33373) else
"00010111" when  (num >= 33349 and num <= 33360) else
"00011000" when  (num >= 33338 and num <= 33348) else
"00011001" when  (num >= 33327 and num <= 33337) else
"00011010" when  (num >= 33316 and num <= 33326) else
"00011011" when  (num >= 33305 and num <= 33315) else
"00011100" when  (num >= 33295 and num <= 33304) else
"00011101" when  (num >= 33285 and num <= 33294) else
"00011110" when  (num >= 33276 and num <= 33284) else
"00011111" when  (num >= 33267 and num <= 33275) else
"00100000" when  (num >= 33258 and num <= 33266) else
"00100001" when  (num >= 33249 and num <= 33257) else
"00100010" when  (num >= 33240 and num <= 33248) else
"00100011" when  (num >= 33232 and num <= 33239) else
"00100100" when  (num >= 33224 and num <= 33231) else
"00100101" when  (num >= 33216 and num <= 33223) else
"00100110" when  (num >= 33208 and num <= 33215) else
"00100111" when  (num >= 33200 and num <= 33207) else
"00101000" when  (num >= 33193 and num <= 33199) else
"00101001" when  (num >= 33185 and num <= 33192) else
"00101010" when  (num >= 33178 and num <= 33184) else
"00101011" when  (num >= 33171 and num <= 33177) else
"00101100" when  (num >= 33164 and num <= 33170) else
"00101101" when  (num >= 33157 and num <= 33163) else
"00101110" when  (num >= 33150 and num <= 33156) else
"00101111" when  (num >= 33144 and num <= 33149) else
"00110000" when  (num >= 33137 and num <= 33143) else
"00110001" when  (num >= 33131 and num <= 33136) else
"00110010" when  (num >= 33125 and num <= 33130) else
"00110011" when  (num >= 33118 and num <= 33124) else
"00110100" when  (num >= 33112 and num <= 33117) else
"00110101" when  (num >= 33106 and num <= 33111) else
"00110110" when  (num >= 33100 and num <= 33105) else
"00110111" when  (num >= 33094 and num <= 33099) else
"00111000" when  (num >= 33089 and num <= 33093) else
"00111001" when  (num >= 33083 and num <= 33088) else
"00111010" when  (num >= 33077 and num <= 33082) else
"00111011" when  (num >= 33072 and num <= 33076) else
"00111100" when  (num >= 33066 and num <= 33071) else
"00111101" when  (num >= 33061 and num <= 33065) else
"00111110" when  (num >= 33055 and num <= 33060) else
"00111111" when  (num >= 33050 and num <= 33054) else
"01000000" when  (num >= 33044 and num <= 33049) else
"01000001" when  (num >= 33039 and num <= 33043) else
"01000010" when  (num >= 33034 and num <= 33038) else
"01000011" when  (num >= 33029 and num <= 33033) else
"01000100" when  (num >= 33024 and num <= 33028) else
"01000101" when  (num >= 33019 and num <= 33023) else
"01000110" when  (num >= 33014 and num <= 33018) else
"01000111" when  (num >= 33009 and num <= 33013) else
"01001000" when  (num >= 33004 and num <= 33008) else
"01001001" when  (num >= 32999 and num <= 33003) else
"01001010" when  (num >= 32994 and num <= 32998) else
"01001011" when  (num >= 32989 and num <= 32993) else
"01001100" when  (num >= 32984 and num <= 32988) else
"01001101" when  (num >= 32980 and num <= 32983) else
"01001110" when  (num >= 32975 and num <= 32979) else
"01001111" when  (num >= 32970 and num <= 32974) else
"01010000" when  (num >= 32966 and num <= 32969) else
"01010001" when  (num >= 32961 and num <= 32965) else
"01010010" when  (num >= 32957 and num <= 32960) else
"01010011" when  (num >= 32952 and num <= 32956) else
"01010100" when  (num >= 32947 and num <= 32951) else
"01010101" when  (num >= 32943 and num <= 32946) else
"01010110" when  (num >= 32938 and num <= 32942) else
"01010111" when  (num >= 32934 and num <= 32937) else
"01011000" when  (num >= 32930 and num <= 32933) else
"01011001" when  (num >= 32925 and num <= 32929) else
"01011010" when  (num >= 32921 and num <= 32924) else
"01011011" when  (num >= 32916 and num <= 32920) else
"01011100" when  (num >= 32912 and num <= 32915) else
"01011101" when  (num >= 32908 and num <= 32911) else
"01011110" when  (num >= 32904 and num <= 32907) else
"01011111" when  (num >= 32899 and num <= 32903) else
"01100000" when  (num >= 32895 and num <= 32898) else
"01100001" when  (num >= 32891 and num <= 32894) else
"01100010" when  (num >= 32887 and num <= 32890) else
"01100011" when  (num >= 32882 and num <= 32886) else
"01100100" when  (num >= 32878 and num <= 32881) else
"01100101" when  (num >= 32874 and num <= 32877) else
"01100110" when  (num >= 32870 and num <= 32873) else
"01100111" when  (num >= 32866 and num <= 32869) else
"01101000" when  (num >= 32862 and num <= 32865) else
"01101001" when  (num >= 32857 and num <= 32861) else
"01101010" when  (num >= 32853 and num <= 32856) else
"01101011" when  (num >= 32849 and num <= 32852) else
"01101100" when  (num >= 32845 and num <= 32848) else
"01101101" when  (num >= 32841 and num <= 32844) else
"01101110" when  (num >= 32837 and num <= 32840) else
"01101111" when  (num >= 32833 and num <= 32836) else
"01110000" when  (num >= 32829 and num <= 32832) else
"01110001" when  (num >= 32825 and num <= 32828) else
"01110010" when  (num >= 32821 and num <= 32824) else
"01110011" when  (num >= 32817 and num <= 32820) else
"01110100" when  (num >= 32813 and num <= 32816) else
"01110101" when  (num >= 32809 and num <= 32812) else
"01110110" when  (num >= 32805 and num <= 32808) else
"01110111" when  (num >= 32801 and num <= 32804) else
"01111000" when  (num >= 32797 and num <= 32800) else
"01111001" when  (num >= 32793 and num <= 32796) else
"01111010" when  (num >= 32789 and num <= 32792) else
"01111011" when  (num >= 32785 and num <= 32788) else
"01111100" when  (num >= 32781 and num <= 32784) else
"01111101" when  (num >= 32777 and num <= 32780) else
"01111110" when  (num >= 32773 and num <= 32776) else
"01111111" when  (num >= 32769 and num <= 32772) else
"10000000" when  ((num >= 0 and num <= 4)or num = 32768) else
"10000001" when  (num >= 5 and num <= 8) else
"10000010" when  (num >= 9 and num <= 12) else
"10000011" when  (num >= 13 and num <= 16) else
"10000100" when  (num >= 17 and num <= 20) else
"10000101" when  (num >= 21 and num <= 24) else
"10000110" when  (num >= 25 and num <= 28) else
"10000111" when  (num >= 29 and num <= 32) else
"10001000" when  (num >= 33 and num <= 36) else
"10001001" when  (num >= 37 and num <= 40) else
"10001010" when  (num >= 41 and num <= 44) else
"10001011" when  (num >= 45 and num <= 48) else
"10001100" when  (num >= 49 and num <= 52) else
"10001101" when  (num >= 53 and num <= 56) else
"10001110" when  (num >= 57 and num <= 60) else
"10001111" when  (num >= 61 and num <= 64) else
"10010000" when  (num >= 65 and num <= 68) else
"10010001" when  (num >= 69 and num <= 72) else
"10010010" when  (num >= 73 and num <= 76) else
"10010011" when  (num >= 77 and num <= 80) else
"10010100" when  (num >= 81 and num <= 84) else
"10010101" when  (num >= 85 and num <= 88) else
"10010110" when  (num >= 89 and num <= 93) else
"10010111" when  (num >= 94 and num <= 97) else
"10011000" when  (num >= 98 and num <= 101) else
"10011001" when  (num >= 102 and num <= 105) else
"10011010" when  (num >= 106 and num <= 109) else
"10011011" when  (num >= 110 and num <= 113) else
"10011100" when  (num >= 114 and num <= 118) else
"10011101" when  (num >= 119 and num <= 122) else
"10011110" when  (num >= 123 and num <= 126) else
"10011111" when  (num >= 127 and num <= 130) else
"10100000" when  (num >= 131 and num <= 135) else
"10100001" when  (num >= 136 and num <= 139) else
"10100010" when  (num >= 140 and num <= 143) else
"10100011" when  (num >= 144 and num <= 147) else
"10100100" when  (num >= 148 and num <= 152) else
"10100101" when  (num >= 153 and num <= 156) else
"10100110" when  (num >= 157 and num <= 161) else
"10100111" when  (num >= 162 and num <= 165) else
"10101000" when  (num >= 166 and num <= 169) else
"10101001" when  (num >= 170 and num <= 174) else
"10101010" when  (num >= 175 and num <= 178) else
"10101011" when  (num >= 179 and num <= 183) else
"10101100" when  (num >= 184 and num <= 188) else
"10101101" when  (num >= 189 and num <= 192) else
"10101110" when  (num >= 193 and num <= 197) else
"10101111" when  (num >= 198 and num <= 201) else
"10110000" when  (num >= 202 and num <= 206) else
"10110001" when  (num >= 207 and num <= 211) else
"10110010" when  (num >= 212 and num <= 215) else
"10110011" when  (num >= 216 and num <= 220) else
"10110100" when  (num >= 221 and num <= 225) else
"10110101" when  (num >= 226 and num <= 230) else
"10110110" when  (num >= 231 and num <= 235) else
"10110111" when  (num >= 236 and num <= 240) else
"10111000" when  (num >= 241 and num <= 245) else
"10111001" when  (num >= 246 and num <= 250) else
"10111010" when  (num >= 251 and num <= 255) else
"10111011" when  (num >= 256 and num <= 260) else
"10111100" when  (num >= 261 and num <= 265) else
"10111101" when  (num >= 266 and num <= 270) else
"10111110" when  (num >= 271 and num <= 275) else
"10111111" when  (num >= 276 and num <= 281) else
"11000000" when  (num >= 282 and num <= 286) else
"11000001" when  (num >= 287 and num <= 292) else
"11000010" when  (num >= 293 and num <= 297) else
"11000011" when  (num >= 298 and num <= 303) else
"11000100" when  (num >= 304 and num <= 308) else
"11000101" when  (num >= 309 and num <= 314) else
"11000110" when  (num >= 315 and num <= 320) else
"11000111" when  (num >= 321 and num <= 325) else
"11001000" when  (num >= 326 and num <= 331) else
"11001001" when  (num >= 332 and num <= 337) else
"11001010" when  (num >= 338 and num <= 343) else
"11001011" when  (num >= 344 and num <= 349) else
"11001100" when  (num >= 350 and num <= 356) else
"11001101" when  (num >= 357 and num <= 362) else
"11001110" when  (num >= 363 and num <= 368) else
"11001111" when  (num >= 369 and num <= 375) else
"11010000" when  (num >= 376 and num <= 381) else
"11010001" when  (num >= 382 and num <= 388) else
"11010010" when  (num >= 389 and num <= 395) else
"11010011" when  (num >= 396 and num <= 402) else
"11010100" when  (num >= 403 and num <= 409) else
"11010101" when  (num >= 410 and num <= 416) else
"11010110" when  (num >= 417 and num <= 424) else
"11010111" when  (num >= 425 and num <= 431) else
"11011000" when  (num >= 432 and num <= 439) else
"11011001" when  (num >= 440 and num <= 447) else
"11011010" when  (num >= 448 and num <= 455) else
"11011011" when  (num >= 456 and num <= 463) else
"11011100" when  (num >= 464 and num <= 471) else
"11011101" when  (num >= 472 and num <= 480) else
"11011110" when  (num >= 481 and num <= 489) else
"11011111" when  (num >= 490 and num <= 498) else
"11100000" when  (num >= 499 and num <= 507) else
"11100001" when  (num >= 508 and num <= 516) else
"11100010" when  (num >= 517 and num <= 526) else
"11100011" when  (num >= 527 and num <= 536) else
"11100100" when  (num >= 537 and num <= 547) else
"11100101" when  (num >= 548 and num <= 558) else
"11100110" when  (num >= 559 and num <= 569) else
"11100111" when  (num >= 570 and num <= 580) else
"11101000" when  (num >= 581 and num <= 592) else
"11101001" when  (num >= 593 and num <= 605) else
"11101010" when  (num >= 606 and num <= 618) else
"11101011" when  (num >= 619 and num <= 631) else
"11101100" when  (num >= 632 and num <= 646) else
"11101101" when  (num >= 647 and num <= 660) else
"11101110" when  (num >= 661 and num <= 676) else
"11101111" when  (num >= 677 and num <= 693) else
"11110000" when  (num >= 694 and num <= 710) else
"11110001" when  (num >= 711 and num <= 729) else
"11110010" when  (num >= 730 and num <= 749) else
"11110011" when  (num >= 750 and num <= 771) else
"11110100" when  (num >= 772 and num <= 794) else
"11110101" when  (num >= 795 and num <= 819) else
"11110110" when  (num >= 820 and num <= 847) else
"11110111" when  (num >= 848 and num <= 879) else
"11111000" when  (num >= 880 and num <= 914) else
"11111001" when  (num >= 915 and num <= 954) else
"11111010" when  (num >= 955 and num <= 1002) else
"11111011" when  (num >= 1003 and num <= 1060) else
"11111100" when  (num >= 1061 and num <= 1135) else
"11111101" when  (num >= 1136 and num <= 1240) else
"11111110" when  (num >= 1241 and num <= 1418) else
"11111111" when  (num >= 1419 and num <= 32767) else
        "00000000";
y <= "00000000"  & a ;

end Behavioral;