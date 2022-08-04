
function oh_my_dat:please

execute in area:control_area run data modify block 2 3 2 Text1 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OriginalName

scoreboard players set _ _ 100
scoreboard players operation _ HP = @s HP
scoreboard players operation _ HP *= _ _
scoreboard players operation _ HPMax = @s HPMax
scoreboard players operation _ HP /= _ HPMax

execute in area:control_area if score _ HP matches ..10 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"|","color":"red"},{"text":"|||||||||"}]'
execute in area:control_area if score _ HP matches 11..20 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"||","color":"red"},{"text":"||||||||"}]'
execute in area:control_area if score _ HP matches 21..30 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"|||","color":"red"},{"text":"|||||||"}]'
execute in area:control_area if score _ HP matches 31..40 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"||||","color":"red"},{"text":"||||||"}]'
execute in area:control_area if score _ HP matches 41..50 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"|||||","color":"red"},{"text":"|||||"}]'
execute in area:control_area if score _ HP matches 51..60 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"||||||","color":"red"},{"text":"||||"}]'
execute in area:control_area if score _ HP matches 61..70 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"|||||||","color":"red"},{"text":"|||"}]'
execute in area:control_area if score _ HP matches 71..80 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"||||||||","color":"red"},{"text":"||"}]'
execute in area:control_area if score _ HP matches 81..90 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"|||||||||","color":"red"},{"text":"|"}]'
execute in area:control_area if score _ HP matches 91..100 run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true}," ",{"translate":"HP","color":"red"},":",{"text":"||||||||||","color":"red"},{"text":""}]'

execute in area:control_area run data modify entity @s CustomName set from block 2 3 2 Text1
