### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"cloud",Radius:0.08f,Duration:60,PortalCooldown:60,Tags:[CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
#Function
playsound entity.generic.extinguish_fire master @a[distance=..32] ~ ~ ~ 1.0 0.7
