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


###下向きエンティティ処理
execute if score $Speed PuppetScore matches ..99 positioned ^ ^ ^0.2 run function puppet_manager:set_next/search_down_preparation
execute if score $Speed PuppetScore matches 100..199 positioned ^ ^ ^0.4 run function puppet_manager:set_next/search_down_preparation
execute if score $Speed PuppetScore matches 200.. positioned ^ ^ ^0.8 run function puppet_manager:set_next/search_down_preparation


###上向きエンティティ召喚
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,UpSearcher,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{}}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
###移動用エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/search_up
