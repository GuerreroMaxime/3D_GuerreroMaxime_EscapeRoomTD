extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var CompteurD=1;
var CompteurG=3;

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_droite_pressed():
	CompteurG=CompteurG+1;
	CompteurD=CompteurD+1;
	
	if CompteurD==5:
		CompteurD=1;
		
	if CompteurG==0:
	  	CompteurG=4;
		
	if CompteurG==5:
		CompteurG=1;
		
	if CompteurD==0:
	  	CompteurD=4;
	
	if CompteurD==1:
	 $Graphisme/porte_droite.visible=false;
	 $Graphisme/porte_bas.visible=true;
	 $Graphisme/porte_gauche.visible=false;
	 $Graphisme/porte_haut.visible=false;
	
	 $Graphisme/moove.visible=false;
	 $Interaction/Nextroom.visible=false;
	
	elif  CompteurD==2:
	 $Graphisme/porte_bas.visible=false;
	 $Graphisme/porte_gauche.visible=true;
	 $Graphisme/porte_droite.visible=false;
	 $Graphisme/porte_haut.visible=false;
	
	elif  CompteurD==3:
	 $Graphisme/porte_gauche.visible=false;
	 $Graphisme/porte_haut.visible=true;
	 $Graphisme/porte_droite.visible=false;
	 $Graphisme/porte_bas.visible=false;
	
	elif  CompteurD==4:
	 $Graphisme/porte_haut.visible=false;
	 $Graphisme/porte_droite.visible=true;
	 $Graphisme/porte_bas.visible=false;
	 $Graphisme/porte_gauche.visible=false;
	
	 $Graphisme/moove.visible=true;
	 $Interaction/Nextroom.visible=true

	 
	pass # replace with function body


func _on_Button_gauche_pressed():
	CompteurG=CompteurG-1;
	CompteurD=CompteurD-1;
	
	if CompteurD==5:
		CompteurD=1;
		
	if CompteurG==0:
	  	CompteurG=4;
		
	if CompteurG==5:
		CompteurG=1;
		
	if CompteurD==0:
	  	CompteurD=4;
			
	if CompteurG==1:
	 $Graphisme/porte_haut.visible=true;
	 $Graphisme/porte_droite.visible=false;
	 $Graphisme/porte_gauche.visible=false;
	 $Graphisme/porte_bas.visible=false;
	
	 $Graphisme/moove.visible=false;
	 $Interaction/Nextroom.visible=false;
	
	if CompteurG==2:
	 $Graphisme/porte_droite.visible=true;
	 $Graphisme/porte_bas.visible=false;
	 $Graphisme/porte_gauche.visible=false;
	 $Graphisme/porte_haut.visible=false;
	
	 $Graphisme/moove.visible=true;
	 $Interaction/Nextroom.visible=true
	
	if CompteurG==3:
	 $Graphisme/porte_bas.visible=true;
	 $Graphisme/porte_gauche.visible=false;
	 $Graphisme/porte_droite.visible=false;
	 $Graphisme/porte_haut.visible=false;
	
	if CompteurG==4:
	 $Graphisme/porte_gauche.visible=true;
	 $Graphisme/porte_haut.visible=false;
	 $Graphisme/porte_droite.visible=false;
	 $Graphisme/porte_bas.visible=false;

	pass # replace with function body


func _on_Nextroom_pressed():
	get_tree().change_scene("res://niveau/Demo2.tscn")
	pass # replace with function body
