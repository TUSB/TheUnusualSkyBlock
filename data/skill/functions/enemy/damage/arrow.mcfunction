#モブに矢をヒットさせる
execute in area:control_area rotated ~ 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run function calc:geometry/tp_00000
execute rotated ~ 0 positioned ^ ^0.3 ^-0.8 run summon arrow ^ ^ ^ {Tags:[DamageArrow,CooldownRequired],PortalCooldown:5,pickup:2b,damage:1d}
execute rotated ~ 0 positioned ^ ^0.3 ^-0.8 as @e[tag=DamageArrow,distance=0,limit=1] run data modify entity @s {} merge from storage mob_data: Call.Arrow
execute rotated ~ 0 positioned ^ ^0.3 ^-0.8 as @e[tag=DamageArrow,distance=0,limit=1] run data modify entity @s Motion set from entity 0-0-0-0-0 Pos
