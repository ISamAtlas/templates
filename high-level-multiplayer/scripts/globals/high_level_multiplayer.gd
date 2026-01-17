extends Node

var IP_ADDRESS: String = "localhost"
const PORT: int = 31722

var peer:ENetMultiplayerPeer

func _ready() -> void:
	SignalManager.connect("join_game_attempt", _on_join_game_attempt)

func _on_join_game_attempt(ip) -> void:
	print("Attempting to join ", ip,":",PORT)
	IP_ADDRESS = ip
	get_tree().change_scene_to_file("res://scenes/places/cave.tscn")
	start_client()
	

func start_server() -> void:
	get_tree().change_scene_to_file("res://scenes/places/cave.tscn")
	peer = ENetMultiplayerPeer.new()
	peer.create_server(PORT)
	multiplayer.multiplayer_peer = peer
	
func start_client() -> void:
	peer = ENetMultiplayerPeer.new()
	peer.create_client(IP_ADDRESS, PORT)
	multiplayer.multiplayer_peer = peer
