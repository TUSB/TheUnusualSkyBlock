##############################
### 状態異常回復レベル５
##############################

### 累積耐性付与
scoreboard players set _ _ 100
scoreboard players operation @s ResistEffects > _ _
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"免疫力","color":"white"},"が上がった！"]

function skill:act/white_mage/clear/cure/level4
