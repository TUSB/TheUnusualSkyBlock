### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",CustomName:'{"translate":"謎の魔石","color":"#FF8000","bold":true}',PortalCooldown:70,Tags:[DelayedData,CallOnInit,CallOnTimeOut,CooldownRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:11,EnchantStone:1b,EnchantID:"謎",Tier:1,display:{Name:'{"translate":"%1$s%2$s(I)","color":"aqua","italic":false,"with":[{"translate":"謎の"},{"translate":"欠片"}]}',Lore:['{"translate":"ランダムエンチャント","color":"gray","italic":false}','[{"translate":"適用可能アイテム： ","color":"green","italic":false},{"translate":"全て","color":"gray"}]','{"translate":"エンチャント台で使用","italic":false}']}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはオモイワーから出た%2$sの破片が足に突き刺さり激痛に悶えながら家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-5f],DirectionRange:[360f,0f],Speed:1.1d,SpeedRange:1.55d,Absolute:{Vertical:true}}],Time:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sはオモイワーから出た%2$sの破片の爆発によりサボテンとしての第二の人生が始まった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:4d},Explosion:-1},{Name:"Damage",Mob:{Physical:100},Distance:{Max:4d},Explosion:-1}],ProjectileDamage:{Fire:10,Ice:10,Lightning:10,Light:10,Dark:10}}
#Function
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 0.8 0
