

%% Voltage Equation for nodes
%% Zone 1: 
% Node number: 1 to 17, 34;
% Branch data row number: 1 to 12, 14, 16 to 19, 37.

Constraints = [Constraints, (vi(0+1)== 1):'nodalVeq1' ];
Constraints = [Constraints, (vi(1+1) == vi(0+1) - 2*rl(1)*P(1) - 2*xl(1)*Q(1)):'nodalVeq2' ];
Constraints = [Constraints, (vi(2+1) == vi(1+1) - 2*rl(2)*P(2) - 2*xl(2)*Q(2)):'nodalVeq3' ];
Constraints = [Constraints, (vi(3+1) == vi(1+1) - 2*rl(3)*P(3) - 2*xl(3)*Q(3)):'nodalVeq4' ];
Constraints = [Constraints, (vi(4+1) == vi(3+1) - 2*rl(5)*P(5) - 2*xl(5)*Q(5)):'nodalVeq5' ];
Constraints = [Constraints, (vi(5+1) == vi(3+1) - 2*rl(6)*P(6) - 2*xl(6)*Q(6)):'nodalVeq6' ];
Constraints = [Constraints, (vi(6+1) == vi(5+1) - 2*rl(7)*P(7) - 2*xl(7)*Q(7)):'nodalVeq7' ];
Constraints = [Constraints, (vi(7+1) == vi(1+1) - 2*rl(4)*P(4) - 2*xl(4)*Q(4)):'nodalVeq8' ];
Constraints = [Constraints, (vi(8+1) == vi(7+1) - 2*rl(8)*P(8) - 2*xl(8)*Q(8)):'nodalVeq9' ];
Constraints = [Constraints, (vi(9+1) == vi(8+1) - 2*rl(9)*P(9) - 2*xl(9)*Q(9)):'nodalVeq10' ];
Constraints = [Constraints, (vi(10+1) == vi(14+1) - 2*rl(16)*P(16) - 2*xl(16)*Q(16)):'nodalVeq11' ];
Constraints = [Constraints, (vi(11+1) == vi(14+1) - 2*rl(17)*P(17) - 2*xl(17)*Q(17)):'nodalVeq12' ];
Constraints = [Constraints, (vi(12+1) == vi(8+1) - 2*rl(10)*P(10) - 2*xl(10)*Q(10)):'nodalVeq13' ];
Constraints = [Constraints, (vi(13+1) == vi(8+1) - 2*rl(11)*P(11) - 2*xl(11)*Q(11)):'nodalVeq14' ];
Constraints = [Constraints, (vi(14+1) == vi(9+1) - 2*rl(12)*P(12) - 2*xl(12)*Q(12)):'nodalVeq15' ];
Constraints = [Constraints, (vi(15+1) == vi(34+1) - 2*rl(37)*P(37) - 2*xl(37)*Q(37)):'nodalVeq16' ];
Constraints = [Constraints, (vi(16+1) == vi(15+1) - 2*rl(18)*P(18) - 2*xl(18)*Q(18)):'nodalVeq17' ];
Constraints = [Constraints, (vi(17+1) == vi(15+1) - 2*rl(19)*P(19) - 2*xl(19)*Q(19)):'nodalVeq18' ];
Constraints = [Constraints, (vi(34+1) == vi(13+1) - 2*rl(14)*P(14) - 2*xl(14)*Q(14)):'nodalVeq19' ];


%% Zone 2: 
% Node 18 to 33;
% Branch data row number: 13, 21, 22, 24 to 36.

Constraints = [Constraints, (vi(18+1) == vi(13+1) - 2*rl(13)*P(13) - 2*xl(13)*Q(13)):'nodalVeq20' ];
Constraints = [Constraints, (vi(19+1) == vi(18+1) - 2*rl(21)*P(21) - 2*xl(21)*Q(21)):'nodalVeq21' ];
Constraints = [Constraints, (vi(20+1) == vi(19+1) - 2*rl(24)*P(24) - 2*xl(24)*Q(24)):'nodalVeq22' ];
Constraints = [Constraints, (vi(21+1) == vi(18+1) - 2*rl(22)*P(22) - 2*xl(22)*Q(22)):'nodalVeq23' ];
Constraints = [Constraints, (vi(22+1) == vi(21+1) - 2*rl(25)*P(25) - 2*xl(25)*Q(25)):'nodalVeq24' ];
Constraints = [Constraints, (vi(23+1) == vi(21+1) - 2*rl(26)*P(26) - 2*xl(26)*Q(26)):'nodalVeq25' ];
Constraints = [Constraints, (vi(24+1) == vi(23+1) - 2*rl(27)*P(27) - 2*xl(27)*Q(27)):'nodalVeq26' ];
Constraints = [Constraints, (vi(25+1) == vi(23+1) - 2*rl(28)*P(28) - 2*xl(28)*Q(28)):'nodalVeq27' ];
Constraints = [Constraints, (vi(26+1) == vi(25+1) - 2*rl(29)*P(29) - 2*xl(29)*Q(29)):'nodalVeq28' ];
Constraints = [Constraints, (vi(27+1) == vi(26+1) - 2*rl(31)*P(31) - 2*xl(31)*Q(31)):'nodalVeq29' ];
Constraints = [Constraints, (vi(28+1) == vi(25+1) - 2*rl(30)*P(30) - 2*xl(30)*Q(30)):'nodalVeq30' ];
Constraints = [Constraints, (vi(29+1) == vi(28+1) - 2*rl(34)*P(34) - 2*xl(34)*Q(34)):'nodalVeq31' ];
Constraints = [Constraints, (vi(30+1) == vi(29+1) - 2*rl(35)*P(35) - 2*xl(35)*Q(35)):'nodalVeq32' ];
Constraints = [Constraints, (vi(31+1) == vi(26+1) - 2*rl(32)*P(32) - 2*xl(32)*Q(32)):'nodalVeq33' ];
Constraints = [Constraints, (vi(32+1) == vi(31+1) - 2*rl(36)*P(36) - 2*xl(36)*Q(36)):'nodalVeq34' ];
Constraints = [Constraints, (vi(33+1) == vi(27+1) - 2*rl(33)*P(33) - 2*xl(33)*Q(33)):'nodalVeq35' ];

%% Zone 3: 
% Node 35 to 51;
% Branch data row number: 23, 38 to 53.

Constraints = [Constraints, (vi(35+1) == vi(18+1) - 2*rl(23)*P(23) - 2*xl(23)*Q(23)):'nodalVeq36' ];
Constraints = [Constraints, (vi(36+1) == vi(35+1) - 2*rl(38)*P(38) - 2*xl(38)*Q(38)):'nodalVeq37' ];
Constraints = [Constraints, (vi(37+1) == vi(36+1) - 2*rl(40)*P(40) - 2*xl(40)*Q(40)):'nodalVeq38' ];
Constraints = [Constraints, (vi(38+1) == vi(36+1) - 2*rl(41)*P(41) - 2*xl(41)*Q(41)):'nodalVeq39' ];
Constraints = [Constraints, (vi(39+1) == vi(38+1) - 2*rl(42)*P(42) - 2*xl(42)*Q(42)):'nodalVeq40' ];
Constraints = [Constraints, (vi(40+1) == vi(35+1) - 2*rl(39)*P(39) - 2*xl(39)*Q(39)):'nodalVeq41' ];
Constraints = [Constraints, (vi(41+1) == vi(40+1) - 2*rl(43)*P(43) - 2*xl(43)*Q(43)):'nodalVeq42' ];
Constraints = [Constraints, (vi(42+1) == vi(40+1) - 2*rl(44)*P(44) - 2*xl(44)*Q(44)):'nodalVeq43' ];
Constraints = [Constraints, (vi(43+1) == vi(42+1) - 2*rl(45)*P(45) - 2*xl(45)*Q(45)):'nodalVeq44' ];
Constraints = [Constraints, (vi(44+1) == vi(42+1) - 2*rl(46)*P(46) - 2*xl(46)*Q(46)):'nodalVeq45' ];
Constraints = [Constraints, (vi(45+1) == vi(44+1) - 2*rl(47)*P(47) - 2*xl(47)*Q(47)):'nodalVeq46' ];
Constraints = [Constraints, (vi(46+1) == vi(45+1) - 2*rl(49)*P(49) - 2*xl(49)*Q(49)):'nodalVeq47' ];
Constraints = [Constraints, (vi(47+1) == vi(44+1) - 2*rl(48)*P(48) - 2*xl(48)*Q(48)):'nodalVeq48' ];
Constraints = [Constraints, (vi(48+1) == vi(47+1) - 2*rl(50)*P(50) - 2*xl(50)*Q(50)):'nodalVeq49' ];
Constraints = [Constraints, (vi(49+1) == vi(47+1) - 2*rl(51)*P(51) - 2*xl(51)*Q(51)):'nodalVeq50' ];
Constraints = [Constraints, (vi(50+1) == vi(49+1) - 2*rl(52)*P(52) - 2*xl(52)*Q(52)):'nodalVeq51' ];
Constraints = [Constraints, (vi(51+1) == vi(50+1) - 2*rl(53)*P(53) - 2*xl(53)*Q(53)):'nodalVeq52' ];

%% Zone 4: 
% Node 52 to 75, 97 to 100;
% Branch data row number: 15, 55 to 78, 99 to 101.

Constraints = [Constraints, (vi(52+1) == vi(13+1) - 2*rl(15)*P(15) - 2*xl(15)*Q(15)):'nodalVeq53' ];
Constraints = [Constraints, (vi(53+1) == vi(52+1) - 2*rl(55)*P(55) - 2*xl(55)*Q(55)):'nodalVeq54' ];
Constraints = [Constraints, (vi(54+1) == vi(53+1) - 2*rl(56)*P(56) - 2*xl(56)*Q(56)):'nodalVeq55' ];
Constraints = [Constraints, (vi(55+1) == vi(54+1) - 2*rl(57)*P(57) - 2*xl(57)*Q(57)):'nodalVeq56' ];
Constraints = [Constraints, (vi(56+1) == vi(55+1) - 2*rl(59)*P(59) - 2*xl(59)*Q(59)):'nodalVeq57' ];
Constraints = [Constraints, (vi(57+1) == vi(54+1) - 2*rl(58)*P(58) - 2*xl(58)*Q(58)):'nodalVeq58' ];
Constraints = [Constraints, (vi(58+1) == vi(57+1) - 2*rl(60)*P(60) - 2*xl(60)*Q(60)):'nodalVeq59' ];
Constraints = [Constraints, (vi(59+1) == vi(58+1) - 2*rl(62)*P(62) - 2*xl(62)*Q(62)):'nodalVeq60' ];
Constraints = [Constraints, (vi(60+1) == vi(57+1) - 2*rl(61)*P(61) - 2*xl(61)*Q(61)):'nodalVeq61' ];
Constraints = [Constraints, (vi(61+1) == vi(60+1) - 2*rl(63)*P(63) - 2*xl(63)*Q(63)):'nodalVeq62' ];
Constraints = [Constraints, (vi(62+1) == vi(60+1) - 2*rl(64)*P(64) - 2*xl(64)*Q(64)):'nodalVeq63' ];
Constraints = [Constraints, (vi(63+1) == vi(62+1) - 2*rl(66)*P(66) - 2*xl(66)*Q(66)):'nodalVeq64' ];
Constraints = [Constraints, (vi(64+1) == vi(63+1) - 2*rl(67)*P(67) - 2*xl(67)*Q(67)):'nodalVeq65' ];
Constraints = [Constraints, (vi(65+1) == vi(64+1) - 2*rl(68)*P(68) - 2*xl(68)*Q(68)):'nodalVeq66' ];
Constraints = [Constraints, (vi(66+1) == vi(65+1) - 2*rl(69)*P(69) - 2*xl(69)*Q(69)):'nodalVeq67' ];
Constraints = [Constraints, (vi(67+1) == vi(60+1) - 2*rl(65)*P(65) - 2*xl(65)*Q(65)):'nodalVeq68' ];
Constraints = [Constraints, (vi(68+1) == vi(67+1) - 2*rl(70)*P(70) - 2*xl(70)*Q(70)):'nodalVeq69' ];
Constraints = [Constraints, (vi(69+1) == vi(68+1) - 2*rl(73)*P(73) - 2*xl(73)*Q(73)):'nodalVeq70' ];
Constraints = [Constraints, (vi(70+1) == vi(69+1) - 2*rl(74)*P(74) - 2*xl(74)*Q(74)):'nodalVeq71' ];
Constraints = [Constraints, (vi(71+1) == vi(70+1) - 2*rl(75)*P(75) - 2*xl(75)*Q(75)):'nodalVeq72' ];
Constraints = [Constraints, (vi(72+1) == vi(67+1) - 2*rl(71)*P(71) - 2*xl(71)*Q(71)):'nodalVeq73' ];
Constraints = [Constraints, (vi(73+1) == vi(72+1) - 2*rl(76)*P(76) - 2*xl(76)*Q(76)):'nodalVeq74' ];
Constraints = [Constraints, (vi(74+1) == vi(73+1) - 2*rl(77)*P(77) - 2*xl(77)*Q(77)):'nodalVeq75' ];
Constraints = [Constraints, (vi(75+1) == vi(74+1) - 2*rl(78)*P(78) - 2*xl(78)*Q(78)):'nodalVeq76' ];
Constraints = [Constraints, (vi(97+1) == vi(67+1) - 2*rl(72)*P(72) - 2*xl(72)*Q(72)):'nodalVeq77' ];
Constraints = [Constraints, (vi(98+1) == vi(97+1) - 2*rl(99)*P(99) - 2*xl(99)*Q(99)):'nodalVeq78' ];
Constraints = [Constraints, (vi(99+1) == vi(98+1) - 2*rl(100)*P(100) - 2*xl(100)*Q(100)):'nodalVeq79' ];
Constraints = [Constraints, (vi(100+1) == vi(99+1) - 2*rl(101)*P(101) - 2*xl(101)*Q(101)):'nodalVeq80' ];

%% Zone 5: 
% Node 76 to 96;
% Branch data row number: 79 to 98, 20.

Constraints = [Constraints, (vi(76+1) == vi(86+1) - 2*rl(80)*P(80) - 2*xl(80)*Q(80)):'nodalVeq81' ];
Constraints = [Constraints, (vi(77+1) == vi(76+1) - 2*rl(79)*P(79) - 2*xl(79)*Q(79)):'nodalVeq82' ];
Constraints = [Constraints, (vi(78+1) == vi(77+1) - 2*rl(81)*P(81) - 2*xl(81)*Q(81)):'nodalVeq83' ];
Constraints = [Constraints, (vi(79+1) == vi(78+1) - 2*rl(82)*P(82) - 2*xl(82)*Q(82)):'nodalVeq84' ];
Constraints = [Constraints, (vi(80+1) == vi(78+1) - 2*rl(83)*P(83) - 2*xl(83)*Q(83)):'nodalVeq85' ];
Constraints = [Constraints, (vi(81+1) == vi(80+1) - 2*rl(84)*P(84) - 2*xl(84)*Q(84)):'nodalVeq86' ];
Constraints = [Constraints, (vi(82+1) == vi(81+1) - 2*rl(85)*P(85) - 2*xl(85)*Q(85)):'nodalVeq87' ];
Constraints = [Constraints, (vi(83+1) == vi(82+1) - 2*rl(87)*P(87) - 2*xl(87)*Q(87)):'nodalVeq88' ];
Constraints = [Constraints, (vi(84+1) == vi(81+1) - 2*rl(86)*P(86) - 2*xl(86)*Q(86)):'nodalVeq89' ];
Constraints = [Constraints, (vi(85+1) == vi(84+1) - 2*rl(88)*P(88) - 2*xl(88)*Q(88)):'nodalVeq90' ];
Constraints = [Constraints, (vi(86+1) == vi(87+1) - 2*rl(89)*P(89) - 2*xl(89)*Q(89)):'nodalVeq91' ];
Constraints = [Constraints, (vi(87+1) == vi(89+1) - 2*rl(91)*P(91) - 2*xl(91)*Q(91)):'nodalVeq92' ];
Constraints = [Constraints, (vi(88+1) == vi(87+1) - 2*rl(90)*P(90) - 2*xl(90)*Q(90)):'nodalVeq93' ];
Constraints = [Constraints, (vi(89+1) == vi(91+1) - 2*rl(93)*P(93) - 2*xl(93)*Q(93)):'nodalVeq94' ];
Constraints = [Constraints, (vi(90+1) == vi(89+1) - 2*rl(92)*P(92) - 2*xl(92)*Q(92)):'nodalVeq95' ];
Constraints = [Constraints, (vi(91+1) == vi(93+1) - 2*rl(95)*P(95) - 2*xl(95)*Q(95)):'nodalVeq96' ];
Constraints = [Constraints, (vi(92+1) == vi(91+1) - 2*rl(94)*P(94) - 2*xl(94)*Q(94)):'nodalVeq97' ];
Constraints = [Constraints, (vi(93+1) == vi(95+1) - 2*rl(97)*P(97) - 2*xl(97)*Q(97)):'nodalVeq98' ];
Constraints = [Constraints, (vi(94+1) == vi(93+1) - 2*rl(96)*P(96) - 2*xl(96)*Q(96)):'nodalVeq99' ];
Constraints = [Constraints, (vi(95+1) == vi(16+1) - 2*rl(20)*P(20) - 2*xl(20)*Q(20)):'nodalVeq100' ];
Constraints = [Constraints, (vi(96+1) == vi(95+1) - 2*rl(98)*P(98) - 2*xl(98)*Q(98)):'nodalVeq101' ];

%% Zone 6: 
% Node 101 to 114;
% Branch data row number: 54, 102 to 114.

Constraints = [Constraints, (vi(101+1) == vi(105+1) - 2*rl(103)*P(103) - 2*xl(103)*Q(103)):'nodalVeq102' ];
Constraints = [Constraints, (vi(102+1) == vi(101+1) - 2*rl(102)*P(102) - 2*xl(102)*Q(102)):'nodalVeq103' ];
Constraints = [Constraints, (vi(103+1) == vi(102+1) - 2*rl(104)*P(104) - 2*xl(104)*Q(104)):'nodalVeq104' ];
Constraints = [Constraints, (vi(104+1) == vi(103+1) - 2*rl(105)*P(105) - 2*xl(105)*Q(105)):'nodalVeq105' ];
Constraints = [Constraints, (vi(105+1) == vi(108+1) - 2*rl(107)*P(107) - 2*xl(107)*Q(107)):'nodalVeq106' ];
Constraints = [Constraints, (vi(106+1) == vi(105+1) - 2*rl(106)*P(106) - 2*xl(106)*Q(106)):'nodalVeq107' ];
Constraints = [Constraints, (vi(107+1) == vi(106+1) - 2*rl(108)*P(108) - 2*xl(108)*Q(108)):'nodalVeq108' ];
Constraints = [Constraints, (vi(108+1) == vi(51+1) - 2*rl(54)*P(54) - 2*xl(54)*Q(54)):'nodalVeq109' ];
Constraints = [Constraints, (vi(109+1) == vi(108+1) - 2*rl(109)*P(109) - 2*xl(109)*Q(109)):'nodalVeq110' ];
Constraints = [Constraints, (vi(110+1) == vi(109+1) - 2*rl(110)*P(110) - 2*xl(110)*Q(110)):'nodalVeq111' ];
Constraints = [Constraints, (vi(111+1) == vi(110+1) - 2*rl(111)*P(111) - 2*xl(111)*Q(111)):'nodalVeq112' ];
Constraints = [Constraints, (vi(112+1) == vi(110+1) - 2*rl(112)*P(112) - 2*xl(112)*Q(112)):'nodalVeq113' ];
Constraints = [Constraints, (vi(113+1) == vi(112+1) - 2*rl(113)*P(113) - 2*xl(113)*Q(113)):'nodalVeq114' ];
Constraints = [Constraints, (vi(114+1) == vi(113+1) - 2*rl(114)*P(114) - 2*xl(114)*Q(114)):'nodalVeq115' ];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Active power flow through branches

%% Zone 1: 
% Node number: 1 to 17, 34;
% Branch data row number: 1 to 12, 14, 16 to 19, 37;
% Added interconnector: node13_18, 13_52, 16_95.

Constraints = [Constraints, (P(1) == P(2) + pi(1+1) - pPV(1+1) + P(4)+ P(3)):'branchPeq1']; % Branch 0_1
Constraints = [Constraints, (P(2) == P(115) + pi(2+1) - pPV(2+1)):'branchPeq2']; % Branch 1_2
Constraints = [Constraints, (P(3) == P(5) + pi(3+1) - pPV(3+1) + P(6)):'branchPeq3']; % Branch 1_3
Constraints = [Constraints, (P(5) == P(116) + pi(4+1) - pPV(4+1)):'branchPeq4']; % Branch 3_4
Constraints = [Constraints, (P(6) == P(7) + pi(5+1) - pPV(5+1)):'branchPeq5']; % Branch 3_5
Constraints = [Constraints, (P(7) == P(117) + pi(6+1) - pPV(6+1)):'branchPeq6']; % Branch 5_6
Constraints = [Constraints, (P(4) == P(8) + pi(7+1) - pPV(7+1)):'branchPeq7']; % Branch 1_7
Constraints = [Constraints, (P(8) == P(9) + pi(8+1) - pPV(8+1) + P(10)+ P(11)):'branchPeq8']; % Branch 7_8
Constraints = [Constraints, (P(9) == P(12) + pi(9+1) - pPV(9+1)):'branchPeq9']; % Branch 8_9
Constraints = [Constraints, (P(12) == P(16) + pi(14+1) - pPV(14+1) + P(17)):'branchPeq10']; % Branch 9_14
Constraints = [Constraints, (P(16) == P(118) + pi(10+1) - pPV(10+1)):'branchPeq11']; % Branch 14_10
Constraints = [Constraints, (P(17) == P(119) + pi(11+1) - pPV(11+1)):'branchPeq12']; % Branch 14_11
Constraints = [Constraints, (P(10) == P(120) + pi(12+1) - pPV(12+1)):'branchPeq13']; % Branch 8_12
Constraints = [Constraints, (P(11) == P(14) + pi(13+1) - pPV(13+1) + P(13)+ P(15)):'branchPeq14']; % Branch 8_13
Constraints = [Constraints, (P(14) == P(37) + pi(34+1) - pPV(34+1)):'branchPeq15']; % Branch 13_34
Constraints = [Constraints, (P(37) == P(18) + pi(15+1) - pPV(15+1) + P(19)):'branchPeq16']; % Branch 34_15
Constraints = [Constraints, (P(19) == P(121) + pi(17+1) - pPV(17+1)):'branchPeq17']; % Branch 15_17
Constraints = [Constraints, (P(18) == P(20) + pi(16+1) - pPV(16+1)):'branchPeq18']; % Branch 15_16
Constraints = [Constraints, (P(13) == P(21) + pi(18+1) - pPV(18+1) + P(22)+ P(23)):'branchPeq19']; % Branch 13_18
Constraints = [Constraints, (P(15) == P(55) + pi(52+1) - pPV(52+1)):'branchPeq20']; % Branch 13_52
Constraints = [Constraints, (P(20) == P(98) + pi(18+1) - pPV(18+1) + P(97)):'branchPeq21']; % Branch 16_95
Constraints = [Constraints, (P(115)==0):'branchPeq115'; (P(116) ==0):'branchPeq116'; (P(117) ==0):'branchPeq117'; (P(118) ==0):'branchPeq118'; (P(119) ==0):'branchPeq119'; (P(120) ==0):'branchPeq120'; (P(121) ==0):'branchPeq121' ];


%% Zone 2: 
% Node 18 to 33;
% Branch data row number: 13, 21, 22, 24 to 36.
% Added interconnector: node18_35. Zone 1 covered interconnector: node13_18.

Constraints = [Constraints, (P(21) == P(24) + pi(19+1) - pPV(19+1)):'branchPeq22']; % Branch 18_19
Constraints = [Constraints, (P(24) == P(122) + pi(20+1) - pPV(20+1)):'branchPeq23']; % Branch 19_20
Constraints = [Constraints, (P(22) == P(25) + pi(21+1) - pPV(21+1) + P(26)):'branchPeq24']; % Branch 18_21
Constraints = [Constraints, (P(25) == P(123) + pi(22+1) - pPV(22+1)):'branchPeq25']; % Branch 21_22
Constraints = [Constraints, (P(26) == P(27) + pi(23+1) - pPV(23+1) + P(28)):'branchPeq26']; % Branch 21_23
Constraints = [Constraints, (P(27) == P(124) + pi(24+1) - pPV(24+1)):'branchPeq27']; % Branch 23_24
Constraints = [Constraints, (P(28) == P(29) + pi(25+1) - pPV(25+1) + P(30)):'branchPeq28']; % Branch 23_25
Constraints = [Constraints, (P(29) == P(31) + pi(26+1) - pPV(26+1) + P(32)):'branchPeq29']; % Branch 25_26
Constraints = [Constraints, (P(31) == P(33) + pi(27+1) - pPV(27+1)):'branchPeq30']; % Branch 26_27
Constraints = [Constraints, (P(33) == P(127) + pi(33+1) - pPV(33+1)):'branchPeq31']; % Branch 27_33
Constraints = [Constraints, (P(32) == P(36) + pi(31+1) - pPV(31+1)):'branchPeq32']; % Branch 26_31
Constraints = [Constraints, (P(36) == P(126) + pi(32+1) - pPV(32+1)):'branchPeq33']; % Branch 31_32
Constraints = [Constraints, (P(30) == P(34) + pi(28+1) - pPV(28+1)):'branchPeq34']; % Branch 25_28
Constraints = [Constraints, (P(34) == P(35) + pi(29+1) - pPV(29+1)):'branchPeq35']; % Branch 28_29
Constraints = [Constraints, (P(35) == P(125) + pi(30+1) - pPV(30+1)):'branchPeq36']; % Branch 29_30
Constraints = [Constraints, (P(23) == P(38) + pi(35+1) - pPV(35+1) + P(39)):'branchPeq37']; % Branch 18_35
Constraints = [Constraints, (P(122)==0):'branchPeq122'; (P(123) ==0):'branchPeq123'; (P(124) ==0):'branchPeq124'; (P(125) ==0):'branchPeq125'; (P(126) ==0):'branchPeq126'; (P(127) ==0):'branchPeq127' ];

%% Zone 3: 
% Node 35 to 51;
% Branch data row number: 23, 38 to 53.
% Added interconnector: node51_108. Zone 2 covered interconnector: node18_35.

Constraints = [Constraints, (P(38) == P(40) + pi(36+1) - pPV(36+1) + P(41)):'branchPeq38']; % Branch 35_36
Constraints = [Constraints, (P(40) == P(128) + pi(37+1) - pPV(37+1)):'branchPeq39']; % Branch 36_37
Constraints = [Constraints, (P(41) == P(42) + pi(38+1) - pPV(38+1)):'branchPeq40']; % Branch 36_38
Constraints = [Constraints, (P(42) == P(129) + pi(39+1) - pPV(39+1)):'branchPeq41']; % Branch 38_39
Constraints = [Constraints, (P(39) == P(43) + pi(40+1) - pPV(40+1) + P(44)):'branchPeq42']; % Branch 35_40
Constraints = [Constraints, (P(43) == P(130) + pi(41+1) - pPV(41+1)):'branchPeq43']; % Branch 40_41
Constraints = [Constraints, (P(44) == P(45) + pi(42+1) - pPV(42+1) + P(46)):'branchPeq44']; % Branch 40_42
Constraints = [Constraints, (P(45) == P(131) + pi(43+1) - pPV(43+1)):'branchPeq45']; % Branch 42_43
Constraints = [Constraints, (P(46) == P(47) + pi(44+1) - pPV(44+1) + P(48)):'branchPeq46']; % Branch 42_44
Constraints = [Constraints, (P(47) == P(49) + pi(45+1) - pPV(45+1)):'branchPeq47']; % Branch 44_45
Constraints = [Constraints, (P(49) == P(132) + pi(46+1) - pPV(46+1)):'branchPeq48']; % Branch 45_46
Constraints = [Constraints, (P(48) == P(50) + pi(47+1) - pPV(47+1) + P(51)):'branchPeq49']; % Branch 44_47
Constraints = [Constraints, (P(50) == P(133) + pi(48+1) - pPV(48+1)):'branchPeq50']; % Branch 47_48
Constraints = [Constraints, (P(51) == P(52) + pi(49+1) - pPV(49+1)):'branchPeq51']; % Branch 47_49
Constraints = [Constraints, (P(52) == P(53) + pi(50+1) - pPV(50+1)):'branchPeq52']; % Branch 49_50
Constraints = [Constraints, (P(53) == P(54) + pi(51+1) - pPV(51+1)):'branchPeq53']; % Branch 50_51
Constraints = [Constraints, (P(54) == P(107) + pi(108+1) - pPV(108+1) + P(109)):'branchPeq54']; % Branch 51_108
Constraints = [Constraints, (P(128)==0):'branchPeq128'; (P(129) ==0):'branchPeq129'; (P(130) ==0):'branchPeq130'; (P(131) ==0):'branchPeq131'; (P(132) ==0):'branchPeq132'; (P(133) ==0):'branchPeq133' ];

%% Zone 4: 
% Node 52 to 75, 97 to 100;
% Branch data row number: 15, 55 to 78, 99 to 101.
% Zone 1 covered interconnector: node13_52.

Constraints = [Constraints, (P(55) == P(56) + pi(53+1) - pPV(53+1)):'branchPeq55']; % Branch 52_53
Constraints = [Constraints, (P(56) == P(57) + pi(54+1) - pPV(54+1) + P(58)):'branchPeq56']; % Branch 53_54
Constraints = [Constraints, (P(57) == P(59) + pi(55+1) - pPV(55+1)):'branchPeq57']; % Branch 54_55
Constraints = [Constraints, (P(59) == P(134) + pi(56+1) - pPV(56+1)):'branchPeq58']; % Branch 55_56
Constraints = [Constraints, (P(58) == P(60) + pi(57+1) - pPV(57+1) + P(61)):'branchPeq59']; % Branch 54_57
Constraints = [Constraints, (P(60) == P(62) + pi(58+1) - pPV(58+1)):'branchPeq60']; % Branch 57_58
Constraints = [Constraints, (P(62) == P(135) + pi(59+1) - pPV(59+1)):'branchPeq61']; % Branch 58_59
Constraints = [Constraints, (P(61) == P(63) + pi(60+1) - pPV(60+1) + P(64)+ P(65)):'branchPeq62']; % Branch 57_60
Constraints = [Constraints, (P(63) == P(136) + pi(61+1) - pPV(61+1)):'branchPeq63']; % Branch 60_61
Constraints = [Constraints, (P(64) == P(66) + pi(62+1) - pPV(62+1)):'branchPeq64']; % Branch 60_62
Constraints = [Constraints, (P(66) == P(67) + pi(63+1) - pPV(63+1)):'branchPeq65']; % Branch 62_63
Constraints = [Constraints, (P(67) == P(68) + pi(64+1) - pPV(64+1)):'branchPeq66']; % Branch 63_64
Constraints = [Constraints, (P(68) == P(69) + pi(65+1) - pPV(65+1)):'branchPeq67']; % Branch 64_65
Constraints = [Constraints, (P(69) == P(137) + pi(66+1) - pPV(66+1)):'branchPeq68']; % Branch 65_66
Constraints = [Constraints, (P(65) == P(70) + pi(67+1) - pPV(67+1) + P(71)+ P(72)):'branchPeq69']; % Branch 60_67
Constraints = [Constraints, (P(70) == P(73) + pi(68+1) - pPV(68+1)):'branchPeq70']; % Branch 67_68
Constraints = [Constraints, (P(73) == P(74) + pi(69+1) - pPV(69+1)):'branchPeq71']; % Branch 68_69
Constraints = [Constraints, (P(74) == P(75) + pi(70+1) - pPV(70+1)):'branchPeq72']; % Branch 69_70
Constraints = [Constraints, (P(75) == P(138) + pi(71+1) - pPV(71+1)):'branchPeq73']; % Branch 70_71
Constraints = [Constraints, (P(71) == P(76) + pi(72+1) - pPV(72+1)):'branchPeq74']; % Branch 67_72
Constraints = [Constraints, (P(76) == P(77) + pi(73+1) - pPV(73+1)):'branchPeq75']; % Branch 72_73
Constraints = [Constraints, (P(77) == P(78) + pi(74+1) - pPV(74+1)):'branchPeq76']; % Branch 73_74
Constraints = [Constraints, (P(78) == P(139) + pi(75+1) - pPV(75+1)):'branchPeq77']; % Branch 74_75
Constraints = [Constraints, (P(72) == P(99) + pi(97+1) - pPV(97+1)):'branchPeq78']; % Branch 67_97
Constraints = [Constraints, (P(99) == P(100) + pi(98+1) - pPV(98+1)):'branchPeq79']; % Branch 97_98
Constraints = [Constraints, (P(100) == P(101) + pi(99+1) - pPV(99+1)):'branchPeq80']; % Branch 98_99
Constraints = [Constraints, (P(101) == P(140) + pi(99+1) - pPV(99+1)):'branchPeq81']; % Branch 99_100
Constraints = [Constraints, (P(134)==0):'branchPeq134'; (P(135) ==0):'branchPeq135'; (P(136) ==0):'branchPeq136'; (P(137) ==0):'branchPeq137'; (P(138) ==0):'branchPeq138'; (P(139) ==0):'branchPeq139'; (P(140) ==0):'branchPeq140' ];

%% Zone 5: 
% Node 76 to 96;
% Branch data row number: 79 to 98, 20.
% Zone 1 covered interconnector: node16_95.

Constraints = [Constraints, (P(98) == P(148) + pi(96+1) - pPV(96+1)):'branchPeq82']; % Branch 95_96
Constraints = [Constraints, (P(97) == P(96) + pi(93+1) - pPV(93+1)+ P(95)):'branchPeq83']; % Branch 95_93
Constraints = [Constraints, (P(96) == P(147) + pi(94+1) - pPV(94+1)):'branchPeq84']; % Branch 93_94
Constraints = [Constraints, (P(95) == P(94) + pi(91+1) - pPV(91+1)+ P(93)):'branchPeq85']; % Branch 93_91
Constraints = [Constraints, (P(94) == P(146) + pi(92+1) - pPV(92+1)):'branchPeq86']; % Branch 91_92
Constraints = [Constraints, (P(93) == P(92) + pi(89+1) - pPV(89+1)+ P(91)):'branchPeq87']; % Branch 91_89
Constraints = [Constraints, (P(92) == P(145) + pi(90+1) - pPV(90+1)):'branchPeq88']; % Branch 89_90
Constraints = [Constraints, (P(91) == P(90) + pi(87+1) - pPV(87+1)+ P(89)):'branchPeq89']; % Branch 89_87
Constraints = [Constraints, (P(90) == P(144) + pi(88+1) - pPV(88+1)):'branchPeq90']; % Branch 87_88
Constraints = [Constraints, (P(89) == P(80) + pi(86+1) - pPV(86+1)):'branchPeq91']; % Branch 87_86
Constraints = [Constraints, (P(80) == P(79) + pi(76+1) - pPV(76+1)):'branchPeq92']; % Branch 86_76
Constraints = [Constraints, (P(79) == P(81) + pi(77+1) - pPV(77+1)):'branchPeq93']; % Branch 76_77
Constraints = [Constraints, (P(81) == P(82) + pi(78+1) - pPV(78+1) + P(83)):'branchPeq94']; % Branch 77_78
Constraints = [Constraints, (P(82) == P(141) + pi(79+1) - pPV(79+1)):'branchPeq95']; % Branch 78_79
Constraints = [Constraints, (P(83) == P(84) + pi(80+1) - pPV(80+1)):'branchPeq96']; % Branch 78_80
Constraints = [Constraints, (P(84) == P(85) + pi(81+1) - pPV(81+1) + P(86)):'branchPeq97']; % Branch 80_81
Constraints = [Constraints, (P(85) == P(87) + pi(82+1) - pPV(82+1)):'branchPeq98']; % Branch 81_82
Constraints = [Constraints, (P(87) == P(142) + pi(83+1) - pPV(83+1)):'branchPeq99']; % Branch 82_83
Constraints = [Constraints, (P(86) == P(88) + pi(84+1) - pPV(84+1)):'branchPeq100']; % Branch 81_84
Constraints = [Constraints, (P(88) == P(143) + pi(85+1) - pPV(85+1)):'branchPeq101']; % Branch 84_85
Constraints = [Constraints, (P(141)==0):'branchPeq141'; (P(142) ==0):'branchPeq142'; (P(143) ==0):'branchPeq143'; (P(144) ==0):'branchPeq144'; (P(145) ==0):'branchPeq145'; (P(146) ==0):'branchPeq146'; (P(147) ==0):'branchPeq147'; (P(148) ==0):'branchPeq148' ];

%% Zone 6: 
% Node 101 to 114;
% Branch data row number: 54, 102 to 114.
% Zone 3 covered interconnector: node51_108

Constraints = [Constraints, (P(109) == P(110) + pi(109+1) - pPV(109+1)):'branchPeq102']; % Branch 108_109
Constraints = [Constraints, (P(110) == P(111) + pi(110+1) - pPV(110+1) + P(112)):'branchPeq103']; % Branch 109_110
Constraints = [Constraints, (P(111) == P(151) + pi(111+1) - pPV(111+1)):'branchPeq104']; % Branch 110_111
Constraints = [Constraints, (P(112) == P(113) + pi(112+1) - pPV(112+1)):'branchPeq105']; % Branch 110_112
Constraints = [Constraints, (P(113) == P(114) + pi(113+1) - pPV(113+1)):'branchPeq106']; % Branch 112_113
Constraints = [Constraints, (P(114) == P(152) + pi(114+1) - pPV(114+1)):'branchPeq107']; % Branch 113_114
Constraints = [Constraints, (P(107) == P(106) + pi(105+1) - pPV(105+1) + P(103)):'branchPeq108']; % Branch 108_105
Constraints = [Constraints, (P(106) == P(108) + pi(106+1) - pPV(106+1)):'branchPeq109']; % Branch 105_106
Constraints = [Constraints, (P(108) == P(150) + pi(107+1) - pPV(107+1)):'branchPeq110']; % Branch 106_107
Constraints = [Constraints, (P(103) == P(102) + pi(101+1) - pPV(101+1)):'branchPeq111']; % Branch 105_101
Constraints = [Constraints, (P(102) == P(104) + pi(102+1) - pPV(102+1)):'branchPeq112']; % Branch 101_102
Constraints = [Constraints, (P(104) == P(105) + pi(103+1) - pPV(103+1)):'branchPeq113']; % Branch 102_103
Constraints = [Constraints, (P(105) == P(149) + pi(104+1) - pPV(104+1)):'branchPeq114']; % Branch 103_104
Constraints = [Constraints, (P(149)==0):'branchPeq149'; (P(150) ==0):'branchPeq150'; (P(151) ==0):'branchPeq151'; (P(152) ==0):'branchPeq152' ];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Reactive power flow through branches

%% Zone 1: 
% Node number: 1 to 17, 34;
% Branch data row number: 1 to 12, 14, 16 to 19, 37;
% Added interconnector: node13_18, 13_52, 16_95.

Constraints = [Constraints, (Q(1) == Q(2) + qi(1+1)+ Qbat(1+1) + Q(4)+ Q(3)):'branchQeq1']; % Branch 0_1
Constraints = [Constraints, (Q(2) == Q(115) + qi(2+1)+ Qbat(2+1)):'branchQeq2']; % Branch 1_2
Constraints = [Constraints, (Q(3) == Q(5) + qi(3+1)+ Qbat(3+1) + Q(6)):'branchQeq3']; % Branch 1_3
Constraints = [Constraints, (Q(5) == Q(116) + qi(4+1)+ Qbat(4+1)):'branchQeq4']; % Branch 3_4
Constraints = [Constraints, (Q(6) == Q(7) + qi(5+1)+ Qbat(5+1)):'branchQeq5']; % Branch 3_5
Constraints = [Constraints, (Q(7) == Q(117) + qi(6+1)+ Qbat(6+1)):'branchQeq6']; % Branch 5_6
Constraints = [Constraints, (Q(4) == Q(8) + qi(7+1)+ Qbat(7+1)):'branchQeq7']; % Branch 1_7
Constraints = [Constraints, (Q(8) == Q(9) + qi(8+1)+ Qbat(8+1) + Q(10)+ Q(11)):'branchQeq8']; % Branch 7_8
Constraints = [Constraints, (Q(9) == Q(12) + qi(9+1)+ Qbat(9+1)):'branchQeq9']; % Branch 8_9
Constraints = [Constraints, (Q(12) == Q(16) + qi(14+1)+ Qbat(14+1) + Q(17)):'branchQeq10']; % Branch 9_14
Constraints = [Constraints, (Q(16) == Q(118) + qi(10+1)+ Qbat(10+1)):'branchQeq11']; % Branch 14_10
Constraints = [Constraints, (Q(17) == Q(119) + qi(11+1)+ Qbat(11+1)):'branchQeq12']; % Branch 14_11
Constraints = [Constraints, (Q(10) == Q(120) + qi(12+1)+ Qbat(12+1)):'branchQeq13']; % Branch 8_12
Constraints = [Constraints, (Q(11) == Q(14) + qi(13+1)+ Qbat(13+1) + Q(13)+ Q(15)):'branchQeq14']; % Branch 8_13
Constraints = [Constraints, (Q(14) == Q(37) + qi(34+1)+ Qbat(34+1)):'branchQeq15']; % Branch 13_34
Constraints = [Constraints, (Q(37) == Q(18) + qi(15+1)+ Qbat(15+1) + Q(19)):'branchQeq16']; % Branch 34_15
Constraints = [Constraints, (Q(19) == Q(121) + qi(17+1)+ Qbat(17+1)):'branchQeq17']; % Branch 15_17
Constraints = [Constraints, (Q(18) == Q(20) + qi(16+1)+ Qbat(16+1)):'branchQeq18']; % Branch 15_16
Constraints = [Constraints, (Q(13) == Q(21) + qi(18+1)+ Qbat(18+1) + Q(22)+ Q(23)):'branchQeq19']; % Branch 13_18
Constraints = [Constraints, (Q(15) == Q(55) + qi(52+1)+ Qbat(52+1)):'branchQeq20']; % Branch 13_52
Constraints = [Constraints, (Q(20) == Q(98) + qi(18+1)+ Qbat(18+1) + Q(97)):'branchQeq21']; % Branch 16_95
Constraints = [Constraints, (Q(115)==0):'branchQeq115'; (Q(116) ==0):'branchQeq116'; (Q(117) ==0):'branchQeq117'; (Q(118) ==0):'branchQeq118'; (Q(119) ==0):'branchQeq119'; (Q(120) ==0):'branchQeq120'; (Q(121) ==0):'branchQeq121' ];

%% Zone 2: 
% Node 18 to 33;
% Branch data row number: 13, 21, 22, 24 to 36.
% Added interconnector: node18_35. Zone 1 covered interconnector: node13_18.

Constraints = [Constraints, (Q(21) == Q(24) + qi(19+1)+ Qbat(19+1)):'branchQeq22']; % Branch 18_19
Constraints = [Constraints, (Q(24) == Q(122) + qi(20+1)+ Qbat(20+1)):'branchQeq23']; % Branch 19_20
Constraints = [Constraints, (Q(22) == Q(25) + qi(21+1)+ Qbat(21+1) + Q(26)):'branchQeq24']; % Branch 18_21
Constraints = [Constraints, (Q(25) == Q(123) + qi(22+1)+ Qbat(22+1)):'branchQeq25']; % Branch 21_22
Constraints = [Constraints, (Q(26) == Q(27) + qi(23+1)+ Qbat(23+1) + Q(28)):'branchQeq26']; % Branch 21_23
Constraints = [Constraints, (Q(27) == Q(124) + qi(24+1)+ Qbat(24+1)):'branchQeq27']; % Branch 23_24
Constraints = [Constraints, (Q(28) == Q(29) + qi(25+1)+ Qbat(25+1) + Q(30)):'branchQeq28']; % Branch 23_25
Constraints = [Constraints, (Q(29) == Q(31) + qi(26+1)+ Qbat(26+1) + Q(32)):'branchQeq29']; % Branch 25_26
Constraints = [Constraints, (Q(31) == Q(33) + qi(27+1)+ Qbat(27+1)):'branchQeq30']; % Branch 26_27
Constraints = [Constraints, (Q(33) == Q(127) + qi(33+1)+ Qbat(33+1)):'branchQeq31']; % Branch 27_33
Constraints = [Constraints, (Q(32) == Q(36) + qi(31+1)+ Qbat(31+1)):'branchQeq32']; % Branch 26_31
Constraints = [Constraints, (Q(36) == Q(126) + qi(32+1)+ Qbat(32+1)):'branchQeq33']; % Branch 31_32
Constraints = [Constraints, (Q(30) == Q(34) + qi(28+1)+ Qbat(28+1)):'branchQeq34']; % Branch 25_28
Constraints = [Constraints, (Q(34) == Q(35) + qi(29+1)+ Qbat(29+1)):'branchQeq35']; % Branch 28_29
Constraints = [Constraints, (Q(35) == Q(125) + qi(30+1)+ Qbat(30+1)):'branchQeq36']; % Branch 29_30
Constraints = [Constraints, (Q(23) == Q(38) + qi(35+1)+ Qbat(35+1) + Q(39)):'branchQeq37']; % Branch 18_35
Constraints = [Constraints, (Q(122)==0):'branchQeq122'; (Q(123) ==0):'branchQeq123'; (Q(124) ==0):'branchQeq124'; (Q(125) ==0):'branchQeq125'; (Q(126) ==0):'branchQeq126'; (Q(127) ==0):'branchQeq127' ];

%% Zone 3: 
% Node 35 to 51;
% Branch data row number: 23, 38 to 53.
% Added interconnector: node51_108. Zone 2 covered interconnector: node18_35.

Constraints = [Constraints, (Q(38) == Q(40) + qi(36+1)+ Qbat(36+1) + Q(41)):'branchQeq38']; % Branch 35_36
Constraints = [Constraints, (Q(40) == Q(128) + qi(37+1)+ Qbat(37+1)):'branchQeq39']; % Branch 36_37
Constraints = [Constraints, (Q(41) == Q(42) + qi(38+1)+ Qbat(38+1)):'branchQeq40']; % Branch 36_38
Constraints = [Constraints, (Q(42) == Q(129) + qi(39+1)+ Qbat(39+1)):'branchQeq41']; % Branch 38_39
Constraints = [Constraints, (Q(39) == Q(43) + qi(40+1)+ Qbat(40+1) + Q(44)):'branchQeq42']; % Branch 35_40
Constraints = [Constraints, (Q(43) == Q(130) + qi(41+1)+ Qbat(41+1)):'branchQeq43']; % Branch 40_41
Constraints = [Constraints, (Q(44) == Q(45) + qi(42+1)+ Qbat(42+1) + Q(46)):'branchQeq44']; % Branch 40_42
Constraints = [Constraints, (Q(45) == Q(131) + qi(43+1)+ Qbat(43+1)):'branchQeq45']; % Branch 42_43
Constraints = [Constraints, (Q(46) == Q(47) + qi(44+1)+ Qbat(44+1) + Q(48)):'branchQeq46']; % Branch 42_44
Constraints = [Constraints, (Q(47) == Q(49) + qi(45+1)+ Qbat(45+1)):'branchQeq47']; % Branch 44_45
Constraints = [Constraints, (Q(49) == Q(132) + qi(46+1)+ Qbat(46+1)):'branchQeq48']; % Branch 45_46
Constraints = [Constraints, (Q(48) == Q(50) + qi(47+1)+ Qbat(47+1) + Q(51)):'branchQeq49']; % Branch 44_47
Constraints = [Constraints, (Q(50) == Q(133) + qi(48+1)+ Qbat(48+1)):'branchQeq50']; % Branch 47_48
Constraints = [Constraints, (Q(51) == Q(52) + qi(49+1)+ Qbat(49+1)):'branchQeq51']; % Branch 47_49
Constraints = [Constraints, (Q(52) == Q(53) + qi(50+1)+ Qbat(50+1)):'branchQeq52']; % Branch 49_50
Constraints = [Constraints, (Q(53) == Q(54) + qi(51+1)+ Qbat(51+1)):'branchQeq53']; % Branch 50_51
Constraints = [Constraints, (Q(54) == Q(107) + qi(108+1)+ Qbat(108+1) + Q(109)):'branchQPeq54']; % Branch 51_108
Constraints = [Constraints, (Q(128)==0):'branchQeq128'; (Q(129) ==0):'branchQeq129'; (Q(130) ==0):'branchQeq130'; (Q(131) ==0):'branchQeq131'; (Q(132) ==0):'branchQeq132'; (Q(133) ==0):'branchQeq133' ];

%% Zone 4: 
% Node 52 to 75, 97 to 100;
% Branch data row number: 15, 55 to 78, 99 to 101.
% Zone 1 covered interconnector: node13_52.

Constraints = [Constraints, (Q(55) == Q(56) + qi(53+1)+ Qbat(53+1)):'branchQeq55']; % Branch 52_53
Constraints = [Constraints, (Q(56) == Q(57) + qi(54+1)+ Qbat(54+1) + P(58)):'branchQeq56']; % Branch 53_54
Constraints = [Constraints, (Q(57) == Q(59) + qi(55+1)+ Qbat(55+1)):'branchQeq57']; % Branch 54_55
Constraints = [Constraints, (Q(59) == Q(134) + qi(56+1)+ Qbat(56+1)):'branchQeq58']; % Branch 55_56
Constraints = [Constraints, (Q(58) == Q(60) + qi(57+1)+ Qbat(57+1) + Q(61)):'branchQeq59']; % Branch 54_57
Constraints = [Constraints, (Q(60) == Q(62) + qi(58+1)+ Qbat(58+1)):'branchQeq60']; % Branch 57_58
Constraints = [Constraints, (Q(62) == Q(135) + qi(59+1)+ Qbat(59+1)):'branchQeq61']; % Branch 58_59
Constraints = [Constraints, (Q(61) == Q(63) + qi(60+1)+ Qbat(60+1) + Q(64)+ P(65)):'branchQeq62']; % Branch 57_60
Constraints = [Constraints, (Q(63) == Q(136) + qi(61+1)+ Qbat(61+1)):'branchQeq63']; % Branch 60_61
Constraints = [Constraints, (Q(64) == Q(66) + qi(62+1)+ Qbat(62+1)):'branchQeq64']; % Branch 60_62
Constraints = [Constraints, (Q(66) == Q(67) + qi(63+1)+ Qbat(63+1)):'branchQeq65']; % Branch 62_63
Constraints = [Constraints, (Q(67) == Q(68) + qi(64+1)+ Qbat(64+1)):'branchQeq66']; % Branch 63_64
Constraints = [Constraints, (Q(68) == Q(69) + qi(65+1)+ Qbat(65+1)):'branchQeq67']; % Branch 64_65
Constraints = [Constraints, (Q(69) == Q(137) + qi(66+1)+ Qbat(66+1)):'branchQeq68']; % Branch 65_66
Constraints = [Constraints, (Q(65) == Q(70) + qi(67+1)+ Qbat(67+1) + Q(71)+ Q(72)):'branchQeq69']; % Branch 60_67
Constraints = [Constraints, (Q(70) == Q(73) + qi(68+1)+ Qbat(68+1)):'branchQeq70']; % Branch 67_68
Constraints = [Constraints, (Q(73) == Q(74) + qi(69+1)+ Qbat(69+1)):'branchQeq71']; % Branch 68_69
Constraints = [Constraints, (Q(74) == Q(75) + qi(70+1)+ Qbat(70+1)):'branchQeq72']; % Branch 69_70
Constraints = [Constraints, (Q(75) == Q(138) + qi(71+1)+ Qbat(71+1)):'branchQeq73']; % Branch 70_71
Constraints = [Constraints, (Q(71) == Q(76) + qi(72+1)+ Qbat(72+1)):'branchQeq74']; % Branch 67_72
Constraints = [Constraints, (Q(76) == Q(77) + qi(73+1)+ Qbat(73+1)):'branchQeq75']; % Branch 72_73
Constraints = [Constraints, (Q(77) == Q(78) + qi(74+1)+ Qbat(74+1)):'branchQeq76']; % Branch 73_74
Constraints = [Constraints, (Q(78) == Q(139) + qi(75+1)+ Qbat(75+1)):'branchQeq77']; % Branch 74_75
Constraints = [Constraints, (Q(72) == Q(99) + qi(97+1)+ Qbat(97+1)):'branchQeq78']; % Branch 67_97
Constraints = [Constraints, (Q(99) == Q(100) + qi(98+1)+ Qbat(98+1)):'branchQeq79']; % Branch 97_98
Constraints = [Constraints, (Q(100) == Q(101) + qi(99+1)+ Qbat(99+1)):'branchQeq80']; % Branch 98_99
Constraints = [Constraints, (Q(101) == Q(140) + qi(99+1)+ Qbat(99+1)):'branchQeq81']; % Branch 99_100
Constraints = [Constraints, (Q(134)==0):'branchQeq134'; (Q(135) ==0):'branchQeq135'; (Q(136) ==0):'branchQeq136'; (Q(137) ==0):'branchQeq137'; (Q(138) ==0):'branchQeq138'; (Q(139) ==0):'branchQeq139'; (Q(140) ==0):'branchQeq140' ];

%% Zone 5: 
% Node 76 to 96;
% Branch data row number: 79 to 98, 20.
% Zone 1 covered interconnector: node16_95.

Constraints = [Constraints, (Q(98) == Q(148) + qi(96+1)+ Qbat(96+1)):'branchQeq82']; % Branch 95_96
Constraints = [Constraints, (Q(97) == Q(96) + qi(93+1)+ Qbat(93+1)+ Q(95)):'branchQeq83']; % Branch 95_93
Constraints = [Constraints, (Q(96) == Q(147) + qi(94+1)+ Qbat(94+1)):'branchQeq84']; % Branch 93_94
Constraints = [Constraints, (Q(95) == Q(94) + qi(91+1)+ Qbat(91+1)+ Q(93)):'branchQeq85']; % Branch 93_91
Constraints = [Constraints, (Q(94) == Q(146) + qi(92+1)+ Qbat(92+1)):'branchQeq86']; % Branch 91_92
Constraints = [Constraints, (Q(93) == Q(92) + qi(89+1)+ Qbat(89+1)+ Q(91)):'branchQeq87']; % Branch 91_89
Constraints = [Constraints, (Q(92) == Q(145) + qi(90+1)+ Qbat(90+1)):'branchQeq88']; % Branch 89_90
Constraints = [Constraints, (Q(91) == Q(90) + qi(87+1)+ Qbat(87+1)+ Q(89)):'branchQeq89']; % Branch 89_87
Constraints = [Constraints, (Q(90) == Q(144) + qi(88+1)+ Qbat(88+1)):'branchQeq90']; % Branch 87_88
Constraints = [Constraints, (Q(89) == Q(80) + qi(86+1)+ Qbat(86+1)):'branchQeq91']; % Branch 87_86
Constraints = [Constraints, (Q(80) == Q(79) + qi(76+1)+ Qbat(76+1)):'branchQeq92']; % Branch 86_76
Constraints = [Constraints, (Q(79) == Q(81) + qi(77+1)+ Qbat(77+1)):'branchQeq93']; % Branch 76_77
Constraints = [Constraints, (Q(81) == Q(82) + qi(78+1)+ Qbat(78+1) + Q(83)):'branchQeq94']; % Branch 77_78
Constraints = [Constraints, (Q(82) == Q(141) + qi(79+1)+ Qbat(79+1)):'branchQeq95']; % Branch 78_79
Constraints = [Constraints, (Q(83) == Q(84) + qi(80+1)+ Qbat(80+1)):'branchQeq96']; % Branch 78_80
Constraints = [Constraints, (Q(84) == Q(85) + qi(81+1)+ Qbat(81+1) + Q(86)):'branchQeq97']; % Branch 80_81
Constraints = [Constraints, (Q(85) == Q(87) + qi(82+1)+ Qbat(82+1)):'branchQeq98']; % Branch 81_82
Constraints = [Constraints, (Q(87) == Q(142) + qi(83+1)+ Qbat(83+1)):'branchQeq99']; % Branch 82_83
Constraints = [Constraints, (Q(86) == Q(88) + qi(84+1)+ Qbat(84+1)):'branchQeq100']; % Branch 81_84
Constraints = [Constraints, (Q(88) == Q(143) + qi(85+1)+ Qbat(85+1)):'branchQeq101']; % Branch 84_85
Constraints = [Constraints, (Q(141)==0):'branchQeq141'; (Q(142) ==0):'branchQeq142'; (Q(143) ==0):'branchQeq143'; (Q(144) ==0):'branchQeq144'; (Q(145) ==0):'branchQeq145'; (Q(146) ==0):'branchQeq146'; (Q(147) ==0):'branchQeq147'; (Q(148) ==0):'branchQeq148' ];

%% Zone 6: 
% Node 101 to 114;
% Branch data row number: 54, 102 to 114.
% Zone 3 covered interconnector: node51_108

Constraints = [Constraints, (Q(109) == Q(110) + qi(109+1)+ Qbat(109+1)):'branchQeq102']; % Branch 108_109
Constraints = [Constraints, (Q(110) == Q(111) + qi(110+1)+ Qbat(110+1) + Q(112)):'branchQeq103']; % Branch 109_110
Constraints = [Constraints, (Q(111) == Q(151) + qi(111+1)+ Qbat(111+1)):'branchQeq104']; % Branch 110_111
Constraints = [Constraints, (Q(112) == Q(113) + qi(112+1)+ Qbat(112+1)):'branchQeq105']; % Branch 110_112
Constraints = [Constraints, (Q(113) == Q(114) + qi(113+1)+ Qbat(113+1)):'branchQeq106']; % Branch 112_113
Constraints = [Constraints, (Q(114) == Q(152) + qi(114+1)+ Qbat(114+1)):'branchQeq107']; % Branch 113_114
Constraints = [Constraints, (Q(107) == Q(106) + qi(105+1)+ Qbat(105+1) + Q(103)):'branchQeq108']; % Branch 108_105
Constraints = [Constraints, (Q(106) == Q(108) + qi(106+1)+ Qbat(106+1)):'branchQeq109']; % Branch 105_106
Constraints = [Constraints, (Q(108) == Q(150) + qi(107+1)+ Qbat(107+1)):'branchQeq110']; % Branch 106_107
Constraints = [Constraints, (Q(103) == Q(102) + qi(101+1)+ Qbat(101+1)):'branchQeq111']; % Branch 105_101
Constraints = [Constraints, (Q(102) == Q(104) + qi(102+1)+ Qbat(102+1)):'branchQeq112']; % Branch 101_102
Constraints = [Constraints, (Q(104) == Q(105) + qi(103+1)+ Qbat(103+1)):'branchQeq113']; % Branch 102_103
Constraints = [Constraints, (Q(105) == Q(149) + qi(104+1)+ Qbat(104+1)):'branchQeq114']; % Branch 103_104
Constraints = [Constraints, (Q(149)==0):'branchQeq149'; (Q(150) ==0):'branchQeq150'; (Q(151) ==0):'branchQeq151'; (Q(152) ==0):'branchQeq152' ];





