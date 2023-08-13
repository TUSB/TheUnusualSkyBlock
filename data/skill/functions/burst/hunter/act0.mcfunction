scoreboard players operation _ _ = @s HunterLv
execute if score $Tick Count matches 01 as @a[distance=..32] at @s positioned ~ ~3 ~ facing entity @e[tag=Enemy,distance=..32,limit=1,sort=nearest] eyes run function skill:burst/hunter/act1
execute if score $Tick Count matches 05 as @a[tag=BurstArrow,distance=..32] at @s positioned ~ ~3 ~ facing entity @e[tag=Enemy,distance=..32,limit=1,sort=random] eyes run function skill:burst/hunter/act1
execute if score $Tick Count matches 09 as @a[tag=BurstArrow,distance=..32] at @s positioned ~ ~3 ~ facing entity @e[tag=Enemy,distance=..32,limit=1,sort=nearest] eyes run function skill:burst/hunter/act1
execute if score $Tick Count matches 13 as @a[tag=BurstArrow,distance=..32] at @s positioned ~ ~3 ~ facing entity @e[tag=Enemy,distance=..32,limit=1,sort=random] eyes run function skill:burst/hunter/act1
execute if score $Tick Count matches 17 as @a[tag=BurstArrow,distance=..32] at @s positioned ~ ~3 ~ facing entity @e[tag=Enemy,distance=..32,limit=1,sort=random] eyes run function skill:burst/hunter/act1
