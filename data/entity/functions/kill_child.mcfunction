tag @s add RealParent
execute as @e[scores={ParentID=0..}] if score @s ParentID = @e[tag=RealParent,limit=1] OhMyDatID run tag @s add Garbage
tag @s remove RealParent