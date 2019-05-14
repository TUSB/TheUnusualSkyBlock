##############################
### UUIDエンティティ配置
##############################

### 自由に(x,zを大きく)動かしていいのは、0-0-N-0-Mのみ (N > 0, M >= 0)
### カーソル(N-0-0-0-0 N >= 0) は、yのみ動かすこと
### distanceを使わない一部エンティティ以外は±3.0,3.0,±3.0を基準とする

#################### 全般管理エンティティ作成 ####################
### テキスト保持エンティティ
tp 0-0-0-0-1 0.0 0.0 0.0
### 角度計算エンティティ
tp 0-0-0-0-10 0.0 0.0 0.0
### 動き計算エンティティ
tp 0-0-0-0-20 0.0 0.0 0.0
### 鏡像変換エンティティ
tp 0-0-0-0-30 0.0 0.0 0.0
### 視線判定エンティティ１・２
function uuid_entity_manager:00100/return
function uuid_entity_manager:00101/return
### 位置取得エンティティ０・１・２
function uuid_entity_manager:00200/return
function uuid_entity_manager:00201/return
function uuid_entity_manager:00202/return

#################### データ管理用エンティティ作成 ####################
### データ管理カーソルエンティティ
tp 1-0-0-0-0 -3.0 3.0 3.0
### データ姿勢操作エンティティ
function uuid_entity_manager:10100/return

#################### スポナー管理用エンティティ作成 ####################
### スポナーエリア管理エンティティ
tp 2-0-0-0-0 3.0 3.0 -3.0

#################### プレイヤー管理用エンティティ作成 ####################
### プレイヤー管理カーソルエンティティ
tp 3-0-0-0-0 -3.0 3.0 -3.0
