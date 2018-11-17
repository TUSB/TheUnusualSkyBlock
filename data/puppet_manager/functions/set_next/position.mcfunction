##############################
### からくり移動位置設定
##############################

###移動用エンティティ召喚
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,PuppetNext,Initializing,CooldownRequired,NativeTask,ObserveCooldown],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{},Team:NoCollision}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID

###向き取得
execute positioned ^ ^ ^1 as @e[distance=..2,tag=Initializing,limit=1] run function calc_manager:get/direction1

##移動用エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/destination

###上下エンティティ召喚
function puppet_manager:set_next/search/root
