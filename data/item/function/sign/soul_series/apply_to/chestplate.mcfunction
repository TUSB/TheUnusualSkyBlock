#> item:sign/soul_series/apply_to/chestplate
execute if items entity @s weapon.mainhand #minecraft:chest_armor[minecraft:attribute_modifiers~{modifiers:{size:0}}] run function settings:item/sign/soul_series/default_attributes/chestplate
data modify storage item: Soul.Attributes[].slot set value "chest"
