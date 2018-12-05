##############################
### エンティティ初期化処理
##############################

### 不要アイテム削除
kill @s[type=item,nbt={Item:{tag:{NeverRemain:true}}}]

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

### Vexタグ付与
execute if entity @s[tag=BoundPlayer] positioned as @s run function entity_manager:bound_player

###鶏騎乗タイプ削除
tag @s[type=minecraft:chicken,nbt={Passengers:[{}]}] add Vehicle

###運び屋
tag @s[nbt={Passengers:[{Tags:[Cargo]}]}] add Mule
data merge entity @s[tag=Cargo] {PortalCooldown:40,Age:0,Duration:42,Time:559}
tag @s[tag=Cargo] add CooldownRequired

###タライ位置調整
execute if entity @s[tag=AbovePlayer] at @a[distance=..32,sort=nearest,limit=1] run tp @s ~ ~5 ~
execute if entity @s[tag=AboveEnemy] at @e[distance=..32,tag=Mob,sort=nearest,limit=1] run tp @s ~ ~5 ~
execute if entity @s[tag=NeverRemain] run data merge entity @s {FallHurtMax:2147483647,FallingDistance:1E10f,DropItem:false,BlockState:{Name:"minecraft:command_block"},TileEntityData:{Command:"/setblock ~ ~ ~ minecraft:air",auto:true}}

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
tag @s[type=minecraft:experience_bottle] add Projectile
tag @s[tag=Projectile,tag=!Cargo] add TickingRequired
tag @s[tag=Projectile] add FlyingRequired
data merge entity @s[tag=TickingRequired,nbt={PortalCooldown:0}] {PortalCooldown:200}

### スポナーカート属性
execute if score $Deploy Settings matches 1 if entity @s[type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]}] if block ~ ~1 ~ minecraft:command_block run tag @s add SpawnerHolder
tag @s[tag=SpawnerHolder] add Spawner
execute if score $Deploy Settings matches 1 if entity @s[type=minecraft:spawner_minecart] align xyz if entity @e[dy=0,type=minecraft:armor_stand,nbt={Passengers:[{id:"minecraft:spawner_minecart"}]},limit=1] if block ~ ~1 ~ minecraft:command_block run tag @s add Spawner
execute as @s[tag=OneOff] run data merge entity @s {SpawnPotentials:[{Entity:{id:"minecraft:area_effect_cloud",Tags:[Stopper]}}],MinSpawnDelay:10000s}

###追尾
execute if entity @s[tag=AimOnInit,tag=!Bullet] run function entity_manager:aiming_player
execute if entity @s[tag=RandomRotation,tag=!Bullet] run function entity_manager:random_rotation

### プレイヤー初期化
execute as @s[type=minecraft:player] run function skill_manager:set/initialize

tag @s[type=minecraft:area_effect_cloud] add
tag @s[type=minecraft:boat] add
tag @s[type=minecraft:chest_minecart] add
tag @s[type=minecraft:command_block_minecart] add
tag @s[type=minecraft:end_crystal] add
tag @s[type=minecraft:evoker_fangs] add
tag @s[type=minecraft:falling_block] add
tag @s[type=minecraft:firework_rocket] add
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
tag @s[type=minecraft:experience_orb] add

tag @s[tag=FlyingRequired] add NativeTask
tag @s[tag=CooldownRequired] add ObserveCooldown
tag @s[tag=ObserveCooldown] add NativeTask
tag @s[tag=Swim] add NativeTask
tag @s[tag=FacingPlayer] add NativeTask
tag @s[tag=LimitedTrading] add NativeTask
tag @s[tag=AbyssWarp] add NativeTask
tag @s[tag=Homing] add NativeTask
tag @s[tag=Reversed] add NativeTask
tag @s[tag=ReversedOnHurt] add NativeTask
# tag @s[tag=Kurukuru] add NativeTask
tag @s[tag=Mob,team=Friendly] remove Mob
tag @s[tag=Mob,nbt={Invulnerable:true}] remove Mob
tag @s[nbt={NoAI:true}] add NoAI
team join Enemy @s[tag=Mob]

execute as @s[tag=Mob] run function entity_manager:modify_mob

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
