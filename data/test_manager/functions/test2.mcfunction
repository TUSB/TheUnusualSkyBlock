summon arrow ~ ~2 ~ {NoGravity:true,Tags:[Initializing],Motion:[0.2d,0.2d,0.2d]}
data merge entity @e[tag=Initializing,limit=1] {Motion:[0.2d,0.2d,0.2d]}
tag @e[tag=Initializing,limit=1] remove Initializing
