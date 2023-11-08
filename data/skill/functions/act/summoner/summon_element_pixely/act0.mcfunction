#> skill:act/summoner/summon_element_pixely/act0
#
# エレメントピクセリー召喚 前方探索
#
# @within function skill:practice/act/summoner

# 前方を探索
    data modify storage calc: SearchForward set value {Loop:5,Stop:[Block],Align:1b}
    execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

# プレイヤーにタグを付与
# 装備データ保存
    tag @s add SummonPixely
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."一時保存".SummonPixelyBoost set from storage item: Equipments
    schedule function skill:act/summoner/summon_element_pixely/schedule0 2t

# 実行
    execute at 0-0-0-0-0 run function skill:act/summoner/summon_element_pixely/act1