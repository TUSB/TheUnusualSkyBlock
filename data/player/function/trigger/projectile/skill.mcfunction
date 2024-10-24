#> player:trigger/projectile/skill
#狩人
execute if entity @s[tag=ChainArrow] run function skill:act/hunter/chain_arrow/hit
execute if entity @s[tag=StakesSucceeded] run function makeup:skill/act/hunter/stakes_fire/hit
execute if entity @s[tag=BlastSpark] run function skill:act/hunter/blast_spark/hit
#忍者
execute if entity @s[tag=Shuriken] run function makeup:skill/act/ninja/shuriken/hit
#召喚士
execute if entity @s[tag=PomPom] run function skill:act/summoner/pompom/hit
#白魔導士
execute if entity @s[tag=ShiningBolt] run function makeup:skill/act/white_mage/shining_bolt/hit
#黒魔導士
execute if entity @s[tag=WindWallTornado] run function makeup:skill/act/black_mage/wind_wall/hit
#共通
execute if entity @s[tag=WeakPaint] at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] unless score @s Weakness matches 1.. run function skill:act/common/weakness_paint/hit
