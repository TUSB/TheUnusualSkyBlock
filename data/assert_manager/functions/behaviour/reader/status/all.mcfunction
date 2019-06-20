##############################
### ステータス定義テスト
##############################

schedule function assert_manager:behaviour/reader/status/lifetime/default_mob 2t
schedule function assert_manager:behaviour/reader/status/lifetime/default_bullet 4t
schedule function assert_manager:behaviour/reader/status/lifetime/custom_mob 6t
schedule function assert_manager:behaviour/reader/status/lifetime/custom_bullet 8t

schedule function assert_manager:behaviour/reader/status/hp/default 10t
schedule function assert_manager:behaviour/reader/status/hp/set 12t

schedule function assert_manager:behaviour/reader/status/mp/default 14t
schedule function assert_manager:behaviour/reader/status/mp/set 16t
