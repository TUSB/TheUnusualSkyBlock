
### ジン・スピリット 回復

#回復量設定
execute if score @s Level matches 1 run scoreboard players set _ HealthHealing 2
execute if score @s Level matches 2 run scoreboard players set _ HealthHealing 4
execute if score @s Level matches 3 run scoreboard players set _ HealthHealing 6

scoreboard players operation _ HealthHealing *= @s Damage

scoreboard players operation @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] HealthHealing += _ HealthHealing

kill @s

function makeup:skill/act/black_mage/gin_spirit/heal
