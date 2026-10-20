
scoreboard players remove @s[scores={RestoreItem=10..}] RestoreItem 10

execute if entity @s[scores={RestoreItem=0}] run function skill:act/common/restore_item/cancel
execute if entity @s[scores={RestoreItem=1..2}] run function skill:act/common/restore_item/act1
