##############################
### からくり移動位置設定
##############################

###移動用エンティティ召喚
summon minecraft:villager ~ ~ ~ {IsBaby:true,Attributes:[{"Name":"generic.knockbackResistance",Base:1d},{"Name":"generic.followRange",Base:0d},{"Name":"generic.maxHealth",Base:0.1d}],Health:0.1f,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Initialized,PuppetNext,Initializing,CooldownRequired],PortalCooldown:1,DeathTime:19s,Silent:true}
###IDリンク
scoreboard players operation @e[distance=0,tag=Initializing,limit=1] ID = @s ID
###位置調整
execute as @e[distance=0,tag=Initializing,limit=1] run tp @s ~ ~-299 ~
###Motion付与
data merge entity @e[tag=Initializing,limit=1] {Motion:[0d,-10d,0d]}
###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
