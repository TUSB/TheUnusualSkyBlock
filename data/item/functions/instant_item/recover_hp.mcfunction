data modify storage calc: List set value []
data modify storage calc: List append from storage item: Inventory[].tag.InstantEffect.RecoverHP
execute store result score _ _ run function calc:list/sum/x1
scoreboard players operation @s HealthHealing += _ _

function makeup:skill/act/white_mage/cure/apply
