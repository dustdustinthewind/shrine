pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
#include the_friend_library/tiny_ecs.lua

#include play.lua

#include components.lua
#include systems.lua

#include june_string.lua
#include heart_string.lua

#include mouse_woman.lua

#include sprite.lua

#include heart.lua
#include curtains.lua

#include helpfuls.lua
__gfx__
0000f000000c000007000700000000000f0000c000000f0000c00000000060000000000800000000000800000000000000000000000000000000000000000000
00007f0f00c70700077070000008800007ffcc70000007fffc700000000060000000000800000000000800000000000000000000000000000000000000000000
00007ffffcc7007077070000008080000fdcc2c00000ffffccc00000000006000000000080000000000800000000000000000000000000000000000000000000
0000ffffccccc00700007000080080005f7117c00005ffdcc2cc0000000006000000000080000000000800000000000000000000000000000000000000000000
0005ffdcc2cc00700700700088008000f28aa800000f2671176c0000000006000000000008000000000800000000000000000000000000000000000000000000
000ff67cc76cc0700707700800808000f776c770000f227117000000000006000000000008000000000800000000000000000000000000000000000000000000
000ff771177c0070007700880080800007766770000f228aa8000000000006600000000000800000008800000000000000000000000000000000000000000000
00ff2771177cc007770008008080800000700700000f27777770000000000066000000c000800000008000000000000000000000000000000000000000000000
000f227777dc0000000080808088800000000000000f7276c70700000000006600000cc000080000008000000000000000000000000000000000000000000000
000f288aa8800000000808800888000000000000000f727667070000000000660000ccc000080000008000000000000000000000000000000000000000000000
00ff227787000000008000080088000000000000000f707cc70700000ff00066000007c000008000088000000000000000000000000000000000000000000000
000f277cc8700000080800088088000000000000000070777707000000fff066000007c000000800080000000000000000000000000000000000000000000000
000f777cc7870000808080800880000000000000000000700700000000f77066666000c000000080e80000000000000000000000000000000000000000000000
00ff7276c7080000080808800800000000000000000000700700000000f70066ff6000c000000008e00000000000000000000000000000000000000000000000
000f727667078000000808088888000000000000000000700700000000ff006f0f0800000000000e800000080000000000000000000000000000000000000000
000f707cc7070800008808800080000000000000000000700700000000000060802020000000008e080000800000000000000000000000000000000000000000
0000707cc7070800000888000088000000000ee0e8880000000000000000006202f2666000000880008888000000000000000000000000000000000000000000
0000707cc70700800888080000080000000e888080080000000000000000006f2ff7776600008800550000000000000000000000000000000000000000000000
0000007cc700000880000080000000000008000e00e80000000000000000006fffff777766666665555000000000000000000000000000000000000000000000
0000007cc700000000000008000000000008000000080000000000000000006ff77f7f7777777777550000000000000000000000000000000000000000000000
0000007cc7000000000000000000000000880880880e80000000000080000066f77ffff777f77f77760000000000000000000000000000000000000000000000
0000007777000000000000000000000008e00000000080000000000080000066777ff7f7f888887f760000000000000000000000000000000000000000000000
0000007777000000000000000000000008e00000008880000000000008000006777f77ff88788787660000000000000000000000000000000000000000000000
000000777700000000000000000000000088800c000000000000000008000006777f777887777778600000000000000000000000000000000000000000000000
00000070070000000000000000000000000000c0c000000000000000008000006666777677776666660000000000000000000000000000000000000000000000
0000007007000000000000000000000000000c000c00000000000000000800000066666666666000066000000000000000000000000000000000000000000000
000000700700000000000000000000000000c00000c0000000000000000088000000000ee0000000006000000000000000000000000000000000000000000000
00000070070000000000000000000000000c0000000c000000000000000000880000008800000000006600000000000000000000000000000000000000000000
0000007007000000000000000000000000c00000000c000000000000000000008e00088000000000006600000000000000000000000000000000000000000000
0000007007000000000000000000000000ccccccccc00000000000000000000000e8880000000000666000000000000000000000000000000000000000000000
0000007007000000000000000000000000000c000c00000000000000000000008888e00000000006600000000000000000000000000000000000000000000000
0000007007000000000000000000000000000c000c000000000000000000088880000e8000000066000000000000000000000000000000000000000000000000
00eeee00002ee500000eee00000ee00000dddd00000ddd0000000009000000000000000000000000000000000000000000000000000000000000000000000000
0e8888e00788875000e888e007e887000dccccd000dcccd00000009a900000000000000000000000000000000000000000000000000000000000000000000000
e888888e0e7887e50e88888e027887e0dccc2ccd0dcc2ccd000009aa900000000000000000000000000000000000000000000000000000000000000000000000
888888e0887777850888888e08777780cccc2cd00cccc2cd000009afa90000003ba3000000000000000000000000000000000000000000000000000000000000
88888808872277770888888087227777c22c2c080c22c2c000000044490000003ba3000000000000000000000000000000000000000000000000000000000000
88888808878877250888888087887720ccc2cc080ccc2cc00000000c000000003ba3000000000000000000000000000000000000000000000000000000000000
88888808827772820888888082777280ccc2cc080cccc2c00000000f000000003ba3000000000000000000000000000000000000000000000000000000000000
e888880e882277820e888880e8227780dccc2c0e0dcc2c200000000c0000000030a3000000000000000000000000000000000000000000000000000000000000
e888880e8887227000e8888e08872270dcc2c20e00dccccd0000000f700000000000000000000000000000000000000000000000000000000000000000000000
0e8888e027827750000e8888078277000dccccd0000dccc20000007c770000000000000000000000000000000000000000000000000000000000000000000000
00e88880727825000000e8887278200000dccc200000dc2c00000077770000000000000000000000000000000000000000000000000000000000000000000000
000e88802728e00000000e88072e0000000dc2c000000dcc00000077770000000000cf0000000000000000000000000000000000000000000000000000000000
0000e880528e0000000000e802e000000000dcc0000000dc00000070770000000000f00000000000000000000000000000000000000000000000000000000000
00000e8008e000000000000e0800000000000dc00000000d000000700700000000fcc00000000000000000000000000000000000000000000000000000000000
000000ee0e0000000000000000000000000000dd00000000000000777700000000cf000000000000000000000000000000000000000000000000000000000000
0000000e0500000000000000000000000000000d00000000000000777700000000c0000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777070000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000707070000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000770777000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777777000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777707000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000777707000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000007777077700000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000007077777700000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000007700777770000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000007777777770000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000077077707707000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000077707707707000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000077777770777700000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000770777770077700000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000770777777777770000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000007777777777777770000000000000000000000000000000000000000000000000000000000000000
88288888888228888a88888082202220000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288888882288882a28888008080020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288888822888822aa2222800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
888280822288882288a8882200008002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
888288228888822880aa888880022208000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8882a22880882288820a088850008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8882aa88882228882800000080000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88828aa8822888825000000000000082000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
288288aa288810000008800000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2882822aa00000000000000000008280000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28822288000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
22820888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82828880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82828180000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88828000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
aaa20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
288aaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882820000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82850000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880280000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82280000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288008200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288020080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88258020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88880000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88882000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88882088000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28882250000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28888200002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28880000820000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
28888208000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888520000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288802800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88285820000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820080028000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88820002000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88828000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88228000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288800008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288882000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88285800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88280080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288082000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88288000800080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88280000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888020080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82888800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82880800000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
82800080020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010020110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050110500c0500e05010050
0002000001550006100e7000472000000000000000000000000000000000000000001a70000000000000000005500006000070005500006000c70000000000000000000000000000000000000000000000000000
000200000554000610017200070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
