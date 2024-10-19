# 노란 셜커 상자 트릭으로 아이템 복구
data remove block 0 -64 0 Items
$data modify block 0 -64 0 Items set from storage nomic:global data[$(id)].inputs
$loot give @a[scores={nomic.data=$(id)}] mine 0 -64 0 minecraft:stick[minecraft:custom_data={drop_contents: true}]