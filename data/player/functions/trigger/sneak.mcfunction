
###スニーク時処理

#スニーク中   スニークしているときに実行したい処理はこの下に追加
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1
#スニーク頻度
execute if score @s SneakTime matches 1 run scoreboard players add @s SneakFrequency 10
# スニークスキル
execute if score @s[gamemode=!spectator] SneakTime matches 3 run function skill:trigger/sneak
# バースト
execute if score @s SneakTrigger matches 40 store result score _ _ run bossbar get skill:burst max
execute if score @s SneakTrigger matches 40 if score $World Burst > _ _ anchored eyes positioned ^ ^-0.85 ^5 run function skill:burst/command/show

#スニーク解除   スニークし終わったときに実行したい処理はこの下に追加
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger

# スニーク解除時スキル
execute if score @s[gamemode=!spectator] SneakTime matches 2 if data entity @s SelectedItem.tag{Skill:{Trigger:"剣を持った状態でスニーク解除"}} if entity @s[predicate=skill:trigger/weapon] run function skill:trigger/after_sneak_skill

##スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakTime %= _ _
