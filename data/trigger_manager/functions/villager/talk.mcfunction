##############################
### 村人と会話
##############################

scoreboard players enable @s VillagerTrigger

###視線検知
tag @s add Talking
execute positioned ^ ^ ^3 as @e[type=villager,distance=..3] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=Talking,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0.5,dy=0.5,dz=0.5] run tag @s add TalkingVillager
execute positioned as @e[tag=TalkingVillager,limit=1,sort=nearest] run tag @e[tag=TalkingVillager,distance=0.1..6] remove TalkingVillager

###個別の村人設定
#ナース
execute if entity @e[tag=Nurse,tag=TalkingVillager,limit=1,distance=..6] run function trigger_manager:villager/nurse/talk

###リセット
tag @s remove Talking
tag @e[tag=TalkingVillager,limit=1,distance=..6] remove TalkingVillager
scoreboard players reset @s TalkToVillager
