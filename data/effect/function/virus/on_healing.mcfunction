#> effect:virus/on_healing
### 病気 回復阻害

execute store result score _ VirusCount run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ VirusCount %= _ _

execute if score _ VirusCount matches 50.. run function makeup:effects/virus/on_healing
execute if score _ VirusCount matches 50.. run scoreboard players reset @s HealthHealing
