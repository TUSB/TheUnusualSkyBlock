##############################
### 状態異常回復レベル５
##############################

### 累積耐性付与
scoreboard players operation @s ResistEffects > $100 Const
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"免疫力","color":"white"},"が上がった！"]

function skill_manager:white_mage/clear/cure/level4
