
### 温泉入浴

#体力・MP全回復 + MPは+50される
effect give @s instant_health 1 120 true
scoreboard players operation _ _ = @s MPMax
scoreboard players add _ _ 50
scoreboard players operation @s MP = _ _

#状態異常回復
function skill:act/white_mage/clear/cure/level4
#免疫力完全
scoreboard players set @s ResistEffects 100

#ペイル回復
execute if score @s PaleLevel matches 0.. run function effects:pale/cure
