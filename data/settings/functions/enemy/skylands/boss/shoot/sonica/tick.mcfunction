#Function
# AIのもとにテレポート
    execute store result score _ _ run scoreboard players get @s OhMyDatID
    execute as @e[tag=SonicAAI] run scoreboard players operation @s ParentID -= _ _
    execute as @e[tag=SonicAAI,scores={ParentID=0}] run tag @s add NowTarget
    execute as @e[tag=SonicAAI] run scoreboard players operation @s ParentID += _ _
    execute at @e[tag=NowTarget] run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1] eyes
# AIがいなければ死亡
    execute unless entity @e[tag=NowTarget] run data modify entity @s Tags set from storage mob_data: Tags
    execute unless entity @e[tag=NowTarget] run tag @s add Garbage
    execute unless entity @e[tag=NowTarget] run tag @s remove CallOnDeath
    execute unless entity @e[tag=NowTarget] run data modify storage mob_data: Tags set from entity @s Tags
# 燃えている場合、鎮火
    execute unless entity @s[nbt={Fire:-20s}] run data modify entity @s Fire set value -20s
# リセット
    tag @e[tag=NowTarget] remove NowTarget
