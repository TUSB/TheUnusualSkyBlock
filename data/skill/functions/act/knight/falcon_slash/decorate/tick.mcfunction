##############################
### はやぶさ斬り演出中
##############################

scoreboard players remove @s FalconSlashTimer 1
execute if score @s FalconSlashTimer matches ..0 run function skill_manager:knight/falcon_slash/decorate/finalize
