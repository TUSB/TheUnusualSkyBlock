###設置場所上方向探索
execute unless block ~ ~0.5 ~ #block:no_collision run scoreboard players set $LoopCount _ 17
scoreboard players add $LoopCount _ 1
execute if score $LoopCount _ matches ..16 positioned ~ ~0.5 ~ run function skill:enemy/icicle_magic/icicle_summoner/find_place_above/start
execute if score $LoopCount _ matches 17.. run function skill:enemy/icicle_magic/icicle_summoner/find_place_above/end