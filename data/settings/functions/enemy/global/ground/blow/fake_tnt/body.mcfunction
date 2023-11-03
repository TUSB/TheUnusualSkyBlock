### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:magma_cube",Silent:1b,CustomName:'{"translate":"block.minecraft.tnt"}',ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],Size:1,NoAI:0b,PortalCooldown:200,Tags:[Mob,Enemy,DelayedData,CallOnDeath,CallOnTimeOut,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 10d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0.3d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 187
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 187
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 54
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 33
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 11
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 255
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 11
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Event,Function,VanillaExplosion,Particle]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Damage",Player:{DamageType:[Global,Projectile],DeathCause:'[{"translate":"%1$sは%2$sに爆破された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:3d}}],Time:[{Name:"Function",Tags:[Global,Event,Function,VanillaExplosion,Particle]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Damage",Player:{DamageType:[Global,Projectile],DeathCause:'[{"translate":"%1$sは%2$sに爆破された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:3d}}]}
