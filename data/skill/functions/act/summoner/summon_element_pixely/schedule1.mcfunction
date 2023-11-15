#> skill:act/summoner/summon_element_pixely/schedule1
#
# Boost情報を仲間に保存する
#
# @within function skill:act/summoner/summon_element_pixely/schedule0

# Oh_My_Datから取り出す 
    function oh_my_dat:please
    data modify storage item: Equipments set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."一時保存".SummonPixelyBoost
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."一時保存".SummonPixelyBoost

# 味方モブの属性耐性に代入する
    execute as @e[distance=..8,type=slime,tag=Pixely,tag=!PixelyInit,sort=nearest,limit=1] run function skill:act/summoner/summon_element_pixely/schedule2

# タグ外し
    tag @s remove SummonPixely