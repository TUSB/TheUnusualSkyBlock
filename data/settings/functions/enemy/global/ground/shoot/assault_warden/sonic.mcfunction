#Function
# Attackを取得(取得できない場合は99)
# どうせ近くにレベルの違うやつおらんやろ
    scoreboard players set _ Attack 99
    scoreboard players operation _ Attack = @e[type=warden,distance=..64,tag=AssaultWarden,sort=nearest,limit=1] Attack
# 対象にダメージを与える
# ソニックブーム素のダメージ + (Attack/2) のダメージ
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,EPF:0,DeathCause:'[{"translate":"%1$sはソニックブームでふっ飛ばされ、意識を失った。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.4 run scoreboard players get _ Attack
    execute if data storage score_damage: Argument{Damage:0} run data modify storage score_damage: Argument.Damage set value 1
    function score_damage:api/attack
    function makeup:enemy/projectile_hit
# 進捗解除
    advancement revoke @s only settings:enemy/warden_sonic
