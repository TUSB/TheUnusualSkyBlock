##############################
### 状態異常回復レベル５
##############################

### 累積耐性付与
scoreboard players set _ _ 100
scoreboard players operation @s ResistEffects > _ _
tellraw @a [{"text":"","color":"green"},{"translate":"%1$sの%2$sが上がった！","with":[{"selector":"@s","color":"white"},{"translate":"免疫力","color":"white"}]}]

function skill:act/white_mage/clear/cure/level4
