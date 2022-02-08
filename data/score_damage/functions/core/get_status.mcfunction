#> score_damage:core/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function score_damage:core/attack

# HP
    execute store result score $Health ScoreDamageCore run data get entity @s Health 10000
# 防御力
    execute if data storage score_damage: Argument{BypassArmor:0b} store result score $DefensePoints ScoreDamageCore run attribute @s generic.armor get 100
    execute if data storage score_damage: Argument{BypassArmor:1b} run scoreboard players set $DefensePoints ScoreDamageCore 0
# 防具強度
    execute if data storage score_damage: Argument{BypassArmor:0b} store result score $Toughness ScoreDamageCore run attribute @s generic.armor_toughness get 100
    execute if data storage score_damage: Argument{BypassArmor:1b} run scoreboard players set $Toughness ScoreDamageCore 0
# EPFが未設定または-1以下の時Protectionを参照
    execute store result score $EPF ScoreDamageCore run data get storage score_damage: Argument.EPF
    execute unless score $EPF ScoreDamageCore matches 0.. run function score_damage:core/get_default_epf/
# 耐性エフェクト
    execute if data storage score_damage: Argument{BypassResistance:0b} store result score $Resistance ScoreDamageCore run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if data storage score_damage: Argument{BypassResistance:0b} if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $Resistance ScoreDamageCore 1
    execute if data storage score_damage: Argument{BypassResistance:1b} run scoreboard players set $Resistance ScoreDamageCore 0