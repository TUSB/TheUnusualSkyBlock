##############################
### ジェノサイドボム起動状態1召喚 - Global Ground Summon
##############################

summon skeleton ~ ~1 ~ {Tags:[Enemy,WeakPoint,WeakToFire],Silent:true,DeathTime:19s,DeathLootTable:"loot_manager:empty",CustomName:"\"Grumm\"",Attributes:[{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"ef9b5f33-81b6-45a0-a3b7-085c4b806d87",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWJkYTcwZjYzZGFlNmQ5YjAwMDQ0OTdkNGRmMmU1ZTQ2ZjhiZjE2NTRjYmRiMWY1ODUyNTk4MGE4NTdhMDg1MyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:snowball,Tags:[Parameter],Item:{id:snowball,Count:1b,tag:{StatusSettings:{HP:150,LifeTime:20.00d}}}},{id:area_effect_cloud,CustomNameVisible:true,CustomName:"[{\"text\":\"|\",\"color\":\"red\",\"bold\":\"true\",\"obfuscated\":\"true\"},{\"text\":\"|\",\"color\":\"gold\"},{\"text\":\"|\",\"color\":\"yellow\"},{\"text\":\"|\",\"color\":\"green\"},{\"text\":\"|\",\"color\":\"dark_aqua\"},{\"text\":\"|\",\"color\":\"aqua\"},{\"text\":\"|\",\"color\":\"blue\"},{\"text\":\"|\",\"color\":\"light_purple\"},{\"text\":\"-=< \",\"color\":\"white\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\"１\",\"color\":\"red\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\" >=-\",\"color\":\"white\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\"|\",\"color\":\"light_purple\"},{\"text\":\"|\",\"color\":\"blue\"},{\"text\":\"|\",\"color\":\"aqua\"},{\"text\":\"|\",\"color\":\"dark_aqua\"},{\"text\":\"|\",\"color\":\"green\"},{\"text\":\"|\",\"color\":\"yellow\"},{\"text\":\"|\",\"color\":\"gold\"},{\"text\":\"|\",\"color\":\"red\"}]",Particle:"minecraft:entity_effect",Color:16720384,Duration:20,Radius:0.3f}]}
playsound minecraft:entity.ender_eye.death master @a[distance=..32] ~ ~ ~ 10 2
