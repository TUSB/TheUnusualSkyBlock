##############################
### ジェノサイドボム制止状態召喚 - Global Ground Summon
##############################

summon minecraft:skeleton ~ ~1 ~ {Silent:true,DeathTime:19s,DeathLootTable:"loot_manager:empty",CustomName:"\"Grumm\"",AbsorptionAmount:5f,FallDistance:-99999f,PortalCooldown:1600,Tags:["WeakPoint","WeakToFire","TickingRequired","HasSkill","CallOnDeath","Global","Ground","Summon","Trap","03GenocideBomb"],Attributes:[{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"69fe1dbd-e33f-43f0-9420-7c05e325e1bb",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQzODVlYzk1OTAyOTFjNjkzNGU4YmNjMzVmNTQxMmM5YjhjODlhYWMzOTQxMDVkNWU1MzMxZmFiNzgyNjJjNCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:true,CustomName:"[{\"text\":\"|\",\"color\":\"red\",\"bold\":\"true\",\"obfuscated\":\"true\"},{\"text\":\"|\",\"color\":\"gold\"},{\"text\":\"|\",\"color\":\"yellow\"},{\"text\":\"|\",\"color\":\"green\"},{\"text\":\"|\",\"color\":\"dark_aqua\"},{\"text\":\"|\",\"color\":\"aqua\"},{\"text\":\"|\",\"color\":\"blue\"},{\"text\":\"|\",\"color\":\"light_purple\"},{\"text\":\"-=< \",\"color\":\"white\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\"ジェノサイドボム停止中\",\"color\":\"red\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\" >=-\",\"color\":\"white\",\"bold\":\"true\",\"obfuscated\":\"false\"},{\"text\":\"|\",\"color\":\"light_purple\"},{\"text\":\"|\",\"color\":\"blue\"},{\"text\":\"|\",\"color\":\"aqua\"},{\"text\":\"|\",\"color\":\"dark_aqua\"},{\"text\":\"|\",\"color\":\"green\"},{\"text\":\"|\",\"color\":\"yellow\"},{\"text\":\"|\",\"color\":\"gold\"},{\"text\":\"|\",\"color\":\"red\"}]",Particle:"minecraft:block minecraft:air",Duration:30,Radius:0.01f}]}
playsound minecraft:block.end_portal_frame.fill master @a[distance=..32] ~ ~ ~ 1.5 0 0.3
