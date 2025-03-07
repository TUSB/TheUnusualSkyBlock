#> item:sign/soul_series/apply_to/weapon
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"generic.armor_toughness",id:"generic.armor_toughness",amount:10,operation:"add_value",slot:"mainhand"}
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"generic.armor_toughness",id:"generic.armor_toughness",amount:0.3,operation:"add_multiplied_base",slot:"mainhand"}
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"generic.knockback_resistance",id:"generic.knockback_resistance",amount:0.5,operation:"add_value",slot:"mainhand"}
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"generic.knockback_resistance",id:"generic.knockback_resistance",amount:0.25,operation:"add_multiplied_base",slot:"mainhand"}
