#エンチャントのダメージをロード
execute store result score _ ElementFire run data get storage item: SelectedItem.tag.AddDamage.Fire
execute store result score _ ElementIce run data get storage item: SelectedItem.tag.AddDamage.Ice
execute store result score _ ElementLightning run data get storage item: SelectedItem.tag.AddDamage.Lightning
execute store result score _ ElementLight run data get storage item: SelectedItem.tag.AddDamage.Light
execute store result score _ ElementDark run data get storage item: SelectedItem.tag.AddDamage.Dark
#ブースト
function skill:damage/boost/
