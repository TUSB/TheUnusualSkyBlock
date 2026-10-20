#> skill:act/black_mage/gin_spirit/bat_init

# スキル 数値類 コピー
scoreboard players operation @s Level = @e[type=armor_stand,tag=GinSpirit,sort=nearest,limit=1] Level
scoreboard players operation @s Damage = @e[type=armor_stand,tag=GinSpirit,sort=nearest,limit=1] Damage
scoreboard players reset @e[type=armor_stand,tag=GinSpirit,sort=nearest,limit=1] Damage
