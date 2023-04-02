### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"ライトニングクラウド","color":"#FFFFFF","bold":true}',Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,CloudAppearance]},{Name:"Damage",Player:{BypassArmor:true,DeathCause:'[{"translate":"%1$sは%2$sによって大量の電流に侵された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1d},AEC:{Radius:1f,Effects:[{Id:14,Amplifier:5b,Duration:5,ShowParticles:false}]}},{Name:"Kill"}]}
