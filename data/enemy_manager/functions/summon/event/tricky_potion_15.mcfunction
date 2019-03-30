##############################
### トリッキーポーション召喚 - Event  
##############################

function calc_manager:set_random
scoreboard players operation @s Global %= $3 Const

#ランダムパターン1 - トマホーク投げ、火炎瓶(炎上と接触時爆発効果)
execute if score @s Global matches 0 facing entity @e[distance=..16,gamemode=!creative,gamemode=!spectator] eyes anchored eyes run summon minecraft:villager ^ ^ ^1 {Silent:true,Health:0f,DeathTime:19s,Passengers:[{id:"minecraft:zombie",CustomName:"\"Grumm\"",AbsorptionAmount:1f,Silent:true,IsBaby:true,PortalCooldown:100,Air:100s,DeathLootTable:"loot_manager:x",DeathLootTableSeed:10010,Tags:["WeakPoint","WeakToGround","TickingRequired","Swim","InAir","Homing","Homing4","HomingHorizontal","Approach","Approach8","RandomRotation","Direction","HasSkill","CallOnDeath","Event","StardustBomb"],Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.05d,UUIDLeast:0l}]},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:25b,Amplifier:100b,Duration:3,ShowParticles:false}],Passengers:[{id:"minecraft:potion",CustomName:"\"火炎瓶\"",Tags:["TickingRequired","BlastBulletLv5"],PortalCooldown:999,Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16731392,CustomPotionEffects:[{Id:14b,Amplifier:123b,Duration:1,ShowParticles:false}]}}}]}]}

#ランダムパターン2 - ホーミング、スリップ(追跡して当たったらスリップ)
execute if score @s Global matches 1 facing entity @e[distance=..16,gamemode=!creative,gamemode=!spectator] eyes anchored eyes run summon minecraft:potion ^ ^ ^1 {CustomName:"\"すべり薬\"",NoGravity:true,Tags:["FollowPlayer","AimOnInit","Direction","TickingRequired"],Air:300s,PortalCooldown:250,FallDistance:24f,Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:8421631,CustomPotionEffects:[{Id:1b,Amplifier:80b,Duration:20},{Id:7b,Amplifier:0b,Duration:1}]}}}

#ランダムパターン3 - ストレート、採掘速度低下薬
execute if score @s Global matches 2 facing entity @e[distance=..16,gamemode=!creative,gamemode=!spectator] eyes anchored eyes run summon minecraft:potion ^ ^ ^1 {CustomName:"\"採掘速度低下薬\"",NoGravity:true,Tags:["AimOnInit","Direction","TickingRequired"],Air:250s,PortalCooldown:50,FallDistance:24f,Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:5065984,CustomPotionEffects:[{Id:4b,Amplifier:3b,Duration:100}]}}}

scoreboard players reset @s Global
