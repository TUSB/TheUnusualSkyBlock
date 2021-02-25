### スポナーカートのOhMyDatIDを適用
execute store result score @s OhMyDatID run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[0].UUID[0]
function oh_my_dat:please
### レベル
execute store result score @s Level run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."レベル"
### 固有ステータス
execute store result score @s ElementFire run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."炎属性値"
execute store result score @s ElementCold run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."氷属性値"
execute store result score @s ElementLightning run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."雷属性値"
execute store result score @s ElementLight run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."光属性値"
execute store result score @s ElementDark run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."固有ステータス"."闇属性値"
### 成長ステータス
execute store result score @s HP store result score @s HPMax run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."最大HP"
execute store result score @s MP store result score @s MPMax run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."最大MP"
execute store result score @s Attack run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."物理攻撃力"
execute store result score @s Defense run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."物理防御力"
execute store result score @s SpecialAttack run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."魔法攻撃力"
execute store result score @s SpecialDefense run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."成長ステータス"."魔法防御力"
