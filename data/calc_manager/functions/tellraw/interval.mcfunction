##############################
### インターバル表示
##############################

scoreboard players operation $Second Global = @s SkillInterval
scoreboard players operation $Second Global /= $20 Const
scoreboard players operation $MilliSecond Global = @s SkillInterval
scoreboard players operation $MilliSecond Global %= $20 Const
scoreboard players operation $MilliSecond Global *= $50 Const
execute if score @s SkillInterval > $0 Const if score $MilliSecond Global matches 0 run title @s actionbar [{"text":"                                                                                                              スキル制限中：","color":"red","bold":true},[{"score":{"name":"$Second","objective":"Global"},"color":"gold"},".000"],"秒"]
execute if score @s SkillInterval > $0 Const if score $MilliSecond Global matches 50 run title @s actionbar [{"text":"                                                                                                              スキル制限中：","color":"red","bold":true},[{"score":{"name":"$Second","objective":"Global"},"color":"gold"},".050"],"秒"]
execute if score @s SkillInterval > $0 Const unless score $MilliSecond Global matches 0..50 run title @s actionbar [{"text":"                                                                                                              スキル制限中：","color":"red","bold":true},[{"score":{"name":"$Second","objective":"Global"},"color":"gold"},".",{"score":{"name":"$MilliSecond","objective":"Global"}}],"秒"]
