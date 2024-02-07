
execute if data storage item: EngravingSet.Tier as @e[tag=EngravingItem] at @s run function debug:engraving/make

execute unless data storage item: EngravingSet.Tier if entity @e[tag=EngravingItem] run schedule function debug:engraving/check_tier 1t
