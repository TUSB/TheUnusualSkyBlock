##############################
### ジェノサイドボム起動状態2召喚 - Global Ground Summon
##############################

summon skeleton ~ ~1 ~ {Tags:[Enemy,WeakPoint,WeakToFire],Silent:true,DeathTime:19s,DeathLootTable:"loot_manager:empty",CustomName:"\"Grumm\"",Attributes:[{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"5b0ef1c1-60d2-475a-944a-24ddba13f82d",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2VjODg1MjI2OTg4ZmE5NjkyYzBhZDc3ZDQ2ZjcwN2EwNDUzZTVjOWIwMDI4MDgyZDZmOGMxZjVkM2QwOTJkYSJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{SkillOnFin:[{Name:"Call",Once:On,Target:[Global,Ground,Summon,Trap,01GenocideBomb]}],StatusSettings:{HP:100,LifeTime:20.00d}}}},{id:shulker_bullet,Tags:[Enemy,Bullet],CustomName:"\"テスト弾\"",NoGravity:true,Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{TargetSettings:{Target:"Ally",Active:"Always",Detect:"ByXRay",Destination:"Memorize",FollowRange:32.00d},MoveSettingsList:[{Forward:{Speed:0.1d},Repeater:{End:{Mean:10d,Range:0.00d},Recycle:Off}}]}}}]}]}
playsound minecraft:entity.ender_eye.death master @a[distance=..32] ~ ~ ~ 10 1.8
