### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnBlock,NativeTask,SmartMotion,Bounce,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64,IgnoreBlocks:true}}],Name:"SmartMotion",TP:1b,Speed:{Set:80},Gravity:{Set:150}}],Block:[Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:false}},{Name:"RandomChance",Chance:0.65d}]],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:60,TimeCount:60}}],ProjectileDamage:{Fire:100}}
