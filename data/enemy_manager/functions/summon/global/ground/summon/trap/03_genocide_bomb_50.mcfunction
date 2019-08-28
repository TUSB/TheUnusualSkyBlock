##############################
### ジェノサイドボム起動状態3召喚 - Global Ground Summon
##############################

summon skeleton ~ ~1 ~ {Tags:[Enemy,WeakPoint,WeakToFire],Silent:true,DeathTime:19s,DeathLootTable:"loot_manager:empty",CustomName:"\"Grumm\"",Attributes:[{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"47b9206f-53dc-4293-8fcc-d622a1f00271",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2EzOWRjZDNmOTQ5MDU5M2E3OWUyNmM1YzlkYmU4ODY4OTVhNDcwYjgxOGRiZDU1OWE3YmIzZDc0MmUyMWExYiJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{SkillOnFin:[{Name:"Call",Once:On,Target:[Global,Ground,Summon,Trap,02GenocideBomb]}],StatusSettings:{HP:50,LifeTime:20.00d}}}},{id:husk,Tags:[Enemy],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{TargetSettings:{Target:"Ally",Active:"Always",Detect:"Nearest",Destination:"Update",FollowRange:32.00d},MoveSettingsList:[{SpinSpeed:3d,Forward:{Speed:0.1d},Upward:{Speed:0.1d},Leftward:{Speed:0.1d},Repeater:{End:{Mean:10d,Range:10d},Recycle:On}}]}}}]}]}
particle minecraft:item minecraft:magenta_stained_glass_pane ~ ~0.5 ~ 0.35 0.35 0.35 0.35 40 force @a[tag=ShowParticles] 
playsound minecraft:block.glass.break master @a[distance=..32] ~ ~ ~ 0.5 0 0.1 
playsound minecraft:block.beacon.deactivate master @a[distance=..32] ~ ~ ~ 1 2 0.1 
playsound minecraft:entity.ender_eye.death master @a[distance=..32] ~ ~ ~ 10 1.6
