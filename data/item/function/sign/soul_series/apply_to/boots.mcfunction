#> item:sign/soul_series/apply_to/boots
execute if items entity @s weapon.mainhand #minecraft:foot_armor[minecraft:attribute_modifiers~{modifiers:{size:0}}] run function settings:item/sign/soul_series/default_attributes/boots
data modify storage item: Soul.Attributes[].slot set value "feet"