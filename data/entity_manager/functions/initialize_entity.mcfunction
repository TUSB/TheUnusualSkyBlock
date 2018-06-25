##############################
### エンティティ初期化処理
##############################

### Mobタグ付与
tag @s[type=!minecraft:player,team=!Friendly,nbt={Attributes:[{Name:"generic.followRange"},{Name:"generic.attackDamage"}]}] add Mob
tag @s[type=minecraft:ghast] add Mob
tag @s[type=minecraft:bat] add Mob
tag @s[type=minecraft:shulker] add Mob

### Slime系タグ付与
tag @s[type=minecraft:slime] add Slimy
tag @s[type=minecraft:magma_cube] add Slimy
data merge entity @s[tag=Slimy,nbt={AbsorptionAmount:0f}] {DeathLootTable:"minecraft:empty",Tags:["Garbage"]}
tag @s[tag=Slimy] add Mob

### AbsorptionAmount付与
execute as @s[tag=Mob,nbt={AbsorptionAmount:0f}] store result entity @s AbsorptionAmount float 0.1 run data get entity @s Health 10
data merge entity @s[tag=Mob] {Attributes:[{Name:"generic.maxHealth",Base:1024}],Health:1024f}
execute store result score @s[tag=Mob] MobHPMax run data get entity @s[tag=Mob] AbsorptionAmount 10

###追尾
execute if entity @s[tag=AimingPlayer] run function entity_manager:aiming_player

### 飛翔物属性付与
tag @s[type=minecraft:arrow] add Projectile
tag @s[type=minecraft:dragon_fireball] add Projectile
tag @s[type=minecraft:egg] add Projectile
tag @s[type=minecraft:ender_pearl] add Projectile
#tag @s[type=minecraft:eye_of_ender_signal] add Projectile
tag @s[type=minecraft:fireball] add Projectile
tag @s[type=minecraft:potion] add Projectile
tag @s[type=minecraft:shulker_bullet] add Projectile
tag @s[type=minecraft:small_fireball] add Projectile
tag @s[type=minecraft:snowball] add Projectile
tag @s[type=minecraft:spectral_arrow] add Projectile
tag @s[type=minecraft:trident] add Projectile
tag @s[type=minecraft:wither_skull] add Projectile
tag @s[type=minecraft:xp_bottle] add Projectile
tag @s[tag=Projectile,tag=StableProjectile] remove Projectile
tag @s[tag=Projectile] add TickingRequired
tag @s[tag=Projectile] add FlyingRequired
data merge entity @s[tag=TickingRequired,nbt={PortalCooldown:0}] {PortalCooldown:200}

### スポナーカート属性
tag @s[type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]}] add SpawnerCore

### プレイヤー初期化
execute as @s[type=minecraft:player] run function calc_manager:set/id

tag @s[type=minecraft:area_effect_cloud] add 
tag @s[type=minecraft:boat] add 
tag @s[type=minecraft:chest_minecart] add 
tag @s[type=minecraft:commandblock_minecart] add 
tag @s[type=minecraft:ender_crystal] add 
tag @s[type=minecraft:evocation_fangs] add 
tag @s[type=minecraft:falling_block] add 
tag @s[type=minecraft:fireworks_rocket] add 
tag @s[type=minecraft:furnace_minecart] add 
tag @s[type=minecraft:hopper_minecart] add 
tag @s[type=minecraft:item] add 
tag @s[type=minecraft:item_frame] add 
tag @s[type=minecraft:leash_knot] add 
tag @s[type=minecraft:llama_spit] add 
tag @s[type=minecraft:minecart] add 
tag @s[type=minecraft:painting] add 
tag @s[type=minecraft:spawner_minecart] add 
tag @s[type=minecraft:tnt] add 
tag @s[type=minecraft:tnt_minecart] add 
tag @s[type=minecraft:xp_orb] add 

tag @s[tag=FlyingRequired] add TickingTask
tag @s[tag=CooldownRequired] add ObserveCooldown
tag @s[tag=ObserveCooldown] add TickingTask

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
