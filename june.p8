pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
-- new structure

#include thing.lua

-- heart and curtains
	--[[#include the_friend_library/tiny_ecs.lua
	
	#include play.lua
	
	#include components.lua
	#include systems.lua
	
	#include june_string.lua
	
	#include mouse_woman.lua
	
	#include heart.lua
	
	#include heart_string.lua
	
	#include particles.lua
	
	#include curtains.lua
	
	#include helpfuls.lua]]
__gfx__
0000f000000c000000000000000000000f0000c000000f0000c00000000060000000000800000000000800005000000000000000000000000000000000000000
00007f0f00c70000000000000000000007ffcc70000007fffc700000000060000000000800000000000800005000000000000000000000000000000000000000
00007ffffcc7000000000000000000000fdcc2c00000ffffccc00000000006000000000080000000000800005000000000500000000000500000000000000000
0000ffffccccc00000000000000000005f7117c00005ffdcc2cc0000000006000000000080000000000800005000000000055000000055000000000000000000
0005ffdcc2cc00000000000000000000f28aa800000f2671176c0000000006000000000008000000000800005500000000000888888800000000000000000000
000ff67cc76cc0000000000000000000f776c770000f227117000000000006000000000008000000000800005500000000008005250080000000000000000000
000ff771177c0000000000000000000007766770000f228aa8000000000006600000000000800000008800005500000000080012821008000000000500000000
00ff2771177cc000000000000000000000700700000f27777770000000000066000000c000800000008000005500000000080012821008000000000500000000
000f227777dc0000000000000000000000000000000f7276c70700000000006600000cc000080000008000005080000000008005250080000000000500000000
000f288aa8800000000000000000000000000000000f727667070000000000660000ccc000080000008000005080000000000888888800000000000500000000
00ff227787000000000000000000000000000000000f707cc70700000ff00066000007c000008000088000000880000000008000800080000000005000000000
000f277cc8700000000000000000000000000000000070777707000000fff066000007c000000800080000000808000000080000800008000000005000000000
000f777cc7870000000000000000000000000000000000700700000000f77066666000c000000080e80000000808000000000000000000000000005000000000
00ff7276c7080000000000000000000000000000000000700700000000f70066ff6000c000000008e00000000808000000000000000000000000050000000000
000f727667078000000000000000000000000000000000700700000000ff006f0f0800000000000e800000080800800000000000000000000000050000000000
000f707cc7070800000000000000000000000000000000700700000000000060802020000000008e080000800800800000000000000000000000550000000000
0000707cc7070800000000000000000000000ee0e8880000000000000000006202f2666000000880008888000080080000000000000000000000500000000000
0000707cc70700800000000000000000000e888080080000000000000000006f2ff7776600008800550000000080080000000000000000000005500000000000
0000007cc700000800000000000000000008000e00e80000000000000000006fffff777766666665555000000080008000000000000000000080500000000000
0000007cc700000000000000000000000008000000080000000000000000006ff77f7f7777777777550000000080000800000000000000000808000000000000
0000007cc7000000000000000000000000880880880e80000000000080000066f77ffff777f77f77760000000008000080000000000000088008000000000000
0000007777000000000000000000000008e00000000080000000000080000066777ff7f7f888887f760000000008000008800000000008800008000000000000
0000007777000000000000000000000008e00000008880000000000008000006777f77ff88788787660000000000800000088888888880000080000000000000
000000777700000000000000000000000088800c000000000000000008000006777f777887777778600000000000800000000000000000000080000000000000
00000070070000000000000000000000000000c0c000000000000000008000006666777677776666660000000000080000000000000000000800000000000000
0000007007000000000000000000000000000c000c00000000000000000800000066666666666000066000000000008000000000000000008000000000000000
000000700700000000000000000000000000c00000c0000000000000000088000000000ee0000000006000000000000800000000000000080000000000000000
00000070070000000000000000000000000c0000000c000000000000000000880000008800000000006600000000000088000000000088800000000000000000
0000007007000000000000000000000000c00000000c000000000000000000008e00088000000000006600000000000000888888888800000000000000000000
0000007007000000000000000000000000ccccccccc00000000000000000000000e8880000000000666000000000000000000000000000000000000000000000
0000007007000000000000000000000000000c000c00000000000000000000008888e00000000006600000000000000000000000000000000000000000000000
0000007007000000000000000000000000000c000c000000000000000000088880000e8000000066000000000000000000000000000000000000000000000000
00e88e00000000000000000000000000005225000000000000000009000000000000000000000000000000000000000000000000000000000000000000000000
0e8888e00000000000eeee000000000005222250005555000000009a900000000000000000000000000000000000000000000000000000000000000000000000
e8888880000000000e8888e00000000052222d2005222d50000009aa900000000000000000000000000000000000000000000000000000000000000000000000
8ede88800000000008ede88e00000000221e1220021e1225000009afa90000003ba3000000000000000000000000000000000000000000000000000000000000
8e1e88e00000000008e1e88e00000000221112500211122500000044490000003ba3000000000000000000000000000000000000000000000000000000000000
88888800000000000888888000000000222d22000222d2200000000c000000003ba3000000000000000000000000000000000000000000000000000000000000
888888000000000008888880000000002d2d220002dd2d200000000f000000003ba3000000000000000000000000000000000000000000000000000000000000
88888800000000000e8888800000000022d2d200052222d00000000c0000000030a3000000000000000000000000000000000000000000000000000000000000
e88888000000000000e8888e0000000052222d0000522d250000000f700000000000000000000000000000000000000000000000000000000000000000000000
088888e000000000000ee888000000000222d2500005522d0000007c770000000000000000000000000000000000000000000000000000000000000000000000
00888880000000000000088800000000002222d0000002d200000077770000000000000000000000000000000000000000000000000000000000000000000000
000888800000000000000e880000000000022d200000052200000077770000000000cf0000000000000000000000000000000000000000000000000000000000
0000888000000000000000e800000000000022200000005200000070770000000000f00000000000000000000000000000000000000000000000000000000000
00000e8e000000000000000e000000000000052500000005000000700700000000fcc00000000000000000000000000000000000000000000000000000000000
000000e80000000000000000000000000000005200000000000000777700000000cf000000000000000000000000000000000000000000000000000000000000
0000000e0000000000000000000000000000000500000000000000777700000000c0000000000000000000000000000000000000000000000000000000000000
00000000002ee50000000000000ee000000000000000000000000777070000000000000000000000000000000000000000000000000000000000000000000000
00000000078887500000000007e88700000000000000000000000707070000000000000000000000000000000000000000000000000000000000000000000000
000000000e7887e500000000027887e0000000000000000000000770777000000000000000000000000000000000000000000000000000000000000000000000
00000000887777850000000008777780000000000000000000000777777000000000000000000000000000000000000000000000000000000000000000000000
0000000887e277770000000087227777000000000000000000000777707000000000000000000000000000000000000000000000000000000000000000000000
00000008878877220000000087887720000000000000000000000777707000000000000000000000000000000000000000000000000000000000000000000000
000000088e7772820000000082777280000000000000000000007777077700000000000000000000000000000000000000000000000000000000000000000000
0000000e88e2778200000000e8227780000000000000000000007077777700000000000000000000000000000000000000000000000000000000000000000000
0000000e8887e2700000000008872270000000000000000000007700777770000000000000000000000000000000000000000000000000000000000000000000
00000000278e77500000000007827700000000000000000000007777777770000000000000000000000000000000000000000000000000000000000000000000
000000007e7855000000000072782000000000000000000000077077707707000000000000000000000000000000000000000000000000000000000000000000
00000000e7e8e00000000000072e0000000000000000000000077707707707000000000000000000000000000000000000000000000000000000000000000000
000000005e8e00000000000002e00000000000000000000000077777770777700000000000000000000000000000000000000000000000000000000000000000
0000000008e00000000000000e000000000000000000000000770777770077700000000000000000000000000000000000000000000000000000000000000000
00000000080000000000000000000000000000000000000000770777777777770000000000000000000000000000000000000000000000000000000000000000
00000000050000000000000000000000000000000000000007777777777777770000000000000000000000000000000000000000000000000000000000000000
88288888888228888a88888082202200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288888822888822aa2222800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8882882288888228809a888880222008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8882aa88882228882800000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
288289aa288810000008800000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28822288000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82828880000005080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820000000000000500000000058000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaa28000000000000080000082800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82280000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288008200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88258020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88882000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882250000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28888208000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88285820000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88228000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88285800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288082000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88280000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880800000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010101000000000000000000000000010101010000000000000000000000000101010100000000000000000000000001010101000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010020110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050
0002000001550006100e7000472000000000000000000000000000000000000000001a70000000000000000005500006000070005500006000c70000000000000000000000000000000000000000000000000000
000200000554000610017200070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
