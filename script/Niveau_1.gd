extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var Cpt_salle=1;
var Cpt_coffre=1;

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Button_level_1_pressed():
	$Level_1/Graphisme/Porte_level_1.visible=false;
	$Level_1/Interaction/Button_level_1.visible=false;
	
	$Level_2/Graphisme/updownbuton_level_2.visible=true;
	$Level_2/Graphisme/PorteUp_Level_2.visible=true;
	$Level_2/Interaction/Up_Level_2.visible=true;
	$Level_2/Interaction/Down_Level_2.visible=true;
	pass # replace with function body


func _on_Up_Level_2_pressed():
	$Level_2/Graphisme/PorteUp_Level_2.visible=true;
	$Level_2/Graphisme/PorteDown_Level_2.visible=false;
	$Level_2/Interaction/Button_Level_2.visible=false;
	pass # replace with function body


func _on_Down_Level_2_pressed():
	$Level_2/Graphisme/PorteUp_Level_2.visible=false;
	$Level_2/Graphisme/PorteDown_Level_2.visible=true;
	$Level_2/Interaction/Button_Level_2.visible=true;
	pass # replace with function body


func _on_Button_Level_2_pressed():
	$Level_2/Graphisme/PorteUp_Level_2.visible=false;
	$Level_2/Graphisme/PorteDown_Level_2.visible=false;
	$Level_2/Graphisme/PorteDown_Level_2.visible=false;
	$Level_2/Graphisme/updownbuton_level_2.visible=false;
	
	$Level_2/Interaction/Button_Level_2.visible=false;
	$Level_2/Interaction/Up_Level_2.visible=false;
	$Level_2/Interaction/Down_Level_2.visible=false;
	
	
	$Level_3A/Graphisme/porte_droite.visible=true;
	$Level_3A/Graphisme/exitdoor.visible=true;
	$Level_3A/Graphisme/change.visible=true;
	$Level_3A/Graphisme/locks.visible=true;
	
	$Level_3A/Interaction/to3B.visible=true;
	$Level_3A/Interaction/up.visible=true;
	$Level_3A/Interaction/down.visible=true;
	pass # replace with function body


func _on_to3B_pressed():
	$Level_3A/Graphisme/porte_droite.visible=false;
	$Level_3A/Graphisme/exitdoor.visible=false;
	$Level_3A/Graphisme/change.visible=false;
	$Level_3A/Graphisme/locks.visible=false;
	$Level_3A/Graphisme/exitdoor2.visible=false;
	$Level_3A/Graphisme/locks2.visible=false;
	
	$Level_3A/Interaction/to3B.visible=false;
	$Level_3A/Interaction/up.visible=false;
	$Level_3A/Interaction/down.visible=false;
	$Level_3A/Interaction/locks.visible=false;
	$Level_3A/Interaction/exit.visible=false;
	
	
	$Level_3B/Graphsime/porte_gauche.visible=true;
	$Level_3B/Interaction/to3A.visible=true;
	
	if Cpt_salle==1 && Cpt_coffre==1:
		$Level_3B/Graphsime/coffre.visible=true;
	
	if Cpt_salle==2 && Cpt_coffre==1:
		$Level_3B/Graphsime/coffre2.visible=true;
		$Level_3B/Interaction/coffre.visible=true
		
	pass # replace with function body


func _on_to3A_pressed():
	$Level_3B/Graphsime/porte_gauche.visible=false;
	$Level_3B/Graphsime/coffre.visible=false;
	$Level_3B/Graphsime/coffre2.visible=false;
	$Level_3B/Graphsime/cle.visible=false;
	
	$Level_3B/Interaction/to3A.visible=false;
	$Level_3B/Interaction/coffre.visible=false;
	
	
	$Level_3A/Graphisme/porte_droite.visible=true;
	$Level_3A/Graphisme/change.visible=true;
	
	$Level_3A/Interaction/to3B.visible=true;
	$Level_3A/Interaction/up.visible=true;
	$Level_3A/Interaction/down.visible=true;
	
	
	if Cpt_salle==1:
		$Level_3A/Graphisme/exitdoor.visible=true;
		
		if Cpt_coffre!=3:
			$Level_3A/Graphisme/locks.visible=true;
		
		if Cpt_coffre==2:
			$Level_3A/Interaction/locks.visible=true;
			
		if Cpt_coffre==3:
			$Level_3A/Interaction/exit.visible=true;
	
	if Cpt_salle==2:
		$Level_3A/Graphisme/exitdoor2.visible=true;
		
		if Cpt_coffre!=3:
			$Level_3A/Graphisme/locks2.visible=true;
		
	pass # replace with function body


func _on_up_pressed():
	Cpt_salle=2;
	
	$Level_3A/Graphisme/exitdoor2.visible=true;
		
	if Cpt_coffre!=3:
		$Level_3A/Graphisme/locks2.visible=true;
	
	if Cpt_coffre==2:
			$Level_3A/Interaction/locks.visible=true;
		
		
	$Level_3A/Graphisme/exitdoor.visible=false;
	$Level_3A/Graphisme/locks.visible=false;
	$Level_3A/Interaction/locks.visible=false;
	$Level_3A/Interaction/exit.visible=false;
	
	pass # replace with function body


func _on_down_pressed():
	Cpt_salle=1;
	
	$Level_3A/Graphisme/exitdoor.visible=true;	
	$Level_3A/Graphisme/exitdoor2.visible=false;
	$Level_3A/Graphisme/locks2.visible=false;
	$Level_3A/Interaction/locks.visible=false;
		
	if Cpt_coffre!=3:
		$Level_3A/Graphisme/locks.visible=true;
		
	if Cpt_coffre==2:
		$Level_3A/Interaction/locks.visible=true;
			
	if Cpt_coffre==3:
		$Level_3A/Interaction/exit.visible=true;
		
	
	pass # replace with function body


func _on_locks_pressed():
	Cpt_coffre=3;
	$Level_3A/Graphisme/locks.visible=false;
	$Level_3A/Interaction/exit.visible=true;
	$Ressource_graphique/cle.visible=false;
	
	pass # replace with function body


func _on_exit_pressed():
	$Level_3A/Graphisme/porte_droite.visible=false;
	$Level_3A/Graphisme/exitdoor.visible=false;
	$Level_3A/Graphisme/change.visible=false;
	$Level_3A/Graphisme/locks.visible=false;
	$Level_3A/Graphisme/exitdoor2.visible=false;
	$Level_3A/Graphisme/locks2.visible=false;
	
	$Level_3A/Interaction/to3B.visible=false;
	$Level_3A/Interaction/up.visible=false;
	$Level_3A/Interaction/down.visible=false;
	$Level_3A/Interaction/locks.visible=false;
	$Level_3A/Interaction/exit.visible=false;
	
	$Final/porte_fond.visible=true;
	$Final/coffre.visible=true;
	$Final/open2.visible=true;
	pass # replace with function body


func _on_coffre_pressed():
	$Level_3B/Graphsime/coffre2.visible=false;
	$Level_3B/Graphsime/cle.visible=true;
	
	$Level_3B/Interaction/coffre.visible=false;
	$Level_3B/Interaction/cle.visible=true;
	pass # replace with function body


func _on_cle_pressed():
	Cpt_coffre=2;
	$Level_3B/Interaction/cle.visible=false;
	$Level_3B/Graphsime/cle.visible=false;
	$Ressource_graphique/cle.visible=true
	pass # replace with function body


func _on_Go_pressed():
	
	$hub.visible= false;
	$moove.visible= false;
	$Intro/Go.visible= false;
	
	$fond.visible= true;
	$Level_1/Graphisme/Porte_level_1.visible= true;
	$Level_1/Interaction/Button_level_1.visible= true;
	pass # replace with function body


func _on_open2_pressed():
	$Final/coffre.visible=false;
	$Final/Fkey4.visible=true;
	
	$Final/open2.visible=false;
	$Final/ramass.visible=true;
	pass # replace with function body


func _on_ramass_pressed():
	$Final/Fkey4.visible=false;
	$Ressource_graphique/Fkey4.visible=true;
	
	$Final/ramass.visible=false;
	$Final/fini.visible=true;
	pass # replace with function body


func _on_fini_pressed():
	get_tree().change_scene("res://niveau/Niveau_2.tscn");
	pass # replace with function body
