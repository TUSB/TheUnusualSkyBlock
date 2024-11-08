#> item:custom_attributes

###メインハンドの武器に攻撃力を設定
# バニラのattribute_modifiersを削除
execute if items entity @s weapon.mainhand #item:weapons[minecraft:attribute_modifiers~{modifiers:{contains:[{id:"minecraft:base_attack_damage"},{id:"minecraft:base_attack_speed"}]}}] run item modify entity @s weapon.mainhand {"function":"set_components",components:{"!attribute_modifiers":{}}}
# attribute_modifiers生成
execute if items entity @s weapon.mainhand minecraft:wooden_sword run data modify storage item: AttributeModifiers set value {attack_damage:5d,attack_speed:-2.4d}
execute if items entity @s weapon.mainhand minecraft:stone_sword run data modify storage item: AttributeModifiers set value {attack_damage:10d,attack_speed:-2.4d}
execute if items entity @s weapon.mainhand minecraft:golden_sword run data modify storage item: AttributeModifiers set value {attack_damage:12d,attack_speed:-2.4d}
execute if items entity @s weapon.mainhand minecraft:iron_sword run data modify storage item: AttributeModifiers set value {attack_damage:20d,attack_speed:-2.4d}
execute if items entity @s weapon.mainhand minecraft:diamond_sword run data modify storage item: AttributeModifiers set value {attack_damage:30d,attack_speed:-2.4d}
execute if items entity @s weapon.mainhand minecraft:netherite_sword run data modify storage item: AttributeModifiers set value {attack_damage:40d,attack_speed:-2.4d}
execute if items entity @s weapon.mainhand minecraft:wooden_shovel run data modify storage item: AttributeModifiers set value {attack_damage:2.5d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:stone_shovel run data modify storage item: AttributeModifiers set value {attack_damage:5d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:golden_shovel run data modify storage item: AttributeModifiers set value {attack_damage:6d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:iron_shovel run data modify storage item: AttributeModifiers set value {attack_damage:7.5d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:diamond_shovel run data modify storage item: AttributeModifiers set value {attack_damage:15d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:netherite_shovel run data modify storage item: AttributeModifiers set value {attack_damage:25d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:wooden_pickaxe run data modify storage item: AttributeModifiers set value {attack_damage:2d,attack_speed:-2.8d}
execute if items entity @s weapon.mainhand minecraft:stone_pickaxe run data modify storage item: AttributeModifiers set value {attack_damage:4d,attack_speed:-2.8d}
execute if items entity @s weapon.mainhand minecraft:golden_pickaxe run data modify storage item: AttributeModifiers set value {attack_damage:5d,attack_speed:-2.8d}
execute if items entity @s weapon.mainhand minecraft:iron_pickaxe run data modify storage item: AttributeModifiers set value {attack_damage:6d,attack_speed:-2.8d}
execute if items entity @s weapon.mainhand minecraft:diamond_pickaxe run data modify storage item: AttributeModifiers set value {attack_damage:12d,attack_speed:-2.8d}
execute if items entity @s weapon.mainhand minecraft:netherite_pickaxe run data modify storage item: AttributeModifiers set value {attack_damage:20d,attack_speed:-2.8d}
execute if items entity @s weapon.mainhand minecraft:wooden_axe run data modify storage item: AttributeModifiers set value {attack_damage:7d,attack_speed:-3.2d}
execute if items entity @s weapon.mainhand minecraft:stone_axe run data modify storage item: AttributeModifiers set value {attack_damage:14d,attack_speed:-3.2d}
execute if items entity @s weapon.mainhand minecraft:golden_axe run data modify storage item: AttributeModifiers set value {attack_damage:17d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:iron_axe run data modify storage item: AttributeModifiers set value {attack_damage:32d,attack_speed:-3.1d}
execute if items entity @s weapon.mainhand minecraft:diamond_axe run data modify storage item: AttributeModifiers set value {attack_damage:42d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:netherite_axe run data modify storage item: AttributeModifiers set value {attack_damage:70d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:wooden_hoe run data modify storage item: AttributeModifiers set value {attack_damage:-3d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:stone_hoe run data modify storage item: AttributeModifiers set value {attack_damage:2d,attack_speed:-2d}
execute if items entity @s weapon.mainhand minecraft:golden_hoe run data modify storage item: AttributeModifiers set value {attack_damage:2d,attack_speed:-3d}
execute if items entity @s weapon.mainhand minecraft:iron_hoe run data modify storage item: AttributeModifiers set value {attack_damage:3d,attack_speed:-1d}
execute if items entity @s weapon.mainhand minecraft:diamond_hoe run data modify storage item: AttributeModifiers set value {attack_damage:6d,attack_speed:0d}
execute if items entity @s weapon.mainhand minecraft:netherite_hoe run data modify storage item: AttributeModifiers set value {attack_damage:10d,attack_speed:0d}
execute if items entity @s weapon.mainhand minecraft:trident run data modify storage item: AttributeModifiers set value {attack_damage:35d,attack_speed:-2.9d}
execute if items entity @s weapon.mainhand minecraft:bow run data modify storage item: AttributeModifiers set value {attack_damage:40d,attack_speed:0d}
execute if items entity @s weapon.mainhand minecraft:crossbow run data modify storage item: AttributeModifiers set value {attack_damage:55d,attack_speed:0d}
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run data modify storage item: AttributeModifiers set value {attack_damage:4d,attack_speed:-2.8d}
# execute if items entity @s weapon.mainhand minecraft:mace run data modify storage item: AttributeModifiers set value {attack_damage:4d,attack_speed:-2.8d}
# アイテム更新
item modify entity @s weapon.mainhand [{"function":"set_attributes","replace":false,"conditions":[{"condition":"inverted","term":{"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"minecraft:attribute_modifiers":{"modifiers":{"contains":[{"attribute":"minecraft:generic.attack_damage","id":"tusb:custom"}]}}}}}}}}],"modifiers":[{"attribute":"minecraft:generic.attack_damage","id":"tusb:default","amount":{"type":"storage","storage":"item:","path":"AttributeModifiers.attack_damage"},"operation":"add_value","slot":"mainhand"}]},{"function":"set_attributes","replace":false,"conditions":[{"condition":"inverted","term":{"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"minecraft:attribute_modifiers":{"modifiers":{"contains":[{"attribute":"minecraft:generic.attack_speed","id":"tusb:custom"}]}}}}}}}}],"modifiers":[{"attribute":"minecraft:generic.attack_speed","id":"tusb:default","amount":{"type":"storage","storage":"item:","path":"AttributeModifiers.attack_speed"},"operation":"add_value","slot":"mainhand"}]},{"function":"set_custom_data","tag":"{CustomAttributes:1b}"}]
# 演出
function makeup:item/custom_attributes
# トリガー解除
advancement revoke @s only item:custom_attributes
