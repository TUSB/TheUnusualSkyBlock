### カスタムHP回復

#3以下
execute store result score @s[scores={HealthHealing=..3}] ScoreToHealth run data get entity @s Health 100
scoreboard players set _ _ 100
scoreboard players operation _ _ *= @s[scores={HealthHealing=..3}] HealthHealing
scoreboard players operation @s[scores={HealthHealing=..3}] ScoreToHealth += _ _
#スコアリセット
scoreboard players reset @s[scores={HealthHealing=..3}] HealthHealing

#4以上
effect give @s[scores={HealthHealing=4..}] minecraft:instant_health 1 0 true
scoreboard players remove @s[scores={HealthHealing=4..}] HealthHealing 4

# 病気 回復阻害
execute if score @s VirusCount matches 0.. if score @s HealthHealing matches 0.. run function effects:virus/on_healing
