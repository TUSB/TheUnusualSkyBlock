##############################
### 連舞 分岐
##############################

execute if data storage skill: Skill{Trigger:"手に持って右クリック"} run function skill:act/ninja/tsuremai/toggle
execute if data storage skill: Skill{Trigger:"近接攻撃する"} run function skill:act/ninja/tsuremai/attack
