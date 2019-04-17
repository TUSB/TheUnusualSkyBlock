##############################
### 向き定義読み込み
##############################

### ターゲット位置読み込み
function behaviour_manager:definition_reader/directions/target_pos/x/read
function behaviour_manager:definition_reader/directions/target_pos/y/read
function behaviour_manager:definition_reader/directions/target_pos/z/read

### ターゲット相対位置読み込み
function behaviour_manager:definition_reader/directions/target_offset/x/read
function behaviour_manager:definition_reader/directions/target_offset/y/read
function behaviour_manager:definition_reader/directions/target_offset/z/read

### 水平相対角度読み込み
function behaviour_manager:definition_reader/directions/rotate_angle/read

### 垂直相対角度読み込み
function behaviour_manager:definition_reader/directions/tilt_angle/read

### 水平回転角度読み込み
function behaviour_manager:definition_reader/directions/rotate_speed/read

### 垂直回転角度読み込み
function behaviour_manager:definition_reader/directions/tilt_speed/read

### 更新間隔(tick)読み込み
function behaviour_manager:definition_reader/directions/update_tick/read

### インターポレーター読み込み
function behaviour_manager:definition_reader/directions/interpolator/check
