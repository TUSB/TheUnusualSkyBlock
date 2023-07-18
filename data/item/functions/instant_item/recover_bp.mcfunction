data modify storage calc: List set value []
data modify storage calc: List append from storage item: Inventory[].tag.InstantEffect.RecoverBP
execute store result score _ _ run function calc:list/sum/x1

execute unless score $World Burst matches -1 run scoreboard players operation $World Burst += _ _
execute unless score $World Burst matches -1 run function skill:burst/bossbar

function makeup:skill/burst/get
