##############################
### 上下サーチャー準備
##############################

###下向きエンティティ準備
execute if score $Speed PuppetScore matches ..99 positioned ^ ^ ^0.2 run function puppet_manager:set_next/search/down_preparation
execute if score $Speed PuppetScore matches 100..199 positioned ^ ^ ^0.4 run function puppet_manager:set_next/search/down_preparation
execute if score $Speed PuppetScore matches 200.. positioned ^ ^ ^0.8 run function puppet_manager:set_next/search/down_preparation

###上向きエンティティ準備
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,UpSearcher,Initializing,CooldownRequired,NativeTask,ObserveCooldown],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{}}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
###移動用エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/search/up
