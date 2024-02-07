#> skill:act/summoner/petit_black/tick

# 分岐
    execute if entity @s[tag=PetitBlackStart] run function skill:act/summoner/petit_black/black_hole
    execute unless entity @s[tag=PetitBlackStart] run function skill:act/summoner/petit_black/projectile
