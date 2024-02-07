
### 補足成功

execute as @e[distance=..0.01,sort=nearest,limit=1] run function #oh_my_dat:please
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName run tellraw @s [{"translate":"アナライズ：【 %1$s 】","with":[{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].\"ステータス\".CustomName","interpret":true}]}]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName if data entity @e[distance=..0.01,sort=nearest,limit=1] CustomName run tellraw @s [{"translate":"アナライズ：【 %1$s 】","with":[{"entity":"@e[distance=..0.01,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]}]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName unless data entity @e[distance=..0.01,sort=nearest,limit=1] CustomName run tellraw @s [{"translate":"アナライズ：【 %1$s 】","with":[{"selector":"@e[distance=..0.01,sort=nearest,limit=1]"}]}]

execute if entity @e[tag=Mob,distance=..0.01,sort=nearest,limit=1] run function skill:act/common/analyse/mob

execute if entity @e[tag=AnalyseLog,distance=..0.01,sort=nearest,limit=1] run tellraw @s [{"text":""},{"text":"m","font":"icon"},{"text":" "},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].\"ステータス\".AnalyseLog","interpret":true}]

execute facing entity @s eyes positioned ^ ^ ^1 facing ^ ^ ^-1 rotated ~ ~-90 anchored eyes run function makeup:skill/act/common/analyse/success
