
### 雷クリスタル召喚

function skill:act/summoner/call_crystal_attack/summon/common
data modify entity @e[tag=Initializing,limit=1,distance=0] ArmorItems[3].tag.Explosion.Colors[0] set value 15790080
data merge entity @e[tag=Initializing,limit=1,distance=0] {Color:4b,Tags:[Skill,Initialized,NativeTask,Lightning,Crystal,Particle]}
