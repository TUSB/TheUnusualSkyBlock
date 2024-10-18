#> player:trigger/talk/update_offers
### 取引更新

data remove storage tusb_mob: "即時ステータス"
data modify entity 0-0-0-0-0 Tags set value []
data modify entity 0-0-0-0-0 Tags set from entity @s ArmorItems[0].components."minecraft:custom_data".SpawnTags
execute as 0-0-0-0-0 run function settings:enemy/
data modify entity @s Offers set from storage tusb_mob: "即時ステータス"."ベース".Offers
execute at @s facing entity @a[limit=1,sort=nearest] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
