### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:[DelayedData,HasAI,CallOnInit,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64,IgnoreBlocks:true}}],Name:"Step",Speed:1.5d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Friendly,Shoot,SalamanderKid,BreathAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{Fire:50}}
#Function
playsound item.firecharge.use master @a[distance=..64] ~ ~ ~ 0.7 1.0 0
