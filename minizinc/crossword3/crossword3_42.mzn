%
% Crossword problem '23.03, 23 x 23' in MiniZinc.
%
% (generated Sat Sep 24 08:54:24 2011 by `make_crossword.pl 42 1` ).
%
% This crossword model was 
%
% This is problem '23.03, 23 x 23' from the Gecode crossword example:
%   http://www.gecode.org/doc-latest/reference/crossword_8cpp_source.html
% 
% 
% This MiniZinc model was created by Hakan Kjellerstrand, hakank@bonetmail.com
% See also my MiniZinc page: http://www.hakank.org/minizinc
%

%
% Gecode problem to solve (42): 23.03, 23 x 23
% 
%   _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ * _ _ _ _ _
%   _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ * _ _ _ _ _
%   _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ * _ _ _ _
%   _ _ _ * * _ _ _ * * * _ _ _ _ _ _ _ * _ _ _ _
%   * * * _ _ _ _ _ _ _ * _ _ _ _ _ * * _ _ _ _ _
%   _ _ _ _ _ _ * _ _ _ _ * _ _ _ * _ _ _ _ * * *
%   _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _ * _ _ _
%   _ _ _ _ * _ _ _ _ _ _ _ _ * _ _ _ _ * _ _ _ _
%   _ _ _ _ _ _ _ * * _ _ _ _ _ _ _ _ _ * _ _ _ _
%   _ _ _ * _ _ _ _ _ * * _ _ _ _ _ * _ _ _ _ _ _
%   * * _ _ _ * _ _ _ _ _ * _ _ _ _ _ * _ _ _ * *
%   _ _ _ _ _ _ * _ _ _ _ _ * * _ _ _ _ _ * _ _ _
%   _ _ _ _ * _ _ _ _ _ _ _ _ _ * * _ _ _ _ _ _ _
%   _ _ _ _ * _ _ _ _ * _ _ _ _ _ _ _ _ * _ _ _ _
%   _ _ _ * _ _ _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _
%   * * * _ _ _ _ * _ _ _ * _ _ _ _ * _ _ _ _ _ _
%   _ _ _ _ _ * * _ _ _ _ _ * _ _ _ _ _ _ _ * * *
%   _ _ _ _ * _ _ _ _ _ _ _ * * * _ _ _ * * _ _ _
%   _ _ _ _ * _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _
%   _ _ _ _ _ * _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _
%   _ _ _ _ _ * _ _ _ _ * _ _ _ _ _ * _ _ _ _ _ _

include "crossword3.mzn"; 

problem_name = "23.03, 23 x 23";


% number of letters to assign
N = 440;


% distinct words
require_distinct_words = 1;

constraint
  table([L[1], L[2], L[3], L[4], L[5], L[6]], words6) 
/\ table([L[7], L[8], L[9], L[10], L[11]], words5) 
/\ table([L[12], L[13], L[14], L[15]], words4) 
/\ table([L[16], L[17], L[18], L[19], L[20]], words5) 
/\ table([L[21], L[22], L[23], L[24], L[25], L[26]], words6) 
/\ table([L[27], L[28], L[29], L[30], L[31]], words5) 
/\ table([L[32], L[33], L[34], L[35]], words4) 
/\ table([L[36], L[37], L[38], L[39], L[40]], words5) 
/\ table([L[41], L[42], L[43], L[44], L[45], L[46], L[47], L[48], L[49], L[50], L[51], L[52]], words12) 
/\ table([L[53], L[54], L[55], L[56], L[57], L[58], L[59], L[60], L[61], L[62]], words10) 
/\ table([L[63], L[64], L[65], L[66], L[67], L[68], L[69]], words7) 
/\ table([L[70], L[71], L[72], L[73], L[74]], words5) 
/\ table([L[75], L[76], L[77], L[78]], words4) 
/\ table([L[79], L[80], L[81], L[82]], words4) 
/\ table([L[83], L[84], L[85]], words3) 
/\ table([L[86], L[87], L[88]], words3) 
/\ table([L[89], L[90], L[91], L[92], L[93], L[94], L[95]], words7) 
/\ table([L[96], L[97], L[98], L[99]], words4) 
/\ table([L[100], L[101], L[102], L[103], L[104], L[105], L[106]], words7) 
/\ table([L[107], L[108], L[109], L[110], L[111]], words5) 
/\ table([L[112], L[113], L[114], L[115], L[116]], words5) 
/\ table([L[117], L[118], L[119], L[120], L[121], L[122]], words6) 
/\ table([L[123], L[124], L[125], L[126]], words4) 
/\ table([L[127], L[128], L[129]], words3) 
/\ table([L[130], L[131], L[132], L[133]], words4) 
/\ table([L[134], L[135], L[136], L[137], L[138], L[139]], words6) 
/\ table([L[140], L[141], L[142], L[143], L[144]], words5) 
/\ table([L[145], L[146], L[147], L[148], L[149], L[150]], words6) 
/\ table([L[151], L[152], L[153]], words3) 
/\ table([L[154], L[155], L[156], L[157]], words4) 
/\ table([L[158], L[159], L[160], L[161], L[162], L[163], L[164], L[165]], words8) 
/\ table([L[166], L[167], L[168], L[169]], words4) 
/\ table([L[170], L[171], L[172], L[173]], words4) 
/\ table([L[174], L[175], L[176], L[177], L[178], L[179], L[180]], words7) 
/\ table([L[181], L[182], L[183], L[184], L[185], L[186], L[187], L[188], L[189]], words9) 
/\ table([L[190], L[191], L[192], L[193]], words4) 
/\ table([L[194], L[195], L[196]], words3) 
/\ table([L[197], L[198], L[199], L[200], L[201]], words5) 
/\ table([L[202], L[203], L[204], L[205], L[206]], words5) 
/\ table([L[207], L[208], L[209], L[210], L[211], L[212]], words6) 
/\ table([L[213], L[214], L[215]], words3) 
/\ table([L[216], L[217], L[218], L[219], L[220]], words5) 
/\ table([L[221], L[222], L[223], L[224], L[225]], words5) 
/\ table([L[226], L[227], L[228]], words3) 
/\ table([L[229], L[230], L[231], L[232], L[233], L[234]], words6) 
/\ table([L[235], L[236], L[237], L[238], L[239]], words5) 
/\ table([L[240], L[241], L[242], L[243], L[244]], words5) 
/\ table([L[245], L[246], L[247]], words3) 
/\ table([L[248], L[249], L[250], L[251]], words4) 
/\ table([L[252], L[253], L[254], L[255], L[256], L[257], L[258], L[259], L[260]], words9) 
/\ table([L[261], L[262], L[263], L[264], L[265], L[266], L[267]], words7) 
/\ table([L[268], L[269], L[270], L[271]], words4) 
/\ table([L[272], L[273], L[274], L[275]], words4) 
/\ table([L[276], L[277], L[278], L[279], L[280], L[281], L[282], L[283]], words8) 
/\ table([L[284], L[285], L[286], L[287]], words4) 
/\ table([L[288], L[289], L[290]], words3) 
/\ table([L[291], L[292], L[293], L[294], L[295], L[296]], words6) 
/\ table([L[297], L[298], L[299], L[300], L[301]], words5) 
/\ table([L[302], L[303], L[304], L[305], L[306], L[307]], words6) 
/\ table([L[308], L[309], L[310], L[311]], words4) 
/\ table([L[312], L[313], L[314]], words3) 
/\ table([L[315], L[316], L[317], L[318]], words4) 
/\ table([L[319], L[320], L[321], L[322], L[323], L[324]], words6) 
/\ table([L[325], L[326], L[327], L[328], L[329]], words5) 
/\ table([L[330], L[331], L[332], L[333], L[334]], words5) 
/\ table([L[335], L[336], L[337], L[338], L[339], L[340], L[341]], words7) 
/\ table([L[342], L[343], L[344], L[345]], words4) 
/\ table([L[346], L[347], L[348], L[349], L[350], L[351], L[352]], words7) 
/\ table([L[353], L[354], L[355]], words3) 
/\ table([L[356], L[357], L[358]], words3) 
/\ table([L[359], L[360], L[361], L[362]], words4) 
/\ table([L[363], L[364], L[365], L[366]], words4) 
/\ table([L[367], L[368], L[369], L[370], L[371]], words5) 
/\ table([L[372], L[373], L[374], L[375], L[376], L[377], L[378]], words7) 
/\ table([L[379], L[380], L[381], L[382], L[383], L[384], L[385], L[386], L[387], L[388]], words10) 
/\ table([L[389], L[390], L[391], L[392], L[393], L[394], L[395], L[396], L[397], L[398], L[399], L[400]], words12) 
/\ table([L[401], L[402], L[403], L[404], L[405]], words5) 
/\ table([L[406], L[407], L[408], L[409]], words4) 
/\ table([L[410], L[411], L[412], L[413], L[414]], words5) 
/\ table([L[415], L[416], L[417], L[418], L[419], L[420]], words6) 
/\ table([L[421], L[422], L[423], L[424], L[425]], words5) 
/\ table([L[426], L[427], L[428], L[429]], words4) 
/\ table([L[430], L[431], L[432], L[433], L[434]], words5) 
/\ table([L[435], L[436], L[437], L[438], L[439], L[440]], words6) 
/\ table([L[1], L[21], L[41], L[63], L[83]], words5) 
/\ table([L[117], L[134], L[154], L[174], L[194]], words5) 
/\ table([L[229], L[248], L[268], L[288]], words4) 
/\ table([L[325], L[342], L[359], L[379], L[401], L[421]], words6) 
/\ table([L[2], L[22], L[42], L[64], L[84]], words5) 
/\ table([L[118], L[135], L[155], L[175], L[195]], words5) 
/\ table([L[230], L[249], L[269], L[289]], words4) 
/\ table([L[326], L[343], L[360], L[380], L[402], L[422]], words6) 
/\ table([L[3], L[23], L[43], L[65], L[85]], words5) 
/\ table([L[119], L[136], L[156], L[176], L[196], L[213], L[231], L[250], L[270], L[290]], words10) 
/\ table([L[327], L[344], L[361], L[381], L[403], L[423]], words6) 
/\ table([L[4], L[24], L[44], L[66]], words4) 
/\ table([L[100], L[120], L[137], L[157], L[177]], words5) 
/\ table([L[214], L[232], L[251], L[271]], words4) 
/\ table([L[308], L[328], L[345], L[362], L[382], L[404], L[424]], words7) 
/\ table([L[5], L[25], L[45], L[67]], words4) 
/\ table([L[101], L[121], L[138]], words3) 
/\ table([L[178], L[197], L[215], L[233]], words4) 
/\ table([L[291], L[309], L[329]], words3) 
/\ table([L[383], L[405], L[425]], words3) 
/\ table([L[6], L[26], L[46], L[68], L[86], L[102], L[122], L[139], L[158], L[179], L[198]], words11) 
/\ table([L[234], L[252], L[272], L[292], L[310]], words5) 
/\ table([L[346], L[363], L[384]], words3) 
/\ table([L[47], L[69], L[87], L[103]], words4) 
/\ table([L[159], L[180], L[199], L[216]], words4) 
/\ table([L[253], L[273], L[293], L[311]], words4) 
/\ table([L[347], L[364], L[385], L[406], L[426]], words5) 
/\ table([L[7], L[27], L[48]], words3) 
/\ table([L[88], L[104], L[123], L[140], L[160]], words5) 
/\ table([L[200], L[217], L[235], L[254], L[274], L[294]], words6) 
/\ table([L[330], L[348], L[365], L[386], L[407], L[427]], words6) 
/\ table([L[8], L[28], L[49], L[70]], words4) 
/\ table([L[105], L[124], L[141], L[161]], words4) 
/\ table([L[201], L[218], L[236], L[255], L[275], L[295], L[312], L[331], L[349], L[366], L[387], L[408], L[428]], words13) 
/\ table([L[9], L[29], L[50], L[71]], words4) 
/\ table([L[106], L[125], L[142], L[162], L[181]], words5) 
/\ table([L[219], L[237], L[256]], words3) 
/\ table([L[296], L[313], L[332], L[350]], words4) 
/\ table([L[388], L[409], L[429]], words3) 
/\ table([L[10], L[30], L[51], L[72]], words4) 
/\ table([L[126], L[143], L[163], L[182]], words4) 
/\ table([L[220], L[238], L[257], L[276]], words4) 
/\ table([L[314], L[333], L[351], L[367]], words4) 
/\ table([L[11], L[31], L[52], L[73], L[89], L[107]], words6) 
/\ table([L[144], L[164], L[183], L[202]], words4) 
/\ table([L[239], L[258], L[277], L[297]], words4) 
/\ table([L[334], L[352], L[368], L[389], L[410], L[430]], words6) 
/\ table([L[74], L[90], L[108], L[127]], words4) 
/\ table([L[165], L[184], L[203], L[221]], words4) 
/\ table([L[259], L[278], L[298], L[315]], words4) 
/\ table([L[369], L[390], L[411], L[431]], words4) 
/\ table([L[12], L[32], L[53]], words3) 
/\ table([L[91], L[109], L[128], L[145]], words4) 
/\ table([L[185], L[204], L[222]], words3) 
/\ table([L[260], L[279], L[299], L[316], L[335]], words5) 
/\ table([L[370], L[391], L[412], L[432]], words4) 
/\ table([L[13], L[33], L[54], L[75], L[92], L[110], L[129], L[146], L[166], L[186], L[205], L[223], L[240]], words13) 
/\ table([L[280], L[300], L[317], L[336]], words4) 
/\ table([L[371], L[392], L[413], L[433]], words4) 
/\ table([L[14], L[34], L[55], L[76], L[93], L[111]], words6) 
/\ table([L[147], L[167], L[187], L[206], L[224], L[241]], words6) 
/\ table([L[281], L[301], L[318], L[337], L[353]], words5) 
/\ table([L[393], L[414], L[434]], words3) 
/\ table([L[15], L[35], L[56], L[77], L[94]], words5) 
/\ table([L[130], L[148], L[168], L[188]], words4) 
/\ table([L[225], L[242], L[261], L[282]], words4) 
/\ table([L[338], L[354], L[372], L[394]], words4) 
/\ table([L[57], L[78], L[95]], words3) 
/\ table([L[131], L[149], L[169], L[189], L[207]], words5) 
/\ table([L[243], L[262], L[283], L[302], L[319], L[339], L[355], L[373], L[395], L[415], L[435]], words11) 
/\ table([L[16], L[36], L[58]], words3) 
/\ table([L[112], L[132], L[150]], words3) 
/\ table([L[208], L[226], L[244], L[263]], words4) 
/\ table([L[303], L[320], L[340]], words3) 
/\ table([L[374], L[396], L[416], L[436]], words4) 
/\ table([L[17], L[37], L[59], L[79], L[96], L[113], L[133]], words7) 
/\ table([L[170], L[190], L[209], L[227]], words4) 
/\ table([L[264], L[284], L[304], L[321], L[341]], words5) 
/\ table([L[375], L[397], L[417], L[437]], words4) 
/\ table([L[18], L[38], L[60], L[80], L[97], L[114]], words6) 
/\ table([L[151], L[171], L[191], L[210], L[228], L[245], L[265], L[285], L[305], L[322]], words10) 
/\ table([L[356], L[376], L[398], L[418], L[438]], words5) 
/\ table([L[19], L[39], L[61], L[81], L[98], L[115]], words6) 
/\ table([L[152], L[172], L[192], L[211]], words4) 
/\ table([L[246], L[266], L[286], L[306], L[323]], words5) 
/\ table([L[357], L[377], L[399], L[419], L[439]], words5) 
/\ table([L[20], L[40], L[62], L[82], L[99], L[116]], words6) 
/\ table([L[153], L[173], L[193], L[212]], words4) 
/\ table([L[247], L[267], L[287], L[307], L[324]], words5) 
/\ table([L[358], L[378], L[400], L[420], L[440]], words5)
;

% The segments (words)
% (0 for fill outs)
int: max_length = 23;
int: num_segments = 174;
array[1..num_segments, 1..max_length] of int: segments = array2d(1..num_segments, 1..max_length, 
[
1,2,3,4,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
7,8,9,10,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
12,13,14,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
16,17,18,19,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
21,22,23,24,25,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
27,28,29,30,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
32,33,34,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
36,37,38,39,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
41,42,43,44,45,46,47,48,49,50,51,52,0,0,0,0,0,0,0,0,0,0,0,
53,54,55,56,57,58,59,60,61,62,0,0,0,0,0,0,0,0,0,0,0,0,0,
63,64,65,66,67,68,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
70,71,72,73,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
75,76,77,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
79,80,81,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
83,84,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
86,87,88,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
89,90,91,92,93,94,95,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
96,97,98,99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
100,101,102,103,104,105,106,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
107,108,109,110,111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
112,113,114,115,116,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
117,118,119,120,121,122,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
123,124,125,126,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
127,128,129,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
130,131,132,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
134,135,136,137,138,139,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
140,141,142,143,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
145,146,147,148,149,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
151,152,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
154,155,156,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
158,159,160,161,162,163,164,165,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
166,167,168,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
170,171,172,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
174,175,176,177,178,179,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
181,182,183,184,185,186,187,188,189,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
190,191,192,193,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
194,195,196,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
197,198,199,200,201,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
202,203,204,205,206,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
207,208,209,210,211,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
213,214,215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
216,217,218,219,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
221,222,223,224,225,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
226,227,228,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
229,230,231,232,233,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
235,236,237,238,239,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
240,241,242,243,244,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
245,246,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
248,249,250,251,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
252,253,254,255,256,257,258,259,260,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
261,262,263,264,265,266,267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
268,269,270,271,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
272,273,274,275,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
276,277,278,279,280,281,282,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
284,285,286,287,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
288,289,290,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
291,292,293,294,295,296,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
297,298,299,300,301,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
302,303,304,305,306,307,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
308,309,310,311,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
312,313,314,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
315,316,317,318,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
319,320,321,322,323,324,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
325,326,327,328,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
330,331,332,333,334,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
335,336,337,338,339,340,341,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
342,343,344,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
346,347,348,349,350,351,352,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
353,354,355,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
356,357,358,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
359,360,361,362,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
363,364,365,366,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
367,368,369,370,371,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
372,373,374,375,376,377,378,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
379,380,381,382,383,384,385,386,387,388,0,0,0,0,0,0,0,0,0,0,0,0,0,
389,390,391,392,393,394,395,396,397,398,399,400,0,0,0,0,0,0,0,0,0,0,0,
401,402,403,404,405,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
406,407,408,409,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
410,411,412,413,414,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
415,416,417,418,419,420,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
421,422,423,424,425,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
426,427,428,429,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
430,431,432,433,434,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
435,436,437,438,439,440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
1,21,41,63,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
117,134,154,174,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
229,248,268,288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
325,342,359,379,401,421,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,22,42,64,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
118,135,155,175,195,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
230,249,269,289,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
326,343,360,380,402,422,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,23,43,65,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
119,136,156,176,196,213,231,250,270,290,0,0,0,0,0,0,0,0,0,0,0,0,0,
327,344,361,381,403,423,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
4,24,44,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
100,120,137,157,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
214,232,251,271,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
308,328,345,362,382,404,424,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
5,25,45,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
101,121,138,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
178,197,215,233,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
291,309,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
383,405,425,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
6,26,46,68,86,102,122,139,158,179,198,0,0,0,0,0,0,0,0,0,0,0,0,
234,252,272,292,310,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
346,363,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
47,69,87,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
159,180,199,216,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
253,273,293,311,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
347,364,385,406,426,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
7,27,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
88,104,123,140,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
200,217,235,254,274,294,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
330,348,365,386,407,427,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
8,28,49,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
105,124,141,161,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
201,218,236,255,275,295,312,331,349,366,387,408,428,0,0,0,0,0,0,0,0,0,0,
9,29,50,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
106,125,142,162,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
219,237,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
296,313,332,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
388,409,429,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
10,30,51,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
126,143,163,182,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
220,238,257,276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
314,333,351,367,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
11,31,52,73,89,107,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
144,164,183,202,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
239,258,277,297,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
334,352,368,389,410,430,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
74,90,108,127,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
165,184,203,221,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
259,278,298,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
369,390,411,431,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
12,32,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
91,109,128,145,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
185,204,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
260,279,299,316,335,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
370,391,412,432,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
13,33,54,75,92,110,129,146,166,186,205,223,240,0,0,0,0,0,0,0,0,0,0,
280,300,317,336,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
371,392,413,433,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
14,34,55,76,93,111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
147,167,187,206,224,241,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
281,301,318,337,353,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
393,414,434,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
15,35,56,77,94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
130,148,168,188,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
225,242,261,282,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
338,354,372,394,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
57,78,95,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
131,149,169,189,207,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
243,262,283,302,319,339,355,373,395,415,435,0,0,0,0,0,0,0,0,0,0,0,0,
16,36,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
112,132,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
208,226,244,263,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
303,320,340,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
374,396,416,436,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
17,37,59,79,96,113,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
170,190,209,227,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
264,284,304,321,341,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
375,397,417,437,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
18,38,60,80,97,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
151,171,191,210,228,245,265,285,305,322,0,0,0,0,0,0,0,0,0,0,0,0,0,
356,376,398,418,438,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
19,39,61,81,98,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
152,172,192,211,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
246,266,286,306,323,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
357,377,399,419,439,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
20,40,62,82,99,116,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
153,173,193,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
247,267,287,307,324,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
358,378,400,420,440,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,

]);

% Problem where each cell is assigned a unique index.
% (0 means blocked cell)
int: rows = 23;
int: cols = 23;
array[1..rows, 1..cols] of int: problem = array2d(1..rows, 1..cols,
[
1, 2, 3, 4, 5, 6, 0, 7, 8, 9, 10, 11, 0, 12, 13, 14, 15, 0, 16, 17, 18, 19, 20, 
21, 22, 23, 24, 25, 26, 0, 27, 28, 29, 30, 31, 0, 32, 33, 34, 35, 0, 36, 37, 38, 39, 40, 
41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 0, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 
63, 64, 65, 66, 67, 68, 69, 0, 70, 71, 72, 73, 74, 0, 75, 76, 77, 78, 0, 79, 80, 81, 82, 
83, 84, 85, 0, 0, 86, 87, 88, 0, 0, 0, 89, 90, 91, 92, 93, 94, 95, 0, 96, 97, 98, 99, 
0, 0, 0, 100, 101, 102, 103, 104, 105, 106, 0, 107, 108, 109, 110, 111, 0, 0, 112, 113, 114, 115, 116, 
117, 118, 119, 120, 121, 122, 0, 123, 124, 125, 126, 0, 127, 128, 129, 0, 130, 131, 132, 133, 0, 0, 0, 
134, 135, 136, 137, 138, 139, 0, 140, 141, 142, 143, 144, 0, 145, 146, 147, 148, 149, 150, 0, 151, 152, 153, 
154, 155, 156, 157, 0, 158, 159, 160, 161, 162, 163, 164, 165, 0, 166, 167, 168, 169, 0, 170, 171, 172, 173, 
174, 175, 176, 177, 178, 179, 180, 0, 0, 181, 182, 183, 184, 185, 186, 187, 188, 189, 0, 190, 191, 192, 193, 
194, 195, 196, 0, 197, 198, 199, 200, 201, 0, 0, 202, 203, 204, 205, 206, 0, 207, 208, 209, 210, 211, 212, 
0, 0, 213, 214, 215, 0, 216, 217, 218, 219, 220, 0, 221, 222, 223, 224, 225, 0, 226, 227, 228, 0, 0, 
229, 230, 231, 232, 233, 234, 0, 235, 236, 237, 238, 239, 0, 0, 240, 241, 242, 243, 244, 0, 245, 246, 247, 
248, 249, 250, 251, 0, 252, 253, 254, 255, 256, 257, 258, 259, 260, 0, 0, 261, 262, 263, 264, 265, 266, 267, 
268, 269, 270, 271, 0, 272, 273, 274, 275, 0, 276, 277, 278, 279, 280, 281, 282, 283, 0, 284, 285, 286, 287, 
288, 289, 290, 0, 291, 292, 293, 294, 295, 296, 0, 297, 298, 299, 300, 301, 0, 302, 303, 304, 305, 306, 307, 
0, 0, 0, 308, 309, 310, 311, 0, 312, 313, 314, 0, 315, 316, 317, 318, 0, 319, 320, 321, 322, 323, 324, 
325, 326, 327, 328, 329, 0, 0, 330, 331, 332, 333, 334, 0, 335, 336, 337, 338, 339, 340, 341, 0, 0, 0, 
342, 343, 344, 345, 0, 346, 347, 348, 349, 350, 351, 352, 0, 0, 0, 353, 354, 355, 0, 0, 356, 357, 358, 
359, 360, 361, 362, 0, 363, 364, 365, 366, 0, 367, 368, 369, 370, 371, 0, 372, 373, 374, 375, 376, 377, 378, 
379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 0, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 
401, 402, 403, 404, 405, 0, 406, 407, 408, 409, 0, 410, 411, 412, 413, 414, 0, 415, 416, 417, 418, 419, 420, 
421, 422, 423, 424, 425, 0, 426, 427, 428, 429, 0, 430, 431, 432, 433, 434, 0, 435, 436, 437, 438, 439, 440, 

]);


