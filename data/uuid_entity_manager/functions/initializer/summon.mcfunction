##############################
### UUIDエンティティ召喚
##############################

### カーソル系はアマスタ(distance=0で除外されるため)
### 他はAEC(軽いので)

#################### 全般管理エンティティ作成 ####################
### 全般管理カーソルエンティティ
execute unless entity 0-0-0-0-0 run summon minecraft:armor_stand ~ ~ ~ {Tags:[System],UUIDMost:0l,UUIDLeast:0l,CustomName:"[\"全般管理カーソル\"]"}
### テキスト保持エンティティ
execute unless entity 0-0-0-0-1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:0l,UUIDLeast:1l,CustomName:"[\"テキスト\"]"}
### 角度保持エンティティ
execute unless entity 0-0-0-0-2 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:0l,UUIDLeast:2l,CustomName:"[\"角度保持用\"]"}
### 視線判定エンティティ１・２
execute unless entity 0-0-1-0-0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:1l,UUIDLeast:0l,CustomName:"[\"視線判定用１\"]"}
execute unless entity 0-0-1-0-1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:1l,UUIDLeast:1l,CustomName:"[\"視線判定用２\"]"}
### 位置取得エンティティ０・１・２
execute unless entity 0-0-2-0-0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:2l,UUIDLeast:0l,CustomName:"[\"位置取得用\"]"}
execute unless entity 0-0-2-0-1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:2l,UUIDLeast:1l,CustomName:"[\"位置取得用アンカー１\"]"}
execute unless entity 0-0-2-0-2 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[System],UUIDMost:2l,UUIDLeast:2l,CustomName:"[\"位置取得用アンカー２\"]"}

#################### データ管理用エンティティ作成 ####################
### データ管理カーソルエンティティ
execute unless entity 1-0-0-0-0 run summon minecraft:armor_stand ~ ~ ~ {Tags:[System],UUIDMost:4294967296l,UUIDLeast:0l,CustomName:"[\"データ管理カーソル\"]"}

#################### スポナー管理用エンティティ作成 ####################
### スポナーエリア管理エンティティ
execute unless entity 2-0-0-0-0 run summon minecraft:armor_stand ~ ~ ~ {Tags:[System],UUIDMost:8589934592l,UUIDLeast:0l,CustomName:"[\"スポナーエリア管理カーソル\"]"}



#################### 後処理 ####################
### 共通データを設定
execute as @e[tag=System,type=minecraft:armor_stand] run data merge entity @s {Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true,AmorItems:[{id:"minecraft:stone",Count:1b,tag:{}}]}
execute as @e[tag=System,type=minecraft:area_effect_cloud] run data merge entity @s {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air"}
