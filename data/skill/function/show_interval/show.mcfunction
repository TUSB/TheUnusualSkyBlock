#> skill:show_interval/show
#インターバル表示

#スキル取得
data modify storage skill: Skill set from storage item: Item.components."minecraft:custom_data".Skill

#インターバル表示
#(GameTime-LastUsed)*20/Interval
execute store result score _ Calc run time query gametime
execute store result score _ _ run data get storage skill: Skill.LastUsed
execute store result score _ Interval run data get storage skill: Skill.Interval
scoreboard players operation _ Calc -= _ _
scoreboard players set _ _ 20
scoreboard players operation _ Calc *= _ _
scoreboard players operation _ Calc /= _ Interval

execute if score _ Calc matches 00 run data modify storage skill: Text set value '[{"text":"▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 01 run data modify storage skill: Text set value '[{"text":"▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 02 run data modify storage skill: Text set value '[{"text":"▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 03 run data modify storage skill: Text set value '[{"text":"▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 04 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 05 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 06 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 07 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 08 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 09 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 10 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 11 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 12 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 13 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 14 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 15 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍▍","color":"red"}]'
execute if score _ Calc matches 16 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍▍","color":"red"}]'
execute if score _ Calc matches 17 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍▍","color":"red"}]'
execute if score _ Calc matches 18 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"},{"text":"▍","color":"red"}]'
execute if score _ Calc matches 19 run data modify storage skill: Text set value '[{"text":"▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍▍","color":"green"}]'

execute if score _ Calc matches 0..19 run data modify storage calc: Text set value '[{"text":"","color":"white","italic":false},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"},{"text":" "},{"storage":"skill:","nbt":"Text","interpret":true}]'
execute if score _ Calc matches 0..19 run data modify storage calc: TextLength set value 8
execute if score _ Calc matches 0..19 run function calc:show_text/actionbar
execute if score _ Calc matches 20 run title @s actionbar [""]

#インターバルが終了していればNBT削除
execute if score _ Calc matches 20.. run data modify storage item: Item.components."minecraft:custom_data".Skill.ShowInterval set value 0b
execute in area:control_area run data modify block 2 2 2 Items set value []
execute in area:control_area run data modify block 2 2 2 Items append from storage item: Item
execute if score _ Calc matches 20.. unless data storage item: Item.Slot in area:control_area run item replace entity @s weapon.mainhand from block 2 2 2 container.0
execute if score _ Calc matches 20.. if data storage item: Item{Slot:-106b} in area:control_area run item replace entity @s weapon.offhand from block 2 2 2 container.0
execute if score _ Calc matches 20.. if data storage item: Item{Slot:100b} in area:control_area run item replace entity @s armor.feet from block 2 2 2 container.0
execute if score _ Calc matches 20.. if data storage item: Item{Slot:101b} in area:control_area run item replace entity @s armor.legs from block 2 2 2 container.0
execute if score _ Calc matches 20.. if data storage item: Item{Slot:102b} in area:control_area run item replace entity @s armor.chest from block 2 2 2 container.0
execute if score _ Calc matches 20.. if data storage item: Item{Slot:103b} in area:control_area run item replace entity @s armor.head from block 2 2 2 container.0
