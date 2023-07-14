data modify storage calc: List set value []
data modify storage calc: List append from storage item: Inventory[].tag.InstantEffect.RecoverBP
execute store result score _ _ run function calc:list/sum/x1

execute if score $World Burst matches 0.. run scoreboard players operation $World Burst += _ _
execute if score $World Burst matches 0.. run function skill:burst/bossbar
