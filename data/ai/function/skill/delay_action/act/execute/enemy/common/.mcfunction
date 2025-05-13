#> ai:skill/delay_action/act/execute/enemy/common/
# @within function ai:skill/delay_action/act/execute/enemy/

execute if data storage mob_data: ExecutingAction{Tags:["Paralyze"]} run function ai:skill/delay_action/act/execute/enemy/common/paralyze
