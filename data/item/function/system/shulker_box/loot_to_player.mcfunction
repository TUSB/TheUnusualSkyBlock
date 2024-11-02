#> item:system/shulker_box/loot_to_player
#Items[{Slot:0b}]をプレイヤーにloot
#競合対策でif dataで分岐させる
execute if data storage item: {Slot:0b} in area:control_area run item replace entity @s container.0 from block 2 2 2 container.0
execute if data storage item: {Slot:1b} in area:control_area run item replace entity @s container.1 from block 2 2 2 container.0
execute if data storage item: {Slot:2b} in area:control_area run item replace entity @s container.2 from block 2 2 2 container.0
execute if data storage item: {Slot:3b} in area:control_area run item replace entity @s container.3 from block 2 2 2 container.0
execute if data storage item: {Slot:4b} in area:control_area run item replace entity @s container.4 from block 2 2 2 container.0
execute if data storage item: {Slot:5b} in area:control_area run item replace entity @s container.5 from block 2 2 2 container.0
execute if data storage item: {Slot:6b} in area:control_area run item replace entity @s container.6 from block 2 2 2 container.0
execute if data storage item: {Slot:7b} in area:control_area run item replace entity @s container.7 from block 2 2 2 container.0
execute if data storage item: {Slot:8b} in area:control_area run item replace entity @s container.8 from block 2 2 2 container.0
execute if data storage item: {Slot:9b} in area:control_area run item replace entity @s container.9 from block 2 2 2 container.0
execute if data storage item: {Slot:10b} in area:control_area run item replace entity @s container.10 from block 2 2 2 container.0
execute if data storage item: {Slot:11b} in area:control_area run item replace entity @s container.11 from block 2 2 2 container.0
execute if data storage item: {Slot:12b} in area:control_area run item replace entity @s container.12 from block 2 2 2 container.0
execute if data storage item: {Slot:13b} in area:control_area run item replace entity @s container.13 from block 2 2 2 container.0
execute if data storage item: {Slot:14b} in area:control_area run item replace entity @s container.14 from block 2 2 2 container.0
execute if data storage item: {Slot:15b} in area:control_area run item replace entity @s container.15 from block 2 2 2 container.0
execute if data storage item: {Slot:16b} in area:control_area run item replace entity @s container.16 from block 2 2 2 container.0
execute if data storage item: {Slot:17b} in area:control_area run item replace entity @s container.17 from block 2 2 2 container.0
execute if data storage item: {Slot:18b} in area:control_area run item replace entity @s container.18 from block 2 2 2 container.0
execute if data storage item: {Slot:19b} in area:control_area run item replace entity @s container.19 from block 2 2 2 container.0
execute if data storage item: {Slot:20b} in area:control_area run item replace entity @s container.20 from block 2 2 2 container.0
execute if data storage item: {Slot:21b} in area:control_area run item replace entity @s container.21 from block 2 2 2 container.0
execute if data storage item: {Slot:22b} in area:control_area run item replace entity @s container.22 from block 2 2 2 container.0
execute if data storage item: {Slot:23b} in area:control_area run item replace entity @s container.23 from block 2 2 2 container.0
execute if data storage item: {Slot:24b} in area:control_area run item replace entity @s container.24 from block 2 2 2 container.0
execute if data storage item: {Slot:25b} in area:control_area run item replace entity @s container.25 from block 2 2 2 container.0
execute if data storage item: {Slot:26b} in area:control_area run item replace entity @s container.26 from block 2 2 2 container.0
execute if data storage item: {Slot:27b} in area:control_area run item replace entity @s container.27 from block 2 2 2 container.0
execute if data storage item: {Slot:28b} in area:control_area run item replace entity @s container.28 from block 2 2 2 container.0
execute if data storage item: {Slot:29b} in area:control_area run item replace entity @s container.29 from block 2 2 2 container.0
execute if data storage item: {Slot:30b} in area:control_area run item replace entity @s container.30 from block 2 2 2 container.0
execute if data storage item: {Slot:31b} in area:control_area run item replace entity @s container.31 from block 2 2 2 container.0
execute if data storage item: {Slot:32b} in area:control_area run item replace entity @s container.32 from block 2 2 2 container.0
execute if data storage item: {Slot:33b} in area:control_area run item replace entity @s container.33 from block 2 2 2 container.0
execute if data storage item: {Slot:34b} in area:control_area run item replace entity @s container.34 from block 2 2 2 container.0
execute if data storage item: {Slot:35b} in area:control_area run item replace entity @s container.35 from block 2 2 2 container.0
execute if data storage item: {Slot:100b} in area:control_area run item replace entity @s armor.feet from block 2 2 2 container.0
execute if data storage item: {Slot:101b} in area:control_area run item replace entity @s armor.legs from block 2 2 2 container.0
execute if data storage item: {Slot:102b} in area:control_area run item replace entity @s armor.chest from block 2 2 2 container.0
execute if data storage item: {Slot:103b} in area:control_area run item replace entity @s armor.head from block 2 2 2 container.0
execute if data storage item: {Slot:-106b} in area:control_area run item replace entity @s weapon.offhand from block 2 2 2 container.0
#競合対策でremoveする
data remove storage item: Slot
