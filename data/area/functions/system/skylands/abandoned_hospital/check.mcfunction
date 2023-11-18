gamerule doTileDrops false

execute if entity @s[advancements={area:system/skylands/abandoned_hospital={exit_lever=true}}] run fill -156 186 -687 -154 186 -685 air destroy

execute if entity @s[advancements={area:system/skylands/abandoned_hospital={flower_pot=true}}] run data modify storage area: hospital_gimmic set value 3
execute if entity @s[advancements={area:system/skylands/abandoned_hospital={flower_pot=true}}] if block -113 186 -665 #area:potted_pots if block -113 186 -663 #area:potted_pots run summon marker -114.5 185.5 -664.5 {Tags:[HospitalGimmic],Passengers:[{id:"pig"}]}
execute if entity @s[advancements={area:system/skylands/abandoned_hospital={flower_pot=true}}] if block -113 186 -665 #area:potted_pots if block -113 186 -663 #area:potted_pots run schedule function area:system/skylands/abandoned_hospital/move 10t replace

advancement revoke @s only area:system/skylands/abandoned_hospital

gamerule doTileDrops true
