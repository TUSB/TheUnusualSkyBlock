### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Invulnerable:true,Silent:true,Invisible:true,ShowArms:false,Small:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:200,Tags:[DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1010,Explosion:{Type:0b,Colors:[I;4079166]}}}]}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Condition:[{Name:"RandomChance",Chance:0.6d}],Name:"Function",Tags:[Global,Ground,Summon,BlackTeleportPot,Teleport1]}]}],Exit:{Time:80,TimeCount:80}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Condition:[{Name:"RandomChance",Chance:0.3d}],Name:"Function",Tags:[Global,Ground,Summon,BlackTeleportPot,Teleport1]},{Name:"Function",Tags:[Global,Ground,Summon,BlackTeleportPot,Teleport2]}]}]}]}
#Function
# サウンド
playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
playsound block.portal.trigger hostile @a[distance=..32] ~ ~ ~ 0.7 0.5 0
# パーティクル
particle flash ~ ~ ~ 0 0 0 0 10 force
