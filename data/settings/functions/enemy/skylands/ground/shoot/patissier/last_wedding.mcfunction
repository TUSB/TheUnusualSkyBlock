### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ラスト・ウエディング","color":"#FF0000","bold":true}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnBlock,TickingRequired,SmartMotion,Break,AnalyseLog,HideLevel],Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:700}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"強度...測定不能！ ※当たったらもれなく死にます。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:true,Start:true,Gravity:{Set:0d}}],Block:[{Name:"Damage",Player:{DamageType:[Global],BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"「ﾍﾞﾁｬﾘ」%1$sは%2$sの測定不能の強度によりストロベリージャムになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:4d},Explosion:-1}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:80,Max:80,Current:80},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"SmartMotion",Gravity:{Add:5d}}]}]}]}
