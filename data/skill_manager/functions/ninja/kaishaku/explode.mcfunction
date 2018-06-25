##############################
### 介錯サヨナラ処理１
##############################

say サヨナラッ！
data merge entity @s {NoAI:true,Health:1f,Invulnerable:true,PortalCooldown:20,Tags:[KaishakuExplosion,CooldownRequired]}
