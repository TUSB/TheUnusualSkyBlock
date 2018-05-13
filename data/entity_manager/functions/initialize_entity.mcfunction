##############################
### エンティティ削除処理
##############################

### Mobタグ付与
tag @s[type=!minecraft:player,nbt={Attributes:[{Name:"generic.maxHealth"}]}] add Mob

### AbsorptionAmount付与
execute as @s[tag=Mob,nbt={AbsorptionAmount:0f}] store result entity @s AbsorptionAmount float 1 run data get entity @s Health 1

### Initialized付与
tag @s add Initialized

#minecraft:area_effect_cloud
#minecraft:armor_stand
#minecraft:arrow
#minecraft:boat
#minecraft:chest_minecart
#minecraft:commandblock_minecart
#minecraft:dragon_fireball
#minecraft:egg
#minecraft:ender_crystal
#minecraft:ender_pearl
#minecraft:evocation_fangs
#minecraft:eye_of_ender_signal
#minecraft:falling_block
#minecraft:fireball
#minecraft:fireworks_rocket
#minecraft:furnace_minecart
#minecraft:hopper_minecart
#minecraft:item
#minecraft:item_frame
#minecraft:leash_knot
#minecraft:llama_spit
#minecraft:minecart
#minecraft:painting
#minecraft:potion
#minecraft:shulker_bullet
#minecraft:small_fireball
#minecraft:snowball
#minecraft:spawner_minecart
#minecraft:spectral_arrow
#minecraft:tnt
#minecraft:tnt_minecart
#minecraft:wither_skull
#minecraft:xp_bottle
#minecraft:xp_orb



#minecraft:bat
#minecraft:blaze
#minecraft:cave_spider
#minecraft:chicken
#minecraft:cow
#minecraft:creeper
#minecraft:donkey
#minecraft:elder_guardian
#minecraft:ender_dragon
#minecraft:enderman
#minecraft:endermite
#minecraft:evocation_illager
#minecraft:ghast
#minecraft:giant
#minecraft:guardian
#minecraft:horse
#minecraft:husk
#minecraft:illusion_illager
#minecraft:llama
#minecraft:magma_cube
#minecraft:mooshroom
#minecraft:mule
#minecraft:ocelot
#minecraft:parrot
#minecraft:pig
#minecraft:polar_bear
#minecraft:rabbit
#minecraft:sheep
#minecraft:shulker
#minecraft:silverfish
#minecraft:skeleton
#minecraft:skeleton_horse
#minecraft:slime
#minecraft:snowman
#minecraft:spider
#minecraft:squid
#minecraft:stray
#minecraft:vex
#minecraft:villager
#minecraft:villager_golem
#minecraft:vindication_illager
#minecraft:witch
#minecraft:wither
#minecraft:wither_skeleton
#minecraft:wolf
#minecraft:zombie
#minecraft:zombie_horse
#minecraft:zombie_pigman
#minecraft:zombie_villager
