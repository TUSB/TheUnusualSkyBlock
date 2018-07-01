



tp @s ^ ^ ^ facing entity @a[scores={ModeSkill=21011..21019},sort=nearest,limit=1]
scoreboard players set $Damage Global 2
execute at @s positioned ^ ^ ^1 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^2 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^3 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^4 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^5 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^6 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^7 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^8 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^8 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
execute at @s positioned ^ ^ ^9 positioned ~ ~-5 ~ as @e[distance=..1,type=snowball,scores={ProjectileSkill=21011..21019}] run scoreboard players add $SnowCount Global 1
scoreboard players operation $Damage Global *= @s SkillAttribute
scoreboard players operation $Damage Global /= $2 Const
scoreboard players operation @s Damage += $Damage Global

tellraw @a {"score":{"name":"@s","objective":"Damage"}}
