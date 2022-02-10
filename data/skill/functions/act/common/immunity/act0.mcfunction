
### 免疫

execute if score _ Level matches 1 run scoreboard players add @s ResistEffects 20
execute if score _ Level matches 2 run scoreboard players add @s ResistEffects 40
execute if score _ Level matches 3 run scoreboard players add @s ResistEffects 60
execute if score _ Level matches 4 run scoreboard players add @s ResistEffects 80

scoreboard players set _ _ 100
scoreboard players operation @s ResistEffects < _ _

function makeup:skill/act/common/immunity/act0
