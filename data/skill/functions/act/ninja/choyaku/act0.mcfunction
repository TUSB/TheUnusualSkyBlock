##############################
### 跳躍 分岐
##############################

execute if data storage skill: Skill{Trigger:"人参棒を使用"} run function skill:act/ninja/choyaku/toggle
execute if data storage skill: Skill{Trigger:"スニークする"} run function skill:act/ninja/choyaku/sneak
execute if data storage skill: Skill{Trigger:"ジャンプする"} run function skill:act/ninja/choyaku/jump
