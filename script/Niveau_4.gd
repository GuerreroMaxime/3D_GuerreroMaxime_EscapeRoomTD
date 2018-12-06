extends Node

var Etat=1;
var Sens=1;
var Key=1;

func _ready():
	
	pass

func _on_Upbuton_pressed():
	
	Sens=2;
	
	if Etat==1:
		$Graphisme/E1.visible= false;
		$Graphisme/E2.visible= true;
		Etat=2;
		
	if Etat==3:
		$Graphisme/E3.visible= false;
		$Graphisme/E4.visible= true;
		Etat=4;
	pass # replace with function body


func _on_Downbuton_pressed():
	
	Sens=1;
	
	if Etat==2:
		$Graphisme/E2.visible= false;
		$Graphisme/E3.visible= true;
		Etat=3;
		
	if Etat==4:
		$Graphisme/E4.visible= false;
		$Graphisme/E5.visible= true;
		$Interaction/Key.visible= true;

	pass # replace with function body


func _on_Key_pressed():
	$Graphisme/E5.visible= false;
	$Interaction/Key.visible= false;
	Key=2;
	$Ressource/Fkey3.visible= true;
	$Interaction/Partir.visible= true;
	pass # replace with function body


func _on_Button_pressed():
	
	$hub.visible=false;
	$moove.visible=false;
	$Button.visible=false;
	
	$Graphisme/porte_gauche.visible=true;
	$Graphisme/porte_gauche2.visible=true;
	$Graphisme/updownbuton.visible=true;
	$Graphisme/E1.visible=true;
		
	$fond.visible=true;
	$Interaction/Upbuton.visible=true;
	$Interaction/Downbuton.visible=true;
	$Interaction/Key.visible=true;
	pass # replace with function body


func _on_Partir_pressed():
	get_tree().change_scene("res://niveau/Hub.tscn");
	pass # replace with function body
