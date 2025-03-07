#> skill:shortcut/gui/
### GUI生成

function skill:shortcut/reset
summon area_effect_cloud ^ ^ ^ {Tags:[SkillShortcut,Center],Duration:50,CustomNameVisible:1b}

#時計回り　10～15のID付与
data modify storage skill: SkillShortcut set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut
scoreboard players set _ SkillShortcut 10

execute positioned ^ ^2.6 ^ run function skill:shortcut/gui/edge
execute positioned ^-2.25 ^1.3 ^ run function skill:shortcut/gui/edge
execute positioned ^-2.25 ^-1.3 ^ run function skill:shortcut/gui/edge
execute positioned ^2.25 ^-1.3 ^ run function skill:shortcut/gui/edge
execute positioned ^2.25 ^1.3 ^ run function skill:shortcut/gui/edge
execute positioned ^ ^-2.6 ^ run function skill:shortcut/gui/edge

execute as @e[tag=SkillShortcut,tag=!Initialized,distance=..3] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=SkillShortcut,tag=!Initialized,distance=..3] ParentID = @s OhMyDatID

function makeup:skill/shortcut/sound
