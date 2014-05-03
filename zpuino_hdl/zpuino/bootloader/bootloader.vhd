library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity bootloader_dp_32 is
  port (
    CLK:              in std_logic;
    WEA:  in std_logic;
    ENA:  in std_logic;
    MASKA:    in std_logic_vector(3 downto 0);
    ADDRA:         in std_logic_vector(11 downto 2);
    DIA:        in std_logic_vector(31 downto 0);
    DOA:         out std_logic_vector(31 downto 0);
    WEB:  in std_logic;
    ENB:  in std_logic;
    ADDRB:         in std_logic_vector(11 downto 2);
    DIB:        in std_logic_vector(31 downto 0);
    MASKB:    in std_logic_vector(3 downto 0);
    DOB:         out std_logic_vector(31 downto 0)
  );
end entity bootloader_dp_32;

architecture behave of bootloader_dp_32 is

  subtype RAM_WORD is STD_LOGIC_VECTOR (31 downto 0);
  type RAM_TABLE is array (0 to 1023) of RAM_WORD;
 shared variable RAM: RAM_TABLE := RAM_TABLE'(
x"0b0b0b98",x"b6040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"0b0b0b98",x"97040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"71fd0608",x"72830609",x"81058205",x"832b2a83",x"ffff0652",x"04000000",x"00000000",x"00000000",x"71fd0608",x"83ffff73",x"83060981",x"05820583",x"2b2b0906",x"7383ffff",x"0b0b0b0b",x"83a70400",x"72098105",x"72057373",x"09060906",x"73097306",x"070a8106",x"53510400",x"00000000",x"00000000",x"72722473",x"732e0753",x"51040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"71737109",x"71068106",x"30720a10",x"0a720a10",x"0a31050a",x"81065151",x"53510400",x"00000000",x"72722673",x"732e0753",x"51040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"0b0b0b88",x"c3040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"720a722b",x"0a535104",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"72729f06",x"0981050b",x"0b0b88a6",x"05040000",x"00000000",x"00000000",x"00000000",x"00000000",x"72722aff",x"739f062a",x"0974090a",x"8106ff05",x"06075351",x"04000000",x"00000000",x"00000000",x"71715351",x"020d0406",x"73830609",x"81058205",x"832b0b2b",x"0772fc06",x"0c515104",x"00000000",x"72098105",x"72050970",x"81050906",x"0a810653",x"51040000",x"00000000",x"00000000",x"00000000",x"72098105",x"72050970",x"81050906",x"0a098106",x"53510400",x"00000000",x"00000000",x"00000000",x"71098105",x"52040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"72720981",x"05055351",x"04000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"72097206",x"73730906",x"07535104",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"71fc0608",x"72830609",x"81058305",x"1010102a",x"81ff0652",x"04000000",x"00000000",x"00000000",x"71fc0608",x"0b0b0b9e",x"94738306",x"10100508",x"060b0b0b",x"88a90400",x"00000000",x"00000000",x"0b0b0b88",x"f7040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"0b0b0b88",x"df040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"72097081",x"0509060a",x"8106ff05",x"70547106",x"73097274",x"05ff0506",x"07515151",x"04000000",x"72097081",x"0509060a",x"098106ff",x"05705471",x"06730972",x"7405ff05",x"06075151",x"51040000",x"05ff0504",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"810b0b0b",x"0b9edc0c",x"51040000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"71810552",x"04000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"02840572",x"10100552",x"04000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"717105ff",x"05715351",x"020d0400",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"81d43f95",x"e33f0410",x"10101010",x"10101010",x"10101010",x"10101010",x"10101010",x"10101010",x"10101010",x"10105351",x"047381ff",x"06738306",x"09810583",x"05101010",x"2b0772fc",x"060c5151",x"043c0472",x"72807281",x"06ff0509",x"72060571",x"1052720a",x"100a5372",x"ed385151",x"53510488",x"088c0890",x"08757599",x"962d5050",x"88085690",x"0c8c0c88",x"0c510488",x"088c0890",x"08757598",x"d22d5050",x"88085690",x"0c8c0c88",x"0c510488",x"088c0890",x"088df52d",x"900c8c0c",x"880c04ff",x"3d0d0b0b",x"0b9eec33",x"5170a638",x"9ee80870",x"08525270",x"802e9238",x"84129ee8",x"0c702d9e",x"e8087008",x"525270f0",x"38810b0b",x"0b0b9eec",x"34833d0d",x"0404803d",x"0d0b0b0b",x"9f980880",x"2e8e380b",x"0b0b0b80",x"0b802e09",x"81068538",x"823d0d04",x"0b0b0b9f",x"98510b0b",x"0bf6813f",x"823d0d04",x"04ff3d0d",x"80c48080",x"84527108",x"70822a70",x"81065151",x"5170f338",x"833d0d04",x"ff3d0d80",x"c4808084",x"52710870",x"812a7081",x"06515151",x"70f33873",x"82900a0c",x"833d0d04",x"fe3d0d74",x"7080dc80",x"80880c70",x"81ff06ff",x"83115451",x"53718126",x"8d3880fd",x"518aa02d",x"72a03251",x"83397251",x"8aa02d84",x"3d0d0480",x"3d0d83ff",x"ff0b83d0",x"0a0c80fe",x"518aa02d",x"823d0d04",x"ff3d0d83",x"d00a0870",x"882a5252",x"8ac02d71",x"81ff0651",x"8ac02d80",x"fe518aa0",x"2d833d0d",x"0482f6ff",x"0b80cc80",x"80880c80",x"0b80cc80",x"80840c9f",x"0b83900a",x"0c04ff3d",x"0d737008",x"515180c8",x"80808470",x"08708480",x"8007720c",x"5252833d",x"0d04ff3d",x"0d80c880",x"80847008",x"70fbffff",x"06720c52",x"52833d0d",x"04a0900b",x"a0800c9e",x"f00ba084",x"0c98cb2d",x"ff3d0d73",x"518b710c",x"90115291",x"c080720c",x"80720c70",x"0883ffff",x"06880c83",x"3d0d04fa",x"3d0d787a",x"7dff1e57",x"57585373",x"ff2ea738",x"80568452",x"75730c72",x"0888180c",x"ff125271",x"f3387484",x"16740872",x"0cff1656",x"565273ff",x"2e098106",x"dd38883d",x"0d04f83d",x"0d80c080",x"80845783",x"d00a598b",x"da2d7651",x"8c802d9e",x"f0708808",x"101091c0",x"84057170",x"8405530c",x"5656fb80",x"84a1ad75",x"0c9ecc0b",x"88170c80",x"70780c77",x"0c760883",x"ffff0656",x"81df800b",x"88082783",x"38ff3983",x"ffff790c",x"a0805488",x"08537852",x"76518c9f",x"2d76518b",x"be2d7808",x"5574762e",x"893880c3",x"518aa02d",x"ff39a084",x"085574fa",x"a0849e80",x"2e893880",x"c2518aa0",x"2dff3990",x"0a700870",x"ffbf0672",x"0c56568a",x"852d8bf1",x"2dff3d0d",x"9efc0881",x"119efc0c",x"5183900a",x"700870fe",x"ff06720c",x"5252833d",x"0d04803d",x"0d8aef2d",x"72818007",x"518ac02d",x"8b842d82",x"3d0d04fe",x"3d0d80c0",x"80808453",x"8bda2d85",x"730c8073",x"0c720870",x"81ff0674",x"5351528b",x"be2d7188",x"0c843d0d",x"04fc3d0d",x"76811133",x"82123371",x"81800a29",x"71848080",x"29058314",x"33708280",x"29128416",x"33527105",x"a0800586",x"16851733",x"57525353",x"55575553",x"ff135372",x"ff2e9138",x"73708105",x"55335271",x"75708105",x"5734e939",x"89518e92",x"2d863d0d",x"04f93d0d",x"795780c0",x"80808456",x"8bda2d81",x"17338218",x"33718280",x"29055353",x"71802e94",x"38851772",x"55537270",x"81055433",x"760cff14",x"5473f338",x"83173384",x"18337182",x"80290556",x"52805473",x"75279738",x"73587776",x"0c731776",x"08535371",x"73348114",x"54747426",x"ed387551",x"8bbe2d8a",x"ef2d8184",x"518ac02d",x"74882a51",x"8ac02d74",x"518ac02d",x"80547375",x"278f3873",x"17703352",x"528ac02d",x"811454ee",x"398b842d",x"893d0d04",x"f93d0d79",x"5680c080",x"8084558b",x"da2d8675",x"0c74518b",x"be2d8bda",x"2d81ad70",x"760c8117",x"33821833",x"71828029",x"05831933",x"780c8419",x"33780c85",x"1933780c",x"59535380",x"54737727",x"b3387258",x"73802e87",x"388bda2d",x"77750c73",x"16861133",x"760c8711",x"33760c52",x"74518bbe",x"2d8ea72d",x"88088106",x"5271f638",x"82145476",x"7426d138",x"8bda2d84",x"750c7451",x"8bbe2d8a",x"ef2d8187",x"518ac02d",x"8b842d89",x"3d0d04fc",x"3d0d7681",x"11338212",x"3371902b",x"71882b07",x"83143370",x"7207882b",x"84163371",x"07515253",x"57575452",x"88518e92",x"2d81ff51",x"8aa02d80",x"c4808084",x"53720870",x"812a7081",x"06515152",x"71f33873",x"84808007",x"80c48080",x"840c863d",x"0d04fe3d",x"0d8ea72d",x"88088808",x"81065353",x"71f3388a",x"ef2d8183",x"518ac02d",x"72518ac0",x"2d8b842d",x"843d0d04",x"fe3d0d80",x"0b9efc0c",x"8aef2d81",x"81518ac0",x"2d9ecc53",x"8f527270",x"81055433",x"518ac02d",x"ff125271",x"ff2e0981",x"06ec388b",x"842d843d",x"0d04fe3d",x"0d800b9e",x"fc0c8aef",x"2d818251",x"8ac02d80",x"c0808084",x"528bda2d",x"81f90a0b",x"80c08080",x"9c0c7108",x"7252538b",x"be2d729f",x"840c7290",x"2a518ac0",x"2d9f8408",x"882a518a",x"c02d9f84",x"08518ac0",x"2d8ea72d",x"8808518a",x"c02d8b84",x"2d843d0d",x"04803d0d",x"810b9f80",x"0c800b83",x"900a0c85",x"518e922d",x"823d0d04",x"803d0d80",x"0b9f800c",x"8ba52d86",x"518e922d",x"823d0d04",x"fd3d0d80",x"c0808084",x"548a518e",x"922d8bda",x"2d9ef074",x"52538c80",x"2d728808",x"101091c0",x"84057170",x"8405530c",x"52fb8084",x"a1ad720c",x"9ecc0b88",x"140c7351",x"8bbe2d8a",x"852d8bf1",x"2dfc3d0d",x"80c08080",x"84705255",x"8bbe2d8b",x"da2d8b75",x"0c7680c0",x"8080940c",x"80750ca0",x"80547753",x"83d00a52",x"74518c9f",x"2d74518b",x"be2d8a85",x"2d8bf12d",x"ffab3d0d",x"800b9f80",x"0c800b9e",x"fc0c800b",x"8df50ba0",x"800c5780",x"c4808084",x"558480b3",x"750c80c8",x"8080a453",x"fbffff73",x"08707206",x"750c5354",x"80c88080",x"94700870",x"7606720c",x"5353a870",x"99ce7170",x"8405530c",x"9aab710c",x"539bc40b",x"88120c9c",x"d30b8c12",x"0c94b10b",x"90120c53",x"880b80d0",x"8080840c",x"80d00a53",x"81730c8b",x"a52d8288",x"880b80dc",x"8080840c",x"81f20b90",x"0a0c80c0",x"80808470",x"52528bbe",x"2d8bda2d",x"71518bbe",x"2d8bda2d",x"84720c71",x"518bbe2d",x"76777675",x"933d4141",x"5b5b5b83",x"d00a5c78",x"08708106",x"5152719d",x"389f8008",x"5372f038",x"9efc0852",x"87e87227",x"e638727e",x"0c728390",x"0a0c98c4",x"2d82900a",x"08537980",x"2e81b438",x"7280fe2e",x"09810680",x"f4387680",x"2ec13880",x"7d785856",x"5a827727",x"ffb53883",x"ffff7c0c",x"79fe1853",x"53797227",x"983880dc",x"80808872",x"55587215",x"7033790c",x"52811353",x"737326f2",x"38ff1675",x"11547505",x"ff057033",x"74337072",x"882b077f",x"08535155",x"51527173",x"2e098106",x"feed3874",x"3353728a",x"26fee438",x"7210109e",x"a0057552",x"70085152",x"712dfed3",x"397280fd",x"2e098106",x"8638815b",x"fec53976",x"829f269e",x"387a802e",x"87388073",x"a032545b",x"80d73d77",x"05fde005",x"52727234",x"811757fe",x"a239805a",x"fe9d3972",x"80fe2e09",x"8106fe93",x"38795783",x"ffff7c0c",x"81775c5a",x"fe853980",x"3d0d8808",x"8c089008",x"a0800851",x"702d900c",x"8c0c8a0c",x"810b80d0",x"0a0c823d",x"0d04ff3d",x"0d805280",x"5194e82d",x"833d0d04",x"81fff80d",x"8cda0481",x"fff80da0",x"8804fb3d",x"0d777955",x"55805675",x"7524ab38",x"8074249d",x"38805373",x"52745180",x"e13f8808",x"5475802e",x"85388808",x"30547388",x"0c873d0d",x"04733076",x"81325754",x"dc397430",x"55815673",x"8025d238",x"ec39fa3d",x"0d787a57",x"55805776",x"7524a438",x"759f2c54",x"81537574",x"32743152",x"74519b3f",x"88085476",x"802e8538",x"88083054",x"73880c88",x"3d0d0474",x"30558157",x"d739fc3d",x"0d767853",x"54815380",x"74732652",x"5572802e",x"98387080",x"2ea93880",x"7224a438",x"71107310",x"75722653",x"545272ea",x"38735178",x"83387451",x"70880c86",x"3d0d0472",x"812a7281",x"2a535372",x"802ee638",x"717426ef",x"38737231",x"75740774",x"812a7481",x"2a555556",x"54e539fc",x"3d0d7670",x"797b5555",x"55558f72",x"278c3872",x"75078306",x"5170802e",x"a738ff12",x"5271ff2e",x"98387270",x"81055433",x"74708105",x"5634ff12",x"5271ff2e",x"098106ea",x"3874880c",x"863d0d04",x"74517270",x"84055408",x"71708405",x"530c7270",x"84055408",x"71708405",x"530c7270",x"84055408",x"71708405",x"530c7270",x"84055408",x"71708405",x"530cf012",x"52718f26",x"c9388372",x"27953872",x"70840554",x"08717084",x"05530cfc",x"12527183",x"26ed3870",x"54ff8339",x"fc3d0d76",x"7971028c",x"059f0533",x"57555355",x"8372278a",x"38748306",x"5170802e",x"a238ff12",x"5271ff2e",x"93387373",x"70810555",x"34ff1252",x"71ff2e09",x"8106ef38",x"74880c86",x"3d0d0474",x"74882b75",x"07707190",x"2b075154",x"518f7227",x"a5387271",x"70840553",x"0c727170",x"8405530c",x"72717084",x"05530c72",x"71708405",x"530cf012",x"52718f26",x"dd388372",x"27903872",x"71708405",x"530cfc12",x"52718326",x"f2387053",x"ff9039fb",x"3d0d7779",x"70720783",x"06535452",x"70933871",x"73730854",x"56547173",x"082e80c4",x"38737554",x"52713370",x"81ff0652",x"5470802e",x"9d387233",x"5570752e",x"09810695",x"38811281",x"14713370",x"81ff0654",x"56545270",x"e5387233",x"557381ff",x"067581ff",x"06717131",x"880c5252",x"873d0d04",x"710970f7",x"fbfdff14",x"0670f884",x"82818006",x"51515170",x"97388414",x"84167108",x"54565471",x"75082edc",x"38737554",x"52ff9639",x"800b880c",x"873d0d04",x"ff3d0d9f",x"8c0bfc05",x"70085252",x"70ff2e91",x"38702dfc",x"12700852",x"5270ff2e",x"098106f1",x"38833d0d",x"0404eb8f",x"3f040000",x"00ffffff",x"ff00ffff",x"ffff00ff",x"ffffff00",x"0000093c",x"0000096e",x"00000916",x"000007a1",x"000009c5",x"000009dc",x"00000834",x"000008c3",x"0000074d",x"000009f0",x"01090460",x"00006f80",x"05b8d800",x"a4010f00",x"00000000",x"00000000",x"00000000",x"00000f94",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"ffffffff",x"00000000",x"ffffffff",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000",x"00000000");

begin

  process (clk)
  begin
    if rising_edge(clk) then
      if ENA='1' then
        if WEA='1' then
          RAM(conv_integer(ADDRA) ) := DIA;
        end if;
        DOA <= RAM(conv_integer(ADDRA)) ;
      end if;
    end if;
  end process;  

  process (clk)
  begin
    if rising_edge(clk) then
      if ENB='1' then
        if WEB='1' then
          RAM( conv_integer(ADDRB) ) := DIB;
        end if;
        DOB <= RAM(conv_integer(ADDRB)) ;
      end if;
    end if;
  end process;  
end behave;
