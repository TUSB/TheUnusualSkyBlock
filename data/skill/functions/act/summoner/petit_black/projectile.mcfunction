#> skill:act/summoner/petit_black/projectile

# 着弾時
    execute unless entity @e[tag=PetitBlackBullet,distance=..1] run function skill:act/summoner/petit_black/hit
# 演出
    function makeup:skill/act/summoner/petit_black/projectile
