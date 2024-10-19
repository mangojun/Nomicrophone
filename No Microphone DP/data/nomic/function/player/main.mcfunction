# 9번 슬롯 감지 시 마인카트가 있으면 TP, 없으면 소환
$execute as @n[scores={nomic.data=$(id)}] at @s if data entity @s {SelectedItemSlot: 8} if entity @e[tag=nomic.ui_$(id)] run tp @n[tag=nomic.ui_$(id)] ~ ~1 ~
$execute as @n[scores={nomic.data=$(id)}] at @s if data entity @s {SelectedItemSlot: 8} unless entity @e[tag=nomic.ui_$(id)] run summon minecraft:item_display ~ ~1 ~ {Tags: ["nomic.ui_$(id)", "nomic.ui"], teleport_duration: 0, Passengers: [{id: "minecraft:chest_minecart", Tags: ["nomic.ui_$(id)", "nomic.ui"], Invulnerable: true, CustomDisplayTile: true, DisplayState: {Name: "minecraft:air"}}]}

# UI의 변화 감지
$execute store success storage nomic:global data[$(id)].isclick int 1 run data modify storage nomic:global data[$(id)].previous set from entity @n[tag=nomic.ui_$(id), type=minecraft:chest_minecart] Items
$execute if data storage nomic:global data[{id: $(id), isclick: 1}] run function nomic:minecart/change with storage nomic:global data[$(id)]

# 탭 재설정
$execute if data storage nomic:global data[{id: $(id), tab: 0}] run function nomic:_/tab/home with storage nomic:global data[$(id)]
$execute if data storage nomic:global data[{id: $(id), tab: 1}] run function nomic:_/tab/minecraft with storage nomic:global data[$(id)]
$execute if data storage nomic:global data[{id: $(id), tab: 2}] run function nomic:_/tab/talking with storage nomic:global data[$(id)]
$data modify storage nomic:global data[$(id)].previous set from entity @n[tag=nomic.ui_$(id), type=minecraft:chest_minecart] Items

# 9번 아니면 데이터 지우고 삭제
$execute as @n[scores={nomic.data=$(id)}] unless data entity @s {SelectedItemSlot: 8} run data remove entity @n[tag=nomic.ui_$(id), type=minecraft:chest_minecart] Items
$execute as @n[scores={nomic.data=$(id)}] unless data entity @s {SelectedItemSlot: 8} run kill @e[tag=nomic.ui_$(id)]