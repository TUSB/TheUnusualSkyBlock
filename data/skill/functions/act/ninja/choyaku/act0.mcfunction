##############################
### 跳躍 分岐
##############################

execute unless data storage skill: Skill{Trigger:"スニークする"} unless data storage skill: Skill{Trigger:"ジャンプする"} run function skill:act/ninja/choyaku/toggle
execute if data storage skill: Skill{Trigger:"スニークする"} run function skill:act/ninja/choyaku/sneak
execute if data storage skill: Skill{Trigger:"ジャンプする"} run function skill:act/ninja/choyaku/jump
