extends Node

var Sens_2 = 1;
var Coffre = 1;

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _on_Bhaut_pressed():
	Sens_2 = 2;
	$Haut.visible=true;
	$Bas.visible=false;
	pass # replace with function body


func _on_Bbas_pressed():
	Sens_2 = 1;
	$Haut.visible=false;
	$Bas.visible=true;
	pass # replace with function body


func _on_Sortir_pressed():
	if Coffre==4:
		get_tree().change_scene("res://niveau/Niveau_3.tscn");
	pass # replace with function body


func _on_ABG_pressed():
	$Lv21/Graphisme/sortie.visible = false;
	$Lv21/Graphisme/PHG.visible = false;
	$Lv21/Graphisme/PHD.visible = false;
	$Lv21/Graphisme/PBD.visible = false;
	$Lv21/Graphisme/PBG.visible = false;
	$Lv21/Graphisme/updownbuton.visible = false;
	$Lv21/Graphisme/faux.visible = true;
	
	$Lv21/Interaction/ABG.visible = false;
	$Lv21/Interaction/ABD.visible = false;
	$Lv21/Interaction/Sortir.visible = false;
	$Lv21/Interaction/Bhaut.visible = false;
	$Lv21/Interaction/Bbas.visible = false;
	$Lv21/Interaction/Back.visible = true;
	pass # replace with function body


func _on_Back_pressed():
	$Lv21/Graphisme/sortie.visible = true;
	$Lv21/Graphisme/PHG.visible = true;
	$Lv21/Graphisme/PHD.visible = true;
	$Lv21/Graphisme/PBD.visible = true;
	$Lv21/Graphisme/PBG.visible = true;
	$Lv21/Graphisme/updownbuton.visible = true;
	$Lv21/Graphisme/faux.visible = false;
	
	$Lv21/Interaction/ABG.visible = true;
	$Lv21/Interaction/ABD.visible = true;
	$Lv21/Interaction/Sortir.visible = true;
	$Lv21/Interaction/Bhaut.visible = true;
	$Lv21/Interaction/Bbas.visible = true;
	$Lv21/Interaction/Back.visible = false;
	pass # replace with function body


func _on_ABD_pressed():
	$Lv21/Graphisme/sortie.visible = false;
	$Lv21/Graphisme/PHG.visible = false;
	$Lv21/Graphisme/PHD.visible = false;
	$Lv21/Graphisme/PBD.visible = false;
	$Lv21/Graphisme/PBG.visible = false;
	$Lv21/Graphisme/updownbuton.visible = false;
	
	$Lv21/Interaction/ABG.visible = false;
	$Lv21/Interaction/ABD.visible = false;
	$Lv21/Interaction/Sortir.visible = false;
	$Lv21/Interaction/Bhaut.visible = false;
	$Lv21/Interaction/Bbas.visible = false;
	
	if Sens_2==1:
		$Lv21/Interaction/Back.visible = true;	
		$Lv21/Graphisme/faux.visible = true;
		
	if Sens_2==2:
		$Lv22/Graphisme/PHG2.visible = true;
		$Lv22/Graphisme/PHD2.visible = true;
		$Lv22/Graphisme/PBD2.visible = true;
		$Lv22/Graphisme/PBG2.visible = true;
		$Lv22/Graphisme/updownbuton2.visible = true;
	
		$Lv22/Interaction/ABG2.visible = true;
		$Lv22/Interaction/ABD2.visible = true;
		$Lv22/Interaction/Bhaut2.visible = true;
		$Lv22/Interaction/Bbas2.visible = true;

	pass # replace with function body


func _on_Bbas2_pressed():
	Sens_2 = 1;
	$Haut.visible=false;
	$Bas.visible=true;
	pass # replace with function body


func _on_Bhaut2_pressed():
	Sens_2 = 2;
	$Haut.visible=true;
	$Bas.visible=false;
	pass # replace with function body


func _on_ABG2_pressed():
	$Lv22/Graphisme/PHG2.visible = false;
	$Lv22/Graphisme/PHD2.visible = false;
	$Lv22/Graphisme/PBD2.visible = false;
	$Lv22/Graphisme/PBG2.visible = false;
	$Lv22/Graphisme/updownbuton2.visible = false;
	
	$Lv22/Interaction/ABG2.visible = false;
	$Lv22/Interaction/ABD2.visible = false;
	$Lv22/Interaction/Bhaut2.visible = false;
	$Lv22/Interaction/Bbas2.visible = false;
	
	if Sens_2==1:
		$Lv22/Graphisme/faux2.visible = true;
		$Lv22/Interaction/Back2.visible = true;
		
	if Sens_2==2:
		$Lv21/Graphisme/sortie.visible = true;
		$Lv21/Graphisme/PHG.visible = true;
		$Lv21/Graphisme/PHD.visible = true;
		$Lv21/Graphisme/PBD.visible = true;
		$Lv21/Graphisme/PBG.visible = true;
		$Lv21/Graphisme/updownbuton.visible = true;
	
		$Lv21/Interaction/ABG.visible = true;
		$Lv21/Interaction/ABD.visible = true;
		$Lv21/Interaction/Sortir.visible = true;
		$Lv21/Interaction/Bhaut.visible = true;
		$Lv21/Interaction/Bbas.visible = true;
	pass # replace with function body


func _on_Back2_pressed():
	$Lv22/Graphisme/PHG2.visible = true;
	$Lv22/Graphisme/PHD2.visible = true;
	$Lv22/Graphisme/PBD2.visible = true;
	$Lv22/Graphisme/PBG2.visible = true;
	$Lv22/Graphisme/updownbuton2.visible = true;
	
	$Lv22/Interaction/ABG2.visible = true;
	$Lv22/Interaction/ABD2.visible = true;
	$Lv22/Interaction/Bhaut2.visible = true;
	$Lv22/Interaction/Bbas2.visible = true;
	
	$Lv22/Graphisme/faux2.visible = false;
	$Lv22/Interaction/Back2.visible = false;
	
	pass # replace with function body


func _on_ABD2_pressed():
	$Lv22/Graphisme/PHG2.visible = false;
	$Lv22/Graphisme/PHD2.visible = false;
	$Lv22/Graphisme/PBD2.visible = false;
	$Lv22/Graphisme/PBG2.visible = false;
	$Lv22/Graphisme/updownbuton2.visible = false;
	
	$Lv22/Interaction/ABG2.visible = false;
	$Lv22/Interaction/ABD2.visible = false;
	$Lv22/Interaction/Bhaut2.visible = false;
	$Lv22/Interaction/Bbas2.visible = false;
	
	if Sens_2==1:
		$Lv23/Graphisme/PHG3.visible = true;
		$Lv23/Graphisme/PHD3.visible = true;
		$Lv23/Graphisme/PBD3.visible = true;
		$Lv23/Graphisme/PBG3.visible = true;
		$Lv23/Graphisme/updownbuton3.visible = true;
	
		$Lv23/Interaction/ABG3.visible = true;
		$Lv23/Interaction/ABD3.visible = true;
		$Lv23/Interaction/Bhaut3.visible = true;
		$Lv23/Interaction/Bbas3.visible = true;
	
	if Sens_2==2:
		$Lv22/Graphisme/faux2.visible = true;
		$Lv22/Interaction/Back2.visible = true;
		
	pass # replace with function body


func _on_Bbas3_pressed():
	Sens_2 = 1;
	$Haut.visible=false;
	$Bas.visible=true;
	
	pass # replace with function body


func _on_Bhaut3_pressed():
	Sens_2 = 2;
	$Haut.visible=true;
	$Bas.visible=false;
	pass # replace with function body


func _on_ABG3_pressed():
	$Lv23/Graphisme/PHG3.visible = false;
	$Lv23/Graphisme/PHD3.visible = false;
	$Lv23/Graphisme/PBD3.visible = false;
	$Lv23/Graphisme/PBG3.visible = false;
	$Lv23/Graphisme/updownbuton3.visible = false;
	
	$Lv23/Interaction/ABG3.visible = false;
	$Lv23/Interaction/ABD3.visible = false;
	$Lv23/Interaction/Bhaut3.visible = false;
	$Lv23/Interaction/Bbas3.visible = false;
	
	if Sens_2==1:
		$Lv23/Graphisme/faux3.visible = true;
		$Lv23/Interaction/Back3.visible = true;
		
	if Sens_2==2:
		$Lv24/Graphisme/faux.visible=true
		$Lv24/Interaction/Partir.visible=true;
		
		if Coffre<2:
			$Lv24/Graphisme/coffre.visible=true;
			$Lv24/Interaction/coffre.visible=true;
		
		if Coffre==3:
			$Lv24/Graphisme/Fkey1.visible=true;
			$Lv24/Interaction/coffre.visible=true;
	pass # replace with function body


func _on_ABD3_pressed():
	$Lv23/Graphisme/PHG3.visible = false;
	$Lv23/Graphisme/PHD3.visible = false;
	$Lv23/Graphisme/PBD3.visible = false;
	$Lv23/Graphisme/PBG3.visible = false;
	$Lv23/Graphisme/updownbuton3.visible = false;
	
	$Lv23/Interaction/ABG3.visible = false;
	$Lv23/Interaction/ABD3.visible = false;
	$Lv23/Interaction/Bhaut3.visible = false;
	$Lv23/Interaction/Bbas3.visible = false;
	
	if Sens_2==1:
		$Lv21/Graphisme/PHG.visible = true;
		$Lv21/Graphisme/PHD.visible = true;
		$Lv21/Graphisme/PBD.visible = true;
		$Lv21/Graphisme/PBG.visible = true;
		$Lv21/Graphisme/updownbuton.visible = true;
	
		$Lv21/Interaction/ABG.visible = true;
		$Lv21/Interaction/ABD.visible = true;
		$Lv21/Interaction/Bhaut.visible = true;
		$Lv21/Interaction/Bbas.visible = true;
	
	if Sens_2==2:
		$Lv23/Graphisme/faux3.visible = true;
		$Lv23/Interaction/Back3.visible = true;
		
	pass # replace with function body


func _on_coffre_pressed():
	
	if Coffre==2:
		Coffre=Coffre+1;
	
	if Coffre==1:
		$Lv24/Graphisme/coffre.visible = false;
		$Lv24/Graphisme/Fkey1.visible = true;
		Coffre=2;
		
	if Coffre==3:
		$Lv24/Graphisme/Fkey1.visible = false;
		$Ressource/Fkey1.visible = true;
		Coffre=4;
		
	pass # replace with function body


func _on_Partir_pressed():
	$Lv23/Graphisme/PHG3.visible = true;
	$Lv23/Graphisme/PHD3.visible = true;
	$Lv23/Graphisme/PBD3.visible = true;
	$Lv23/Graphisme/PBG3.visible = true;
	$Lv23/Graphisme/updownbuton3.visible = true;
	
	$Lv23/Interaction/ABG3.visible = true;
	$Lv23/Interaction/ABD3.visible = true;
	$Lv23/Interaction/Bhaut3.visible = true;
	$Lv23/Interaction/Bbas3.visible = true;

	$Lv24/Graphisme/faux.visible= false;
	$Lv24/Graphisme/Fkey1.visible= false;
	$Lv24/Graphisme/coffre.visible= false;
	
	$Lv24/Interaction/Partir.visible= false;
	$Lv24/Interaction/coffre.visible= false;
	$Lv24/Interaction/coffre.visible= false;
	pass # replace with function body


func _on_Back3_pressed():
	$Lv23/Graphisme/PHG3.visible = true;
	$Lv23/Graphisme/PHD3.visible = true;
	$Lv23/Graphisme/PBD3.visible = true;
	$Lv23/Graphisme/PBG3.visible = true;
	$Lv23/Graphisme/updownbuton3.visible = true;
	
	$Lv23/Interaction/ABG3.visible = true;
	$Lv23/Interaction/ABD3.visible = true;
	$Lv23/Interaction/Bhaut3.visible = true;
	$Lv23/Interaction/Bbas3.visible = true;
	
	$Lv23/Graphisme/faux3.visible = false;
	$Lv23/Interaction/Back3.visible = false;
	pass # replace with function body


func _on_Start_pressed():
	$hub.visible=false;
	$fond.visible=true;
	$Bas.visible=true;
	$Ressource/moove.visible=false;
	
	$Lv21/Graphisme/sortie.visible = true;
	$Lv21/Graphisme/PHG.visible = true;
	$Lv21/Graphisme/PHD.visible = true;
	$Lv21/Graphisme/PBD.visible = true;
	$Lv21/Graphisme/PBG.visible = true;
	$Lv21/Graphisme/updownbuton.visible = true;
	
	$Lv21/Interaction/ABG.visible = true;
	$Lv21/Interaction/ABD.visible = true;
	$Lv21/Interaction/Sortir.visible = true;
	$Lv21/Interaction/Bhaut.visible = true;
	$Lv21/Interaction/Bbas.visible = true;
	
	pass # replace with function body
