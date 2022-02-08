
### クリスタルDark支援

function makeup:skill/act/summoner/call_crystal_enhance/dark

function makeup:skill/act/summoner/call_crystal_enhance/common

## TODO マナリフレッシュ実装後適用
# execute if score @s SkillAttribute matches 201 run scoreboard players set $ManaRefreshValue Global 301
# execute if score @s SkillAttribute matches 202 run scoreboard players set $ManaRefreshValue Global 601
# execute if score @s SkillAttribute matches 203 run scoreboard players set $ManaRefreshValue Global 901

# execute if score @s SkillAttribute matches 201..209 run scoreboard players operation @a[distance=..10] ManaRefresh > $ManaRefreshValue Global

# execute if score @s SkillAttribute matches 202..203 run effect give @a[distance=..10] minecraft:saturation 5 1

execute if score @s SkillAttribute matches 201..202 run effect give @e[distance=..10,team=Friendly] minecraft:night_vision 60 127
execute if score @s SkillAttribute matches 203 run effect give @e[distance=..10,team=Friendly] minecraft:night_vision 180 127
