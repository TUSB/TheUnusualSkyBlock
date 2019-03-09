##############################
### 村人と会話 tellrawトリガー
##############################

#ナース
execute if score @s VillagerTrigger matches 1 run function trigger_manager:villager/nurse/check

scoreboard players reset @s VillagerTrigger
scoreboard players enable @s VillagerTrigger
