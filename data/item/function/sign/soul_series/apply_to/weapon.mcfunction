#> item:sign/soul_series/apply_to/weapon
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"armor_toughness",id:"armor_toughness",amount:10,operation:"add_value",slot:"mainhand"}
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"armor_toughness",id:"armor_toughness",amount:0.3,operation:"add_multiplied_base",slot:"mainhand"}
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"knockback_resistance",id:"knockback_resistance",amount:0.5,operation:"add_value",slot:"mainhand"}
data modify entity @s Item.components."minecraft:attribute_modifiers".modifiers append value {type:"knockback_resistance",id:"knockback_resistance",amount:0.25,operation:"add_multiplied_base",slot:"mainhand"}
