##############################
### サブフォルダ分岐 - Global Ground Shoot Security
##############################

execute if entity @s[tag=PollDual] run function enemy_manager:summon/global/ground/shoot/security/poll_dual_45
execute if entity @s[tag=PollSingle] run function enemy_manager:summon/global/ground/shoot/security/poll_single_30
execute if entity @s[tag=PollTriple] run function enemy_manager:summon/global/ground/shoot/security/poll_triple_70
