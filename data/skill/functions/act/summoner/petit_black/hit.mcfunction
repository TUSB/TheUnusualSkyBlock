#> skill:act/summoner/petit_black/hit

# タグ付け
    tag @s add PetitBlackStart
# 位置補正
    tp @s ~ ~0.5 ~
# 着弾時初期化処理
    scoreboard players set @s Interval 0
    data modify entity @s Duration set value 60
#演出
    function makeup:skill/act/summoner/petit_black/hit