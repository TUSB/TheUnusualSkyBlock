
### 闇クリスタル召喚

function skill:act/summoner/call_crystal_attack/summon/common
data modify entity @e[tag=Initializing,limit=1,distance=0] ArmorItems[3].tag.Explosion.Colors[0] set value 0
data merge entity @e[tag=Initializing,limit=1,distance=0] {Tags:[Skill,Initialized,NativeTask,Dark,Crystal,Particle]}
