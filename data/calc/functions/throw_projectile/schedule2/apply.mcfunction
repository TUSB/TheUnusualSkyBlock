data modify entity @s NoGravity set value 0b
tag @s add SkillProjectile2
#NoGravityなら3tick目にNoGravityを1bに
execute if entity @s[tag=NoGravity] run schedule function calc:throw_projectile/schedule3/ 1t replace
