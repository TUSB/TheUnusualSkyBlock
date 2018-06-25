##############################
### 毎ティック処理
##############################

###介錯処理
execute if entity @s[tag=KaishakuExplosion] run function skill_manager:ninja/kaishaku/tick
###ステークスファイア処理
execute if entity @s[tag=StakesSucceeded] run function skill_manager:hunter/stakes_fire/success
execute if entity @s[tag=StakesFailed] run function skill_manager:hunter/stakes_fire/failure
###バードストライク処理
execute if entity @s[tag=BirdStrike] run function skill_manager:hunter/bird_strike/tick
###ワイルドフレア継続処理
execute if entity @s[tag=WildFlare] run function skill_manager:hunter/wild_flare/tick
###セイクリッドピラー処理
execute if entity @s[tag=SacredPillarBase] run function skill_manager:white_mage/sacred_pillar/tick
###つんつんペット処理
execute if entity @s[tag=Sicced] run function skill_manager:sicced/pets
###コールC処理
execute if entity @s[tag=Crystal] run function skill_manager:summoner/call_crystal/tick/all
###ぷちブラック処理
execute if entity @s[tag=PetitBlack] run function skill_manager:summoner/petit_black/tick/all

###接地矢(など)Projectileタグ削除
execute if entity @s[tag=FlyingRequired,nbt={inGround:true}] run function trigger_manager:in_ground

###クールダウン監視処理
execute if entity @s[tag=ObserveCooldown] run function trigger_manager:cooldown/tick





