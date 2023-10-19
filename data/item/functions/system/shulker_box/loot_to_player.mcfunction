#Items[{Slot:0b}]をプレイヤーにloot
#競合対策でif dataで分岐させる
execute if data storage item: {Slot:0b} in area:control_area run loot replace entity @s container.0 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:1b} in area:control_area run loot replace entity @s container.1 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:2b} in area:control_area run loot replace entity @s container.2 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:3b} in area:control_area run loot replace entity @s container.3 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:4b} in area:control_area run loot replace entity @s container.4 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:5b} in area:control_area run loot replace entity @s container.5 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:6b} in area:control_area run loot replace entity @s container.6 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:7b} in area:control_area run loot replace entity @s container.7 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:8b} in area:control_area run loot replace entity @s container.8 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:9b} in area:control_area run loot replace entity @s container.9 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:10b} in area:control_area run loot replace entity @s container.10 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:11b} in area:control_area run loot replace entity @s container.11 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:12b} in area:control_area run loot replace entity @s container.12 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:13b} in area:control_area run loot replace entity @s container.13 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:14b} in area:control_area run loot replace entity @s container.14 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:15b} in area:control_area run loot replace entity @s container.15 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:16b} in area:control_area run loot replace entity @s container.16 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:17b} in area:control_area run loot replace entity @s container.17 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:18b} in area:control_area run loot replace entity @s container.18 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:19b} in area:control_area run loot replace entity @s container.19 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:20b} in area:control_area run loot replace entity @s container.20 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:21b} in area:control_area run loot replace entity @s container.21 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:22b} in area:control_area run loot replace entity @s container.22 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:23b} in area:control_area run loot replace entity @s container.23 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:24b} in area:control_area run loot replace entity @s container.24 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:25b} in area:control_area run loot replace entity @s container.25 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:26b} in area:control_area run loot replace entity @s container.26 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:27b} in area:control_area run loot replace entity @s container.27 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:28b} in area:control_area run loot replace entity @s container.28 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:29b} in area:control_area run loot replace entity @s container.29 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:30b} in area:control_area run loot replace entity @s container.30 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:31b} in area:control_area run loot replace entity @s container.31 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:32b} in area:control_area run loot replace entity @s container.32 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:33b} in area:control_area run loot replace entity @s container.33 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:34b} in area:control_area run loot replace entity @s container.34 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:35b} in area:control_area run loot replace entity @s container.35 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:100b} in area:control_area run loot replace entity @s armor.feet 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:101b} in area:control_area run loot replace entity @s armor.legs 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:102b} in area:control_area run loot replace entity @s armor.chest 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:103b} in area:control_area run loot replace entity @s armor.head 1 mine 2 2 2 debug_stick
execute if data storage item: {Slot:104b} in area:control_area run loot replace entity @s weapon.offhand 1 mine 2 2 2 debug_stick
#競合対策でremoveする
data remove storage item: Slot
