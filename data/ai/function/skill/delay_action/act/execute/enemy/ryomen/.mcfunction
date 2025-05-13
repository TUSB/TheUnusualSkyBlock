#> ai:skill/delay_action/act/execute/enemy/ryomen/
# @within function ai:skill/delay_action/act/execute/enemy/

# ステータス強化解除
    data modify storage mob_data: Call.Attack set value {Add:-40}
    function ai:skill/change_status/
    tag @s remove RyomenRage

