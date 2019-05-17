##############################
### ターゲット探索の種別により振り分け
##############################

execute if entity @s[tag=Target.Ally] as @e[tag=Ally,tag=MayTargeted,sort=nearest] run function behaviour_manager:target/searcher/search_by_sight/angle
execute if entity @s[tag=Target.Enemy] as @e[tag=Enemy,tag=MayTargeted,sort=nearest] run function behaviour_manager:target/searcher/search_by_sight/angle
