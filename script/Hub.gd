extends Node

func _ready():
	pass


func _on_delock_pressed():
	$Graphisme/lock.visible=false;
	$Graphisme/cle.visible=false;
	$Interaction/delock.visible=false;
	$Interaction/Towin.visible=true;
	pass # replace with function body


func _on_Towin_pressed():
	$Graphisme/porte_fond.visible=false;
	$Graphisme/porte_fond2.visible=false;
	$Graphisme/porte_fond3.visible=false;
	$Graphisme/porte_droite.visible=false;
	$Graphisme/porte_gauche.visible=false;
	$Interaction/Towin.visible=false;
	$Graphisme/TextEdit.visible=true;
	pass # replace with function body
