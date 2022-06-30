#狩人
execute if entity @s[tag=ChainArrow] run function skill:act/hunter/chain_arrow/hit
execute if entity @s[tag=StakesSucceeded] run function makeup:skill/act/hunter/stakes_fire/hit
#忍者
execute if entity @s[tag=Shuriken] run function makeup:skill/act/ninja/shuriken/hit
#召喚士
execute if entity @s[tag=PomPom] run function skill:act/summoner/pompom/hit
#白魔道士
execute if entity @s[tag=ShiningBolt] run function skill:act/white_mage/shining_bolt/hit
#黒魔導士
execute if entity @s[tag=WindWallTornado] run function makeup:skill/act/black_mage/wind_wall/hit