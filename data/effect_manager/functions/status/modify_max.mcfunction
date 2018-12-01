##############################
### 最大ステータス調整
##############################

scoreboard players set @s MPMax 100
scoreboard players operation $Level Global = @s Level
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelKnight
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelNinja
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelHunter
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelWhiteMage
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelBlackMage
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelSummoner
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global
scoreboard players operation $Level Global = @s LevelPupMaster
scoreboard players operation $Level Global < $50 Const
scoreboard players operation @s MPMax += $Level Global

effect clear @s minecraft:health_boost
execute if score @s MPMax matches 60.. run effect give @s minecraft:health_boost 1000000 0 true
execute if score @s MPMax matches 70.. run effect give @s minecraft:health_boost 1000000 1 true
execute if score @s MPMax matches 80.. run effect give @s minecraft:health_boost 1000000 2 true
execute if score @s MPMax matches 90.. run effect give @s minecraft:health_boost 1000000 3 true
execute if score @s MPMax matches 100.. run effect give @s minecraft:health_boost 1000000 4 true
execute if score @s MPMax matches 110.. run effect give @s minecraft:health_boost 1000000 5 true
execute if score @s MPMax matches 120.. run effect give @s minecraft:health_boost 1000000 6 true
execute if score @s MPMax matches 130.. run effect give @s minecraft:health_boost 1000000 7 true
execute if score @s MPMax matches 140.. run effect give @s minecraft:health_boost 1000000 8 true
execute if score @s MPMax matches 150.. run effect give @s minecraft:health_boost 1000000 9 true
execute if score @s MPMax matches 160.. run effect give @s minecraft:health_boost 1000000 10 true
execute if score @s MPMax matches 170.. run effect give @s minecraft:health_boost 1000000 11 true
execute if score @s MPMax matches 180.. run effect give @s minecraft:health_boost 1000000 12 true
execute if score @s MPMax matches 190.. run effect give @s minecraft:health_boost 1000000 13 true
execute if score @s MPMax matches 200.. run effect give @s minecraft:health_boost 1000000 14 true
execute if score @s MPMax matches 210.. run effect give @s minecraft:health_boost 1000000 15 true
execute if score @s MPMax matches 220.. run effect give @s minecraft:health_boost 1000000 16 true
execute if score @s MPMax matches 230.. run effect give @s minecraft:health_boost 1000000 17 true
execute if score @s MPMax matches 240.. run effect give @s minecraft:health_boost 1000000 18 true
execute if score @s MPMax matches 250.. run effect give @s minecraft:health_boost 1000000 19 true
execute if score @s MPMax matches 260.. run effect give @s minecraft:health_boost 1000000 20 true
execute if score @s MPMax matches 270.. run effect give @s minecraft:health_boost 1000000 21 true
execute if score @s MPMax matches 280.. run effect give @s minecraft:health_boost 1000000 22 true
execute if score @s MPMax matches 290.. run effect give @s minecraft:health_boost 1000000 23 true
execute if score @s MPMax matches 300.. run effect give @s minecraft:health_boost 1000000 24 true
execute if score @s MPMax matches 310.. run effect give @s minecraft:health_boost 1000000 25 true
execute if score @s MPMax matches 320.. run effect give @s minecraft:health_boost 1000000 26 true
execute if score @s MPMax matches 330.. run effect give @s minecraft:health_boost 1000000 27 true
execute if score @s MPMax matches 340.. run effect give @s minecraft:health_boost 1000000 28 true
execute if score @s MPMax matches 350.. run effect give @s minecraft:health_boost 1000000 29 true
execute if score @s MPMax matches 360.. run effect give @s minecraft:health_boost 1000000 30 true
execute if score @s MPMax matches 370.. run effect give @s minecraft:health_boost 1000000 31 true
execute if score @s MPMax matches 380.. run effect give @s minecraft:health_boost 1000000 32 true
execute if score @s MPMax matches 390.. run effect give @s minecraft:health_boost 1000000 33 true
execute if score @s MPMax matches 400.. run effect give @s minecraft:health_boost 1000000 34 true
execute if score @s MPMax matches 410.. run effect give @s minecraft:health_boost 1000000 35 true
execute if score @s MPMax matches 420.. run effect give @s minecraft:health_boost 1000000 36 true
execute if score @s MPMax matches 430.. run effect give @s minecraft:health_boost 1000000 37 true
execute if score @s MPMax matches 440.. run effect give @s minecraft:health_boost 1000000 38 true
execute if score @s MPMax matches 450.. run effect give @s minecraft:health_boost 1000000 39 true
execute if score @s MPMax matches 460.. run effect give @s minecraft:health_boost 1000000 40 true
execute if score @s MPMax matches 470.. run effect give @s minecraft:health_boost 1000000 41 true
execute if score @s MPMax matches 480.. run effect give @s minecraft:health_boost 1000000 42 true
execute if score @s MPMax matches 490.. run effect give @s minecraft:health_boost 1000000 43 true
execute if score @s MPMax matches 500.. run effect give @s minecraft:health_boost 1000000 44 true
