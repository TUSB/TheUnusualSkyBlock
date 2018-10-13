##############################
### 無限チェストトリガー
##############################

###まずは空気にに置換
execute as @s[advancements={trigger_manager:infinity_chest={low=true}}] at @s run fill ~-7 0 ~-7 ~7 ~7 ~7 air replace minecraft:player_head{Owner:{Properties:{textures:[{Signature:"InfinityChest"}]}}}
execute as @s[advancements={trigger_manager:infinity_chest={middle=true}}] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace minecraft:player_head{Owner:{Properties:{textures:[{Signature:"InfinityChest"}]}}}
execute as @s[advancements={trigger_manager:infinity_chest={high=true}}] at @s run fill ~-7 ~-7 ~-7 ~7 255 ~7 air replace minecraft:player_head{Owner:{Properties:{textures:[{Signature:"InfinityChest"}]}}}

###無限チェスト呼び出し
execute as @e[distance=..10,type=item,nbt=!{Item:{tag:{FromBox:true}}},nbt={Item:{tag:{SkullOwner:{Properties:{textures:[{Signature:"InfinityChest"}]}}}}}] at @s run function item_manager:infinity_chest/call_chest

### トリガーリセット
advancement revoke @s only trigger_manager:infinity_chest
