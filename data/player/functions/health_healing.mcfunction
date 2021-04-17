### カスタムHP回復
#4以上
effect give @s[scores={HealthHealing=4..}] minecraft:instant_health 1 0 true
scoreboard players remove @s[scores={HealthHealing=4..}] HealthHealing 4
#3
effect give @s[scores={HealthHealing=3}] minecraft:regeneration 2 2 true
#2
effect give @s[scores={HealthHealing=2}] minecraft:regeneration 3 1 true
#1
effect give @s[scores={HealthHealing=1}] minecraft:regeneration 3 0 true
#スコアリセット
scoreboard players reset @s[scores={HealthHealing=..3}] HealthHealing
