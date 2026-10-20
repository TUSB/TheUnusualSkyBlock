#> skill:act/summoner/petit_black/hit

# タグ付け
    tag @s add PetitBlackStart
# 位置補正
    tp @s ~ ~0.5 ~
# 着弾時初期化処理
    scoreboard players set @s Interval 0
    data modify entity @s Duration set value 115
    data modify entity @s Age set value 0
    summon item_display ~ ~0.5 ~ {Tags:[Skill,PetitBlackDirection],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},interpolation_duration:100,item:{id:"minecraft:firework_star",components:{"minecraft:custom_model_data":{floats:[1040.0f]},"minecraft:firework_explosion":{shape:"small_ball",colors:[I;11144657]}},count:1}}
    ride @e[tag=!Initialized,tag=PetitBlackDirection,distance=..1,limit=1] mount @s
#演出
    function makeup:skill/act/summoner/petit_black/hit
