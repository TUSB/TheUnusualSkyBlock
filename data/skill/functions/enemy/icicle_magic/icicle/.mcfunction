execute positioned as @s run teleport @s ~ ~-1 ~
###ここらへんにダメージ判定
execute unless block ~ ~ ~ #main:no_collision run function skill:enemy/icicle_magic/icicle/fall
function makeup:skill/enemy/icicle_magic/icicle