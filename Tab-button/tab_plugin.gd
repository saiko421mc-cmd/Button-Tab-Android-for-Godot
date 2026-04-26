@tool
extends EditorPlugin

## Botón a instanciar
var boton_tab: Button
## Posición en la
@export var position_bar: int = 2

func _enter_tree():
# 1. Creamos el contenedor del botón
  
# 2. Creamos el botón
	boton_tab = Button.new()
	boton_tab.text = "Tab"
	boton_tab.focus_mode = Control.FOCUS_NONE
	boton_tab.mouse_filter = Control.MOUSE_FILTER_PASS
	boton_tab.flat = true
	boton_tab.add_theme_stylebox_override("normal", get_editor_interface().get_base_control().get_theme_stylebox("normal", "Button"))

	var barra_android = _buscar_barra_lateral(get_editor_interface().get_base_control())
	if barra_android:
		barra_android.add_child(boton_tab)
		barra_android.move_child(boton_tab, position_bar)
	else:
		add_control_to_container(CONTAINER_TOOLBAR, boton_tab)
	# Detecta si el botón se presionó.
	boton_tab.pressed.connect(_al_presionar_tab)

func _exit_tree():
	if boton_tab:
		boton_tab.queue_free()
		  
func _al_presionar_tab():
	var script_editor = get_editor_interface().get_script_editor()
	var current_editor = script_editor.get_current_editor()
	if current_editor:
		var code_edit = current_editor.get_base_editor()
		if code_edit is CodeEdit:
			code_edit.insert_text_at_caret("\t")
			code_edit.grab_focus()

func _buscar_barra_lateral(nodo: Node) -> Control:
	if nodo is Button:
		if nodo.text == "Alt" or nodo.text == "Ctrl" or nodo.text == "Shift":
			return nodo.get_parent() as Control
					  
	for hijo in nodo.get_children():
		var resultado = _buscar_barra_lateral(hijo)
		if resultado:
			return resultado
	return null
