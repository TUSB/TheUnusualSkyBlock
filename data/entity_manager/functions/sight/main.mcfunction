##############################
### 視線検知 メイン
##############################

#検知範囲の設定
scoreboard players set $SightLoop Global 0
execute if entity @s[tag=Sight8] run scoreboard players add $SightLoop Global 8
execute if entity @s[tag=Sight16] run scoreboard players add $SightLoop Global 16
execute if entity @s[tag=Sight32] run scoreboard players add $SightLoop Global 32

execute anchored eyes positioned ^ ^ ^ anchored feet facing entity @a[sort=nearest,limit=1] eyes run function entity_manager:sight/loop
