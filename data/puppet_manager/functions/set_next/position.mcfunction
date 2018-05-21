##############################
### からくり移動位置設定
##############################

###移動用エンティティ召喚
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,PuppetNext,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{}}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID

###移動元座標代入
execute store result score $SourceX PuppetScore run data get entity @e[distance=0,tag=Initializing,limit=1] Pos[0] 10000
execute store result score $SourceY PuppetScore run data get entity @e[distance=0,tag=Initializing,limit=1] Pos[1] 10000
execute store result score $SourceZ PuppetScore run data get entity @e[distance=0,tag=Initializing,limit=1] Pos[2] 10000

###移動先座標代入
summon minecraft:armor_stand ^ ^ ^1 {Marker:true,Invisible:true,Invulnerable:true,Tags:[Toward]}
execute positioned ^ ^ ^1 store result score $DestinationX PuppetScore run data get entity @e[distance=..0.001,tag=Toward,limit=1] Pos[0] 10000
execute positioned ^ ^ ^1 store result score $DestinationY PuppetScore run data get entity @e[distance=..0.001,tag=Toward,limit=1] Pos[1] 10000
execute positioned ^ ^ ^1 store result score $DestinationZ PuppetScore run data get entity @e[distance=..0.001,tag=Toward,limit=1] Pos[2] 10000
execute positioned ^ ^ ^1 run kill @e[distance=..0.001,tag=Toward,limit=1]

###差分取得
scoreboard players operation $DestinationX PuppetScore -= $SourceX PuppetScore
scoreboard players operation $DestinationY PuppetScore -= $SourceY PuppetScore
scoreboard players operation $DestinationZ PuppetScore -= $SourceZ PuppetScore

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
