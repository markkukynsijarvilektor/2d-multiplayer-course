# Simple co-op multiplayer game template for Godot

Host handles sharing all movement_vector data from all_clients. PlayerInputSynchronizerComponent shares the movement_vector based on x/y-axis input. MultiplayerSynchronizer shared via host

Scripts:
main.gd handles the basic game logic:
- Multiplayer spawn-control

main_menu.gd handling the main-menu-logic:
- User selection for either hosting the game or joining another hosted game session
- After hosting/joining, opens the main-node scene

player.gd extends CharacterBody2D
- Player-basics instance, instantiated for all players joining the game
- velocity handling forwarded to player_input_synchronize_component.gd
- Player:global_position (node basic data) shared to host which is synchronized between clients

player_input_synchronize_component.gd extends MultiplayerSynchronizer
- gathers user input only when the player is the authority
- movement_vector from previous step shared to the host which affects the host control
  
