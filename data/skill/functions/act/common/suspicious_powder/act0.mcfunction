##############################
### 怪しい粉発動
##############################

#発動中かどうか
execute store result score _ _ if score @s SuspiciousPowderTime matches -1..

#効果時間を設定
execute if score _ _ matches 0 run scoreboard players set @s SuspiciousPowderTime 60
execute if score _ _ matches 0 run scoreboard players set @s SuspiciousPowderToken 0
execute if score _ _ matches 0 run tellraw @s {"translate":"1分間消費MPが0になった", "color":"white"}
execute if score _ _ matches 0 run function makeup:skill/act/common/suspicious_powder/act0

#すでに発動済み
execute if score _ _ matches 1 run data modify storage skill: Success set value 0b
execute if score _ _ matches 1 run tellraw @s {"translate":"すでに粉をキメている！", "color":"red"}
