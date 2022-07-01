### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",CustomName:'{"translate":"ニル","color":"#000000","bold":true}',NoGravity:true,Silent:true,Invulnerable:true,PortalCooldown:400,Tags:[DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:85,Explosion:{Type:0,Colors:[I;16777215]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:33,Current:33},Call:[{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,ParticleAndSound]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:33,Current:33},Call:[{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,ParticleAndSound]},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,SuctionPower3M]},{Name:"Damage",Player:{Damage:30d,BypassArmor:true,BypassResistance:true},Mob:{Physical:300},Distance:{Max:3d},AEC:{Effects:[{Id:15b,Amplifier:1b,Duration:60,ShowParticles:false}]}}],Once:1},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10085,Explosion:{Type:0,Colors:[I;16777215]}}}}},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,ParticleAndSound]},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,SuctionPower6M]},{Name:"Damage",Player:{Damage:45d,BypassArmor:true,BypassResistance:true},Mob:{Physical:600},Distance:{Max:6d},AEC:{Effects:[{Id:15b,Amplifier:1b,Duration:60,ShowParticles:false}]}}],Once:1},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:33,Current:33},Call:[{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,ParticleAndSound]},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,SuctionPower6M]},{Name:"Damage",Player:{Damage:45d,BypassArmor:true,BypassResistance:true},Mob:{Physical:600},Distance:{Max:6d},AEC:{Effects:[{Id:15b,Amplifier:1b,Duration:60,ShowParticles:false}]}}],Once:1},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:20085,Explosion:{Type:0,Colors:[I;16777215]}}}}},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,ParticleAndSound]},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,SuctionPower9M]},{Name:"Damage",Player:{Damage:60d,BypassArmor:true,BypassResistance:true},Mob:{Physical:900},Distance:{Max:9d},AEC:{Effects:[{Id:15b,Amplifier:1b,Duration:60,ShowParticles:false}]}}],Once:1},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:33,Current:33},Call:[{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,ParticleAndSound]},{Name:"Function",Tags:[Global,Neutrality,Bullet,Nil,SuctionPower9M]},{Name:"Damage",Player:{Damage:60d,BypassArmor:true,BypassResistance:true},Mob:{Physical:900},Distance:{Max:9d},AEC:{Effects:[{Id:15b,Amplifier:1b,Duration:60,ShowParticles:false}]}}],Once:1},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}],Once:1}]}]}
