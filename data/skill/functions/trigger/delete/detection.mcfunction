# @within function skill:trigger/

# メインハンドのアイテム情報取得
data remove storage item: Item
data modify storage item: Item set from entity @s SelectedItem

# TUSBメモリーかどうかで分岐
execute if data storage item: Item{tag:{Skill:{Type:"TUSBMemory"}}} run tellraw @s {"translate":"TUSBメモリーのスキルは削除できません。","color":"red"}
execute unless data storage item: Item{tag:{Skill:{Type:"TUSBMemory"}}} run function skill:trigger/delete/delete