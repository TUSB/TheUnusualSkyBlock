##############################
### 怪しい粉効果終了時
##############################

#消費MP量を2倍に
scoreboard players set _ _ 2
scoreboard players operation @s SuspiciousPowderToken *= _ _

#即終了
execute if score @s SuspiciousPowderToken matches 0 run function skill:act/common/suspicious_powder/act2

#代償モードに設定
execute if score @s SuspiciousPowderToken matches 1.. run scoreboard players set @s SuspiciousPowderTime -1
execute if score @s SuspiciousPowderToken matches 1.. run tellraw @s {"translate":"倦怠感が押し寄せてきた！", "color":"light_purple"}
execute if score @s SuspiciousPowderToken matches 1.. run function makeup:skill/act/common/suspicious_powder/act1
