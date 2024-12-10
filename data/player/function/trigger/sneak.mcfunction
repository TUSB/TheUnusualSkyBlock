#> player:trigger/sneak
###スニーク時処理

#スニーク中   スニークしているときに実行したい処理はこの下に追加
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1
#スニーク頻度
execute if score @s SneakTime matches 1 run scoreboard players add @s SneakFrequency 10

# 近くに墓がある場合、墓からものを取り出す
    execute if score @s[scores={Age=1..},predicate=entity:player] SneakTime matches 3 as @e[type=item_display,tag=Tomb,distance=..1] at @s run function player:death_item_drop/tomb_drop

# スニークスキル
execute if score @s[gamemode=!spectator] SneakTime matches 3 run function skill:trigger/sneak

#スニーク解除   スニークし終わったときに実行したい処理はこの下に追加
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger

# スニーク解除時スキル
execute if score @s[gamemode=!spectator] SneakTime matches 2 if data entity @s[predicate=skill:trigger/weapon/] Inventory[{components:{"minecraft:custom_data":{Skill:{Trigger:"剣を持った状態でスニーク解除"}}}}] run function skill:trigger/after_sneak_skill

##スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakTime %= _ _
