#> item:sign/soul_series/apply_to/helmet
execute if items entity @s weapon.mainhand #minecraft:head_armor[minecraft:attribute_modifiers~{modifiers:{size:0}}] run function settings:item/sign/soul_series/default_attributes/helmet
data modify storage item: Soul.Attributes[].slot set value "head"
