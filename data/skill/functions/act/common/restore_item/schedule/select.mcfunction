
schedule function skill:act/common/restore_item/schedule/select 1s

execute as @a[scores={RestoreItem=1..2}] at @s run function skill:act/common/restore_item/act1
execute as @a[scores={RestoreItem=3}] at @s run function skill:act/common/restore_item/schedule/select_end
