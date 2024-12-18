#> effect:hot_spring/apply
### 温泉入浴

#体力・MP持続回復 + Luck5を10分
effect give @s regeneration 1 5 true
scoreboard players set @s[scores={MPAcceleration=..0}] MPAcceleration 0
scoreboard players add @s MPAcceleration 20
effect give @s luck 600 4 true

#状態異常回復
function skill:act/white_mage/clear/cure/level4
#免疫力完全
scoreboard players set @s ResistEffects 100

#ペイル回復
execute if score @s PaleLevel matches -2147483647..2147483647 run function effect:pale/cure
