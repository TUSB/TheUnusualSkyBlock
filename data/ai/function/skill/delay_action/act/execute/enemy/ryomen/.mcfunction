#> skill:enemy/delay_action/act/execute/enemy/ryomen/
# @within function skill:enemy/delay_action/act/execute/enemy/

# ステータス強化解除
    data modify storage mob_data: Call.Attack set value {Add:-40}
    function skill:enemy/change_status/
    tag @s remove RyomenRage

