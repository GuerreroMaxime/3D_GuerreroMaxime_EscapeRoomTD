extends Node

var Sens_1=1;
var Sens_2=1;
var Sens_3=1;
var Lock_1=1;
var Lock_2=1;
var Check_1=0;
var Coffre=1;

var Sens2=1;
var Lock2=1;

func _on_Leave_pressed():
	if Coffre==2:
		get_tree().change_scene("res://niveau/Niveau_4.tscn");
	pass # replace with function body


func _on_Down_pressed():
	
	Sens_3=1;
		
	if Lock_2==1:
		Sens_2=1;

	if Lock_1==1:
		Sens_1=1;
		$Lv1A/Graphisme/porte_sortie.visible=true;
		$Lv1A/Graphisme/porte_1B.visible=true;
	
		$Lv1A/Interaction/Leave.visible=true;
		$Lv1A/Interaction/To_1B.visible=true;
	
		$Lv1A/Graphisme/porte_sortie2.visible=false;
		$Lv1A/Graphisme/porte_1B2.visible=false;
	
	pass # replace with function body


func _on_Up_pressed():
	
	Sens_3=2;
		
	if Lock_2==1:
		Sens_2=2;

	if Lock_1==1:
		Sens_1=2;
		$Lv1A/Graphisme/porte_sortie.visible=false;
		$Lv1A/Graphisme/porte_1B.visible=false;
	
		$Lv1A/Interaction/Leave.visible=false;
		$Lv1A/Interaction/To_1B.visible=false;
	
		$Lv1A/Graphisme/porte_sortie2.visible=true;
		$Lv1A/Graphisme/porte_1B2.visible=true;
	pass # replace with function body


func _on_Locker_pressed():
	
	if Lock_1==1 && Check_1==0:
		Lock_1=2;
		$Lv1A/Graphisme/aff1.visible=false;
		$Lv1A/Graphisme/aff2.visible=true;
		Check_1=1;
		
	if Lock_1==2 && Check_1==0:
		Lock_1=1;
		$Lv1A/Graphisme/aff1.visible=true;
		$Lv1A/Graphisme/aff2.visible=false;
		Check_1=1;
		
	Check_1=0;
	pass # replace with function body


func _on_To_1B_pressed():
	$Lv1A/Graphisme/porte_sortie.visible=false;
	$Lv1A/Graphisme/porte_sortie2.visible=false;
	$Lv1A/Graphisme/boutton.visible=false;
	$Lv1A/Graphisme/aff1.visible=false;
	$Lv1A/Graphisme/aff2.visible=false;
	$Lv1A/Graphisme/updownbuton.visible=false;
	$Lv1A/Graphisme/porte_1B.visible=false;
	$Lv1A/Graphisme/porte_1B2.visible=false;
	
	$Lv1A/Interaction/Leave.visible=false;
	$Lv1A/Interaction/Up.visible=false;
	$Lv1A/Interaction/Down.visible=false;
	$Lv1A/Interaction/To_1B.visible=false;
	$Lv1A/Interaction/Locker.visible=false;
	
	$Lv1B/Graphisme/porte_1A.visible=true;
	$Lv1B/Graphisme/boutton.visible=true;
	$Lv1B/Interaction/To_1A.visible=true;
	$Lv1B/Interaction/Button.visible=true;
	
	if Sens_2==1:
		$Lv1B/Graphisme/porte_1C2.visible=true;
		
	if Sens_2==2:
		$Lv1B/Graphisme/porte_1C.visible=true;
		$Lv1B/Interaction/To_1C.visible=true;
		
	if Lock_2==1:
		$Lv1B/Graphisme/aff1.visible=true;
	
	if Lock_2==2:
		$Lv1B/Graphisme/aff2.visible=true;
		
	pass # replace with function body


func _on_To_1A_pressed():
	$Lv1B/Graphisme/porte_1A.visible=false;
	$Lv1B/Graphisme/boutton.visible=false;
	$Lv1B/Interaction/To_1A.visible=false;
	$Lv1B/Interaction/Button.visible=false;
	$Lv1B/Graphisme/porte_1C2.visible=false;
	$Lv1B/Graphisme/porte_1C.visible=false;
	$Lv1B/Interaction/To_1C.visible=false;
	$Lv1B/Graphisme/aff1.visible=false;
	$Lv1B/Graphisme/aff2.visible=false;
	
	$Lv1A/Graphisme/porte_sortie.visible=true;
	$Lv1A/Graphisme/boutton.visible=true;
	$Lv1A/Graphisme/updownbuton.visible=true;
	$Lv1A/Graphisme/porte_1B.visible=true;
	
	$Lv1A/Interaction/Leave.visible=true;
	$Lv1A/Interaction/Up.visible=true;
	$Lv1A/Interaction/Down.visible=true;
	$Lv1A/Interaction/To_1B.visible=true;
	$Lv1A/Interaction/Locker.visible=true;
	
	if Lock_1==1:
		$Lv1A/Graphisme/aff1.visible=true;
	
	if Lock_1==2:
		$Lv1A/Graphisme/aff2.visible=true;
	
	
	pass # replace with function body


func _on_Button_pressed():
	
	if Lock_2==1 && Check_1==0:
		Lock_2=2;
		$Lv1B/Graphisme/aff1.visible=false;
		$Lv1B/Graphisme/aff2.visible=true;
		Check_1=1;
		
	if Lock_2==2 && Check_1==0:
		Lock_2=1;
		$Lv1B/Graphisme/aff1.visible=true;
		$Lv1B/Graphisme/aff2.visible=false;
		Check_1=1;
		
	Check_1=0;
	pass # replace with function body


func _on_To_1C_pressed():
	$Lv1B/Graphisme/porte_1A.visible=false;
	$Lv1B/Graphisme/boutton.visible=false;
	$Lv1B/Interaction/To_1A.visible=false;
	$Lv1B/Interaction/Button.visible=false;
	$Lv1B/Graphisme/porte_1C2.visible=false;
	$Lv1B/Graphisme/porte_1C.visible=false;
	$Lv1B/Interaction/To_1C.visible=false;
	$Lv1B/Graphisme/aff1.visible=false;
	$Lv1B/Graphisme/aff2.visible=false;
	
	$Lv1C/Graphisme/porte_1B.visible=true;
	$Lv1C/Interaction/To_1B2.visible=true;
	
	if Sens_3==1:
		$Lv1C/Graphisme/porte_2A.visible=true;
		$Lv1C/Interaction/To_2A.visible=true;
		
	if Sens_3==2:
		$Lv1C/Graphisme/porte_2A2.visible=true;
	pass # replace with function body


func _on_To_1B2_pressed():
	$Lv1C/Graphisme/porte_1B.visible=false;
	$Lv1C/Interaction/To_1B2.visible=false;
	$Lv1C/Graphisme/porte_2A.visible=false;
	$Lv1C/Interaction/To_2A.visible=false;
	$Lv1C/Graphisme/porte_2A2.visible=false;
	
	$Lv1B/Graphisme/porte_1A.visible=true;
	$Lv1B/Graphisme/boutton.visible=true;
	$Lv1B/Interaction/To_1A.visible=true;
	$Lv1B/Interaction/Button.visible=true;
	$Lv1B/Graphisme/porte_1C.visible=true;
	$Lv1B/Interaction/To_1C.visible=true;
		
	if Lock_2==1:
		$Lv1B/Graphisme/aff1.visible=true;
	
	if Lock_2==2:
		$Lv1B/Graphisme/aff2.visible=true;
	
	pass # replace with function body


func _on_To_2A_pressed():
	$Lv1C/Graphisme/porte_1B.visible=false;
	$Lv1C/Interaction/To_2A.visible=false;
	$Lv1C/Graphisme/porte_2A.visible=false;
	$Lv1C/Interaction/To_1B2.visible=false;
	$Lv1C/Graphisme/porte_2A2.visible=false;
	
	$Lv2A/Graphisme/porte_gauche.visible=true;
	$Lv2A/Graphisme/porte_gauche2.visible=true;
	$Lv2A/Interaction/to_2B.visible=true;
	
	if Sens2==1 && Lock2==1 || Sens2==2 && Lock2==1 || Sens2==1 && Lock2==2:
		$Lv2A/Graphisme/porte_fond.visible=true;
		$Lv2A/Interaction/to_1C.visible=true;
		
		if Coffre==1:
			$Lv2A/Graphisme/coffre.visible=true;
		
	if Sens2==2 && Lock2==2:
		$Lv2A/Graphisme/porte_fond2.visible=true;
		
		if Coffre==1:
			$Lv2A/Graphisme/coffre2.visible=true;
			$Lv2A/Interaction/coffre.visible=true;
		
	if Lock2==1:
		$Lv2A/Graphisme/aff2.visible=true;
		
	if Lock2==2:
		$Lv2A/Graphisme/aff1.visible=true;

	
	pass # replace with function body


func _on_to_1C_pressed():	
	$Lv1C/Graphisme/porte_1B.visible=true;
	$Lv1C/Interaction/To_2A.visible=true;
	$Lv1C/Interaction/To_1B2.visible=true;
	$Lv1C/Graphisme/porte_2A.visible=true;
	
	$Lv2A/Graphisme/porte_fond.visible=false;
	$Lv2A/Graphisme/coffre.visible=false;
	$Lv2A/Graphisme/aff1.visible=false;
	$Lv2A/Graphisme/aff2.visible=false;
	$Lv2A/Graphisme/porte_gauche.visible=false;
	$Lv2A/Graphisme/porte_gauche2.visible=false;
	$Lv2A/Graphisme/coffre2.visible=false;
	$Lv2A/Graphisme/Fkey2.visible=false;
	$Lv2A/Interaction/to_1C.visible=false;
	$Lv2A/Interaction/to_2B.visible=false;
	
	pass # replace with function body


func _on_to_2B_pressed():
	$Lv2A/Graphisme/porte_fond.visible=false;
	$Lv2A/Graphisme/coffre.visible=false;
	$Lv2A/Graphisme/aff1.visible=false;
	$Lv2A/Graphisme/aff2.visible=false;
	$Lv2A/Graphisme/porte_gauche.visible=false;
	$Lv2A/Graphisme/porte_gauche2.visible=false;
	$Lv2A/Graphisme/porte_fond2.visible=false;
	$Lv2A/Graphisme/Fkey2.visible=false;
	$Lv2A/Graphisme/coffre2.visible=false;
	$Lv2A/Interaction/to_2B.visible=false;
	$Lv2A/Interaction/to_1C.visible=false;
	
	$Lv2B/Graphisme/updownbuton.visible=true;
	$Lv2B/Graphisme/porte_droite.visible=true;
	$Lv2B/Graphisme/porte_droite2.visible=true;
	
	if Lock2==1:
		$Lv2B/Graphisme/aff1.visible=true;
		
	if Lock2==2:
		$Lv2B/Graphisme/aff2.visible=true; 
		
	if Sens2==1 && Lock2==2 || Sens2==1 && Lock2==1 || Sens2==2 && Lock2==2 : 
		$Lv2B/Graphisme/porte_gauche.visible=true;
		$Lv2B/Interaction/To_2C.visible=true;
	
	if Sens2==2 && Lock2==1:
		$Lv2B/Graphisme/porte_gauche2.visible=true; 
		
	$Lv2B/Interaction/To_2A2.visible=true;
	$Lv2B/Interaction/Up2.visible=true;
	$Lv2B/Interaction/Down2.visible=true;
	
	pass # replace with function body


func _on_To_2A2_pressed():
	$Lv2B/Graphisme/updownbuton.visible=false;
	$Lv2B/Graphisme/porte_droite.visible=false;
	$Lv2B/Graphisme/porte_droite2.visible=false;
	$Lv2B/Graphisme/aff1.visible=false;
	$Lv2B/Graphisme/aff2.visible=false; 
	$Lv2B/Graphisme/porte_gauche.visible=false;
	$Lv2B/Graphisme/porte_gauche2.visible=false; 
		
	$Lv2B/Interaction/To_2A2.visible=false;
	$Lv2B/Interaction/To_2C.visible=false;
	$Lv2B/Interaction/Up2.visible=false;
	$Lv2B/Interaction/Down2.visible=false;
	
	
	$Lv2A/Graphisme/porte_gauche.visible=true;
	$Lv2A/Graphisme/porte_gauche2.visible=true;
	$Lv2A/Interaction/to_2B.visible=true;
	
	if Sens2==1 && Lock2==1 || Sens2==2 && Lock2==1 || Sens2==1 && Lock2==2:
		$Lv2A/Graphisme/porte_fond.visible=true;
		$Lv2A/Interaction/to_1C.visible=true;
		
		if Coffre==1:
			$Lv2A/Graphisme/coffre.visible=true;
		
		
	if Sens2==2 && Lock2==2:
		$Lv2A/Graphisme/porte_fond2.visible=true;
		
		if Coffre==1:
			$Lv2A/Graphisme/coffre2.visible=true;
			$Lv2A/Interaction/coffre.visible=true;
	
	if Lock2==1:
		$Lv2A/Graphisme/aff2.visible=true;
		
	if Lock2==2:
		$Lv2A/Graphisme/aff1.visible=true;
		
	pass # replace with function body


func _on_To_2C_pressed():
	$Lv2B/Graphisme/updownbuton.visible=false;
	$Lv2B/Graphisme/porte_droite.visible=false;
	$Lv2B/Graphisme/porte_droite2.visible=false;
	$Lv2B/Graphisme/aff1.visible=false;
	$Lv2B/Graphisme/aff2.visible=false; 
	$Lv2B/Graphisme/porte_gauche.visible=false;
	$Lv2B/Graphisme/porte_gauche2.visible=false; 
		
	$Lv2B/Interaction/To_2A2.visible=false;
	$Lv2B/Interaction/To_2C.visible=false;
	$Lv2B/Interaction/Up2.visible=false;
	$Lv2B/Interaction/Down2.visible=false;
	
	$Lv2C/Graphisme/boutton.visible=true;
	$Lv2C/Graphisme/porte_droite.visible=true;
	$Lv2C/Interaction/Sortie.visible=true;
	$Lv2C/Interaction/Checked.visible=true;
	
	if Lock2==1:
		$Lv2C/Graphisme/aff1.visible=true;
		
	if Lock2==2:
		$Lv2C/Graphisme/aff2.visible=true; 
	
	pass # replace with function body


func _on_Sortie_pressed(): 
	$Lv2C/Graphisme/boutton.visible=false;
	$Lv2C/Graphisme/porte_droite.visible=false;
	$Lv2C/Interaction/Sortie.visible=false;
	$Lv2C/Interaction/Checked.visible=false;
	$Lv2C/Graphisme/aff1.visible=false;
	$Lv2C/Graphisme/aff2.visible=false; 
	
	$Lv2B/Graphisme/updownbuton.visible=true;
	$Lv2B/Graphisme/porte_droite.visible=true;
	$Lv2B/Graphisme/porte_droite2.visible=true;
	
	if Lock2==1:
		$Lv2B/Graphisme/aff1.visible=true;
		
	if Lock2==2:
		$Lv2B/Graphisme/aff2.visible=true; 
		
	if Sens2==1 && Lock2==2 || Sens2==1 && Lock2==1:
		$Lv2B/Graphisme/porte_gauche.visible=true;
		
	if Sens2==2 && Lock2==2:
		$Lv2B/Graphisme/porte_gauche2.visible=true; 
		
	$Lv2B/Interaction/To_2A2.visible=true;
	$Lv2B/Interaction/To_2C.visible=true;
	$Lv2B/Interaction/Up2.visible=true;
	$Lv2B/Interaction/Down2.visible=true;
	
	
	pass # replace with function body


func _on_Checked_pressed():
	
	if Lock2==1 && Check_1==0:
		Lock2=2;
		$Lv2C/Graphisme/aff1.visible=false;
		$Lv2C/Graphisme/aff2.visible=true;
		Check_1=1;
		
	if Lock2==2 && Check_1==0:
		Lock2=1;
		$Lv2C/Graphisme/aff1.visible=true;
		$Lv2C/Graphisme/aff2.visible=false;
		Check_1=1;
		
	Check_1=0;
	pass # replace with function body


func _on_Up2_pressed():
	
	Sens2=2;
	
	if Lock2==1:
		$Lv2B/Graphisme/porte_gauche2.visible=true;
		$Lv2B/Graphisme/porte_gauche.visible=false;
		$Lv2B/Interaction/To_2C.visible=false;
	pass # replace with function body


func _on_Down2_pressed():	

	Sens2=1;
	
	if Lock2==1:
		$Lv2B/Graphisme/porte_gauche.visible=true;
		$Lv2B/Graphisme/porte_gauche2.visible=false;
		$Lv2B/Interaction/To_2C.visible=true;
	pass # replace with function body


func _on_coffre_pressed():
	
	$Lv2A/Graphisme/coffre2.visible=false;
	$Lv2A/Graphisme/Fkey2.visible=true;
	
	$Lv2A/Interaction/coffre.visible=false;
	$Lv2A/Interaction/lakey.visible=true;
	pass # replace with function body


func _on_lakey_pressed():
	$Lv2A/Graphisme/Fkey2.visible=false;
	$Lv2A/Interaction/lakey.visible=false;
	Coffre=2;
	$Fini/Fkey2.visible=true;
	pass # replace with function body


func _on_start_pressed():
	
	$hub.visible=false;
	$moove.visible=false;
	$start.visible=false
	
	$fond.visible=true;
	$Lv1A/Graphisme/porte_sortie.visible=true;
	$Lv1A/Graphisme/boutton.visible=true;
	$Lv1A/Graphisme/aff1.visible=true;
	$Lv1A/Graphisme/updownbuton.visible=true;
	$Lv1A/Graphisme/porte_1B.visible=true;
	
	$Lv1A/Interaction/Leave.visible=true;
	$Lv1A/Interaction/Up.visible=true;
	$Lv1A/Interaction/Down.visible=true;
	$Lv1A/Interaction/To_1B.visible=true;
	$Lv1A/Interaction/Locker.visible=true;
	pass # replace with function body
