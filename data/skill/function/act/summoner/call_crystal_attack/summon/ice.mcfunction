#> skill:act/summoner/call_crystal_attack/summon/ice

# 氷クリスタル召喚

function skill:act/summoner/call_crystal_attack/summon/common
data modify entity @e[tag=Initializing,limit=1,distance=0] ArmorItems[3].components."minecraft:firework_explosion".colors[0] set value 43690
data merge entity @e[tag=Initializing,limit=1,distance=0] {Tags:[Skill,Initialized,NativeTask,Ice,Crystal,Particle]}
