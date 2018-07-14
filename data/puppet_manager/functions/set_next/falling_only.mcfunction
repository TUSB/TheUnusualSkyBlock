##############################
### からくり落下のみ設定
##############################

######移動用エンティティ召喚
summon minecraft:villager ~ ~ ~ {Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d}],Invulnerable:true,FallDistance:-100f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,PuppetNext,Initializing,CooldownRequired,TickingTask,ObserveCooldown],PortalCooldown:1,DeathTime:19s,Silent:true,Offers:{},Team:NoCollision}
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID

###横POSを殺しておく
scoreboard players set $X1 Global 0
scoreboard players set $Z1 Global 0

###移動用エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/destination

###上下エンティティ召喚
function puppet_manager:set_next/search/root
