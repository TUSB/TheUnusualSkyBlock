##############################
### 光クリスタル召喚
##############################

function skill_manager:summoner/call_crystal/summon/common
data merge entity @e[tag=Initializing,limit=1] {Color:0b,Tags:[Initialized,TickingTask,TickingRequired,Light,Crystal,Particle]}
