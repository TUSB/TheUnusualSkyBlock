##############################
### 看板設置
##############################

#プレイヤーの向きに合わせる
tp @s ~ ~ ~ ~ ~

#設置できない場合はloot
execute unless block ~ ~ ~ air run loot spawn ~ ~ ~ kill @s
data remove entity @s DeathLootTable

#素材分岐 看板設置
execute if entity @s[tag=Acacia] run function item:sign/set/acacia
execute if entity @s[tag=Birch] run function item:sign/set/birch
execute if entity @s[tag=DarkOak] run function item:sign/set/dark_oak
execute if entity @s[tag=Jungle] run function item:sign/set/jungle
execute if entity @s[tag=Oak] run function item:sign/set/oak
execute if entity @s[tag=Spruce] run function item:sign/set/spruce
execute if entity @s[tag=Crimson] run function item:sign/set/crimson
execute if entity @s[tag=Warped] run function item:sign/set/warped

#書き込み
data modify block ~ ~ ~ {} merge from entity @s ArmorItems[0].tag.Data
#function item:sign/set/write

#kill
execute in area:control_area run tp @s 0 0 0
kill @s
