### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Team:"Friendly",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:[Mob,DelayedData,HasAI,CallOnInit,NativeTask,SmartMotion,Bounce,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:80},Gravity:{Set:150}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:60,TimeCount:60}}],ProjectileDamage:{Fire:100}}
