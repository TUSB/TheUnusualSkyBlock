
### 光クリスタル召喚

function skill:act/summoner/call_crystal_attack/summon/common
data modify entity @e[tag=Initializing,limit=1,distance=0] ArmorItems[3].tag.Explosion.Colors[0] set value 16777215
data merge entity @e[tag=Initializing,limit=1,distance=0] {Color:0b,Tags:[Skill,Initialized,NativeTask,Light,Crystal,Particle]}
