##############################
### どこでも回復の泉発動
##############################

#発動条件
execute store result score _ _ if block ~ ~ ~ minecraft:water

#発動失敗
execute if score _ _ matches 0 run tellraw @s {"translate":"このスキルを発動するには水に浸かる必要があります","color":"red"}
execute if score _ _ matches 0 run data modify storage skill: Success set value 0b

#演出
execute if score _ _ matches 1 run function makeup:skill/act/common/fountain_of_recovery_everywhere/act0

#発動成功
execute if score _ _ matches 1 as @a[distance=..6] at @s run function skill:act/common/fountain_of_recovery_everywhere/apply
