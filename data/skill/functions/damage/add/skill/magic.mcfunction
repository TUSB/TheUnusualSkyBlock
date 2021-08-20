#スキルのダメージをロード
execute store result score _ Damage run data get storage skill: Damage.Physical
execute store result score _ ElementFire run data get storage skill: Damage.Fire
execute store result score _ ElementIce run data get storage skill: Damage.Ice
execute store result score _ ElementLightning run data get storage skill: Damage.Lightning
execute store result score _ ElementLight run data get storage skill: Damage.Light
execute store result score _ ElementDark run data get storage skill: Damage.Dark
#ブースト
function skill:damage/boost/
