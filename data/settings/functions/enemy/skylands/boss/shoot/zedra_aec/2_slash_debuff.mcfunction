#Function
scoreboard players set @s _ 0
## 呪詛（50%）
execute store result score _ Random run function calc:random
scoreboard players set _ Calc 100
scoreboard players operation _ Random %= _ Calc
execute if score _ Random matches ..50 unless entity @s[tag=Curse] run scoreboard players set @s _ 1
effect give @s[scores={_=1}] invisibility 5 7 true
## 死の宣告（30%）
execute store result score _ Random run function calc:random
scoreboard players set _ Calc 100
scoreboard players operation _ Random %= _ Calc
execute if score _ Random matches ..30 unless score @s DoomCount matches 1..31 run scoreboard players set @s _ 2
effect give @s[scores={_=2}] invisibility 5 2 true
## ペイル（中央被弾&10%）
execute store result score _ Random run function calc:random
scoreboard players set _ Calc 100
scoreboard players operation _ Random %= _ Calc
execute if entity @s[tag=ZedraLanding] if score _ Random matches ..10 unless score @s PaleLevel matches 3.. run scoreboard players set @s _ 3
effect give @s[scores={_=3}] invisibility 5 10 true
## 音
playsound minecraft:entity.wither.spawn hostile @s[scores={_=1..3}] ~ ~ ~ 0.3 1.75
