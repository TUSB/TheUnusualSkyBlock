##############################
### スノーゴーレム雪玉タグ付与
##############################

execute positioned ~ ~1.52 ~ run scoreboard players set @e[distance=..5,type=minecraft:snowball,sort=nearest,limit=1] ProjectileSkill 100000
execute positioned ~ ~1.52 ~ run scoreboard players operation @e[distance=..5,type=minecraft:snowball,sort=nearest,limit=1] SkillAttribute = @s SkillAttribute
