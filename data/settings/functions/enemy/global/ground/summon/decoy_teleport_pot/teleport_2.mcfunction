#Function
# 効果
tp @e[gamemode=!creative,sort=random,team=Friendly,distance=0.01..16,limit=3] @s
tp @e[tag=Mob,sort=random,distance=0.01..16,limit=3] @s
# サウンド
playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.3 1.5
# パーティクル
