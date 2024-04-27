
### 介錯サヨナラ処理１

tellraw @a[distance=..16] [{"translate":"[%1$s] サヨナラッ！","bold":true,"with":[{"selector":"@s"}]}]

data modify storage tusb_mob: Tags set value [KaishakuExplosion,CooldownRequired,Initialized,Skill]
data modify storage tusb_mob: Tags append from entity @s Tags[]
data modify entity @s Tags set from storage tusb_mob: Tags
tag @s[tag=HasAI] remove HasAI
tag @s[tag=CallOnTimeOut] remove CallOnTimeOut
tag @s remove Garbage
data merge entity @s {NoAI:true,Invulnerable:true,PortalCooldown:20}
scoreboard players add @s NativeFlag 1
