#> skill:act/summoner/summon_glider/startup1
#
# サモンＥ：グライダー滑空
#

data merge entity @s {FallFlying:true,FallDistance:-10000f,attributes:[{id:"minecraft:movement_speed",base:0d}]}
kill @s[nbt={OnGround:true}]
# 演出
function makeup:skill/act/summoner/summon_glider/startup1
