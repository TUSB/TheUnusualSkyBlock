#> score_damage:api/attack
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input storage score_damage:
#   Argument.Damage: float
#       与えるダメージを入力
#   Argument.EPF: int
#       軽減効果のある[エンチャントプロテクションファクター](https://minecraft.gamepedia.com/Armor#Enchantments)の合計値
#   Argument.DamageType: list, ["Global","Fire","Blast","Projectile","Fall"]
#       ダメージの種類 EPFを自動取得する場合にどのエンチャントを参照するかに関わります
#   Argument.DisableParticle: boolean
#       パーティクルを表示するか否か, bool値
#   Argument.BypassArmor: boolean
#       防御力/防具強度を無視するか否か, bool値
#   Argument.BypassResistance: boolean
#       耐性エフェクトを無視するか否か, bool値
#   Argument.DeathCause: string,raw_json
#       カスタム死亡メッセージを表示する。
# @context EPFが-1以下の時 EntityのProtectionを参照します
# @api

#> Temp
# @internal
    #declare team Null

# 引数チェック
    execute unless data storage score_damage: Argument.Damage run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"引数が足りません","color":"white"},{"text":"\nMissing Damage at score_damage:api/attack","color":"white"}]
    execute unless data storage score_damage: Argument.EPF run data modify storage score_damage: Argument.EPF set value -1
    execute unless data storage score_damage: Argument.DamageType run data modify storage score_damage: Argument.DamageType set value [Global]
    execute unless data storage score_damage: Argument.DisableParticle run data modify storage score_damage: Argument.DisableParticle set value 0b
    execute unless data storage score_damage: Argument.BypassArmor run data modify storage score_damage: Argument.BypassArmor set value 0b
    execute unless data storage score_damage: Argument.BypassResistance run data modify storage score_damage: Argument.BypassResistance set value 0b
    execute unless data storage score_damage: Argument.DeathCause run data modify storage score_damage: Argument.DeathCause set value '{"translate":"%1$sはダメージを受けて死んだ。","with":[{"selector":"@s"}]}'
# Healthを持つEntityであれば実行
    execute if data storage score_damage: Argument.Damage if entity @s[team=!Null] run function score_damage:core/attack