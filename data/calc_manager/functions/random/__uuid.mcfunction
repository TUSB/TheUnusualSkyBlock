##############################
### UUID乱数取得
##############################

### 乱数用エンティティ召喚
summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:[Randomizer]}
### UUID乱数取得
execute store result score $UUID Random run data get entity @e[distance=..0.01,tag=Randomizer,limit=1] UUIDMost 0.0000000001
execute store result score $__UUID Random run data get entity @e[distance=..0.01,tag=Randomizer,limit=1] UUIDLeast 0.0000000001
scoreboard players set $IntMax Random 2147483647
scoreboard players operation $UUID Random %= $IntMax Random
scoreboard players operation $__UUID Random %= $IntMax Random
### 乱数用エンティティ削除
kill @e[distance=..0.01,tag=Randomizer]
