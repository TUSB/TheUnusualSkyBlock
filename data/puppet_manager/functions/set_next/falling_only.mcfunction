##############################
### からくり落下のみ設定
##############################

######移動用エンティティ召喚
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,PuppetNext,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{}}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID

###横POSを殺しておく
scoreboard players set $DestinationX PuppetScore 0
scoreboard players set $DestinationZ PuppetScore 0

###移動用エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/destination

###下向きエンティティ召喚
summon minecraft:villager ^ ^ ^0.1 {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,DownSearcher,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{}}
execute positioned ^ ^ ^0.1 run scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
###移動用エンティティに対して行う処理
execute positioned ^ ^ ^0.1 as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/search_down


###上向きエンティティ召喚
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,UpSearcher,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{}}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
###移動用エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/search_up
