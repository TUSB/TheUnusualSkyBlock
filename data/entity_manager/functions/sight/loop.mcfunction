##############################
### 視線検知 ループ
##############################

#視線が通れば$Sight Globalを1に
execute store success score $Sight Global if block ^ ^ ^ minecraft:air
scoreboard players remove $SightLoop Global 1
execute if score $Sight Global matches 1 if score $SightLoop Global matches 1.. positioned ^ ^-1.5 ^1 unless entity @a[distance=..1,sort=nearest,limit=1] positioned ^ ^1.5 ^ run function entity_manager:sight/loop
