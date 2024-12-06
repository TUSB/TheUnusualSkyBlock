#インターバル表示

#スキル取得
data modify storage skill: Skill set from storage item: Item.tag.Skill

#インターバル表示
#(GameTime-LastUsed)*20/Interval
execute store result score _ Calc run time query gametime
execute store result score _ _ run data get storage skill: Skill.LastUsed
execute store result score _ Interval run data get storage skill: Skill.Interval
# 潜在能力 - スキル使用不可時間短縮 --
scoreboard players set @s _ 100
scoreboard players operation _ Interval *= @s IntervalRate
scoreboard players operation _ Interval /= @s _
# --
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
execute if score _ Calc matches 20.. run data modify storage item: Item.tag.Skill.ShowInterval set value 0b
execute if score _ Calc matches 20.. unless data storage item: Item.Slot run item modify entity @s weapon.mainhand item:storage/item
execute if score _ Calc matches 20.. if data storage item: Item{Slot:-106b} run item modify entity @s weapon.offhand item:storage/item
execute if score _ Calc matches 20.. if data storage item: Item{Slot:100b} run item modify entity @s armor.feet item:storage/item
execute if score _ Calc matches 20.. if data storage item: Item{Slot:101b} run item modify entity @s armor.legs item:storage/item
execute if score _ Calc matches 20.. if data storage item: Item{Slot:102b} run item modify entity @s armor.chest item:storage/item
execute if score _ Calc matches 20.. if data storage item: Item{Slot:103b} run item modify entity @s armor.head item:storage/item
