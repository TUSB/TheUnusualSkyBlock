#> skill:act/common/dig_tomb/schedule2
#
# スケジュール起動
#
# @within function skill:act/common/dig_tomb/schedule1

# アイテム
    function oh_my_dat:please
    data modify storage item: NowInventory set from entity @s Inventory
    data modify storage item: DeathInventory.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory
    data modify storage item: DeathInventory.Set set value []

# アイテム置換
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:0b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:0b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:1b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:1b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:2b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:2b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:3b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:3b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:4b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:4b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:5b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:5b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:6b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:6b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:7b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:7b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:8b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:8b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:9b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:9b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:10b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:10b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:11b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:11b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:12b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:12b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:13b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:13b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:14b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:14b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:15b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:15b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:16b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:16b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:17b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:17b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:18b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:18b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:19b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:19b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:20b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:20b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:21b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:21b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:22b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:22b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:23b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:23b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:24b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:24b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:25b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:25b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:26b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:26b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:27b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:27b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:28b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:28b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:29b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:29b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:30b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:30b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:31b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:31b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:32b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:32b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:33b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:33b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:34b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:34b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:35b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:35b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:100b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:100b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:101b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:101b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:102b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:102b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:103b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:103b}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:-106b}]
    execute unless data storage item: DeathInventory.Set[0] run data modify storage item: DeathInventory.Set append value {Slot:-106b}
    function skill:act/common/dig_tomb/act1

# 今持っているアイテムをマインカートで吐き出す
    summon chest_minecart ~ ~ ~
    data modify entity @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1] Items set from storage item: NowInventory
    kill @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory[{Slot:100b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory[{Slot:101b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory[{Slot:102b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory[{Slot:103b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory[{Slot:-106b}]
    data modify storage item: DeathInventory.Armor[0].Slot set value 0b
    data modify storage item: DeathInventory.Armor[1].Slot set value 1b
    data modify storage item: DeathInventory.Armor[2].Slot set value 2b
    data modify storage item: DeathInventory.Armor[3].Slot set value 3b
    data modify storage item: DeathInventory.Armor[4].Slot set value 4b
    summon chest_minecart ~ ~ ~
    data modify entity @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1] Items set from storage item: DeathInventory.Armor
    kill @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1]

# スキルアイテムが復元されないようにする
    data modify storage item: Item.Slot set value -128b

# リセット
    data remove storage item: DeathInventory
    data remove storage item: NowInventory
    tag @s remove DigTomb