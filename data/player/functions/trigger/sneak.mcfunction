
###スニーク時処理

#スニーク中   スニークしているときに実行したい処理はこの下に追加
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1
#スニーク頻度
execute if score @s SneakTime matches 1 run scoreboard players add @s SneakFrequency 10
#風切ジャンプ
execute if entity @s[scores={Kazakiri=0..,SneakTime=3}] unless block ~ ~-0.40 ~ minecraft:air run function skill:act/ninja/kazakiri/jump

### 設定表示
execute if score @s SneakTrigger matches 200 if entity @s[tag=!SuppressSettings] run function player:game_settings/show


#スニーク解除   スニークし終わったときに実行したい処理はこの下に追加
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger

# スニーク解除時スキル
execute if score @s SneakTime matches 2 if data entity @s SelectedItem.tag{Skill:{Trigger:"剣を持った状態でスニーク解除"}} if entity @s[predicate=skill:trigger/weapon] run function skill:trigger/after_sneak_skill

##スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakTime %= _ _
