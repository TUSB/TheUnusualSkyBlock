### 薙ぎ払いに武器・属性ダメージのX％を追加
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}].lvl
function settings:item/enchant/value/sweeping
execute store result score _ Calc run function item:enchant/enchant/get_value
#適用
function skill:damage/modify
function skill:damage/modify
#Hit属性を追加(直後に進捗からskill:enchant/sweeping/applyが呼び出される)
data modify storage skill: Damage set value {Hit:1b}
