### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"日向喰らい","color":"#FF0000","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:2000,Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,CooldownRequired,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1002}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier1/mix",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Global:true,Direction:[-180f,0f],DirectionRange:[360f,0f]}]},{Name:"Blink",Count:1,Chance:1d,TriggerOn:[Physical,Fire,Ice,Lightning,Light,Dark]}],Damage:[{Element:[Fire,Ice,Lightning,Light,Dark],Settings:[{Name:"At",Target:{Look:"Player",Radius:64}},{Name:"Direction",Direction:[-180f,0f],Speed:2d}],Name:"Teleport"}],Block:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[0f,-45f]}],Name:"SmartMotion",TP:true,Speed:{Set:150d}}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:8,Max:8,Current:8},Call:[{Condition:[{Name:"HasTarget",Logic:"OR",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:99,Percent:true}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"ChangeStatus",ElementFire:{Set:100},ElementIce:{Set:100},ElementLightning:{Set:100},ElementLight:{Set:100},ElementDark:{Set:100}},{Name:"ChangeAI",Damage:[{}]},{Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:100d},Gravity:{Set:500d}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Name:"SmartMotion",TP:true,Speed:{Add:-2d,Limit:100d}}]}]}]}
