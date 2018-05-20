##############################
### からくり移動位置設定
##############################

###移動用エンティティ召喚
summon minecraft:villager ~ ~ ~ {Age:-10,Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d},{"Name":"generic.maxHealth",Base:0.1d}],Health:0.1f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,PuppetNext,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true}
###IDリンク
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
###次エンティティに対して行う処理
execute as @e[distance=0,tag=Initializing,limit=1] run function puppet_manager:set_next/position2
