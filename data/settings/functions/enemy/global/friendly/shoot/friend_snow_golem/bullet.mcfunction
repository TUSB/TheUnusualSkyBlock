### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",PortalCooldown:80,Tags:[DelayedData,CallOnInit,CooldownRequired,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.3d,SpeedRange:1.5d}]}
#Function
playsound entity.snowball.throw neutral @a[distance=..32] ~ ~ ~ 0.7 1.2 0
