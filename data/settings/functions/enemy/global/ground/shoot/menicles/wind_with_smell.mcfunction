#Function
# 演出
function makeup:skill/enemy/wind_with_smell
playsound ambient.cave_13 hostile @a[distance=..64] ~ ~ ~ 5 1.6 1
playsound ambient.crimson_forest.mood_4 hostile @a[distance=..64] ~ ~ ~ 5 1.3 1

# 味方Mob
execute as @e[type=!player,predicate=entity:friendly,tag=!Enemy,distance=..64,tag=FriendlyProjectile,sort=nearest,limit=1] run particle angry_villager ~ ~0.5 ~ 0 0 0 1 1 normal
execute as @e[type=!player,predicate=entity:friendly,tag=!Enemy,distance=..64,tag=FriendlyProjectile,sort=nearest,limit=1] run function settings:enemy/global/ground/shoot/menicles/wind_with_smell_friendly
# 村人
execute as @e[type=villager,tag=WanderingVillager,distance=..64,sort=nearest,limit=1] run particle angry_villager ~ ~0.5 ~ 0 0 0 1 1 normal
execute as @e[type=villager,tag=WanderingVillager,distance=..64,sort=nearest,limit=1] run function settings:enemy/global/ground/shoot/menicles/wind_with_smell_villager
# ゾンビ村人
execute as @e[type=zombie_villager,tag=Enemy,distance=..64,sort=nearest,limit=1] run particle angry_villager ~ ~0.5 ~ 0 0 0 1 1 normal
execute as @e[type=zombie_villager,tag=Enemy,distance=..64,sort=nearest,limit=1] run function settings:enemy/global/ground/shoot/menicles/wind_with_smell_zombie_villager

# メニクルによって去る
tag @e[type=!player,predicate=entity:friendly,tag=!Enemy,distance=..64,tag=FriendlyProjectile,sort=nearest,limit=1] add Garbage
tag @e[type=villager,tag=WanderingVillager,distance=..64,sort=nearest,limit=1] add Garbage
tag @e[type=zombie_villager,tag=Enemy,distance=..64,sort=nearest,limit=1] add Garbage