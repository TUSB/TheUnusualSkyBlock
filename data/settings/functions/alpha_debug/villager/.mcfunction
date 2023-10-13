
# 座標記憶
data modify storage anywhere: at.Pos set from entity @s Pos
data modify storage anywhere: at.Rotation set from entity @s Rotation
data modify storage anywhere: at.Dimension set from entity @s Dimension

function area:jump_to/skylands/
function settings:alpha_debug/villager/skylands
function area:jump_to/flying_island/
function settings:alpha_debug/villager/flying_island
function area:jump_to/cloudia/abbey
function settings:alpha_debug/villager/cloudia

function #anywhere:tp