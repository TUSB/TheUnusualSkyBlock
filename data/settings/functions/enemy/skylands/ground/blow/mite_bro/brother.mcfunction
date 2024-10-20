### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:endermite",CustomName:'{"translate":"マイトくん","color":"#FFFFFF","bold":true}',Lifetime:0,PlayerSpawned:0b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnDamage,TickingRequired,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.15d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s妹はボクが守る！","with":[{"translate":"【能力：範囲】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Damage",Player:{Damage:0d,DamageType:[Global]},Distance:{Max:2d},AEC:{Particle:"dragon_breath",Duration:100,Radius:1f,effects:[{id:"minecraft:mining_fatigue",amplifier:1b,duration:300},{id:"minecraft:slowness",amplifier:2b,duration:300},{id:"minecraft:poison",amplifier:2b,duration:100}]}}]}
