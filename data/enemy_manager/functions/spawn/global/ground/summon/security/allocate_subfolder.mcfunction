##############################
### サブフォルダ分岐 - Global Ground Summon Security
##############################

execute if entity @s[tag=CoreDual] run function enemy_manager:summon/global/ground/summon/security/core_dual_1
execute if entity @s[tag=CoreSingle] run function enemy_manager:summon/global/ground/summon/security/core_single_1
execute if entity @s[tag=CoreTriple] run function enemy_manager:summon/global/ground/summon/security/core_triple_1
