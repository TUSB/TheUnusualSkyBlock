### 薙ぎ払いに武器・属性ダメージのX％を追加
execute store result storage item: Enchant.Level int 1 run data get storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}].lvl
function settings:item/enchant/value/sweeping
execute store result score _ Calc run function item:enchant/enchant/get_value

scoreboard players set _ _ 100
scoreboard players operation _ Damage *= _ Calc
scoreboard players operation _ Damage /= _ _
scoreboard players operation _ ElementFire *= _ Calc
scoreboard players operation _ ElementFire /= _ _
scoreboard players operation _ ElementCold *= _ Calc
scoreboard players operation _ ElementCold /= _ _
scoreboard players operation _ ElementLightning *= _ Calc
scoreboard players operation _ ElementLightning /= _ _
scoreboard players operation _ ElementLight *= _ Calc
scoreboard players operation _ ElementLight /= _ _
scoreboard players operation _ ElementDark *= _ Calc
scoreboard players operation _ ElementDark /= _ _
