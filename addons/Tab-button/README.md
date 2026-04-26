# Godot 4 Android Tab Button Plugin 🚀

Un plugin esencial para Godot Engine 4 (Android) que añade un botón de tabulación físico a la barra de herramientas lateral. 
Mejora drásticamente el flujo de trabajo de programación en dispositivos táctiles al eliminar la necesidad de añadir la tecla Tab en el teclado virtual.

## ✨ Características (Features)
- **Integración Nativa:** Se integra perfectamente en la barra lateral de herramientas de Android de Godot 4.
- **Sin interrupciones:** Configurado para no cerrar el teclado virtual al ser presionado (`FOCUS_NONE`).
- **Personalizable:** Posición ajustable dentro de la barra lateral.
- **Ligero:** Código optimizado y limpio.

---

## 🛠️ Instalación (Installation)

1. Descarga o copia la carpeta `addons/tab_button`.
2. Pégala en el directorio `res://addons/` de tu proyecto de Godot.
3. Ve a **Proyecto -> Configuración del Proyecto -> Plugins** y activa el plugin llamado **"Boton Tab Android"**.

---

## ⚙️ Personalización (Customization)

Puedes cambiar la posición del botón fácilmente. Abre el script `tab_plugin.gd` y modifica el valor de la variable `position_bar`:
  
  ```gdscript
  
  @export var position_bar: int = 2
  
  ```

| Valor  | Ubicación |
| ------ | --------- |
| 2       | Superior: Sobre todos los botones (Above all buttons)    |
| 4       | Edición: Sobre los botones de "Deshacer/Rehacer" (Above Undo/Redo)    |
| 9       | Modificadores: Sobre los botones "Ctrl", "Shift" y "Alt"  |
| 12      | Inferior: Al final de la barra (Bottom of the bar))   |

---

📄 Créditos (Credits)
​Desarrollado para mejorar la experiencia de desarrollo móvil en Godot Engine 4.
@TowersCodes421

---





---

​🌎 English Version of the README
​This is a Godot 4 plugin specifically designed for Android users. It adds a persistent "Tab" button to the editor's sidebar, making coding on touch screens much more efficient.
​How to customize position:
  ​To change the button's location within the Android toolbar, edit the position_bar variable in tab_plugin.gd. By default, it is set to 2 (the very top).
  ​Position values:
	​2: At the very top, above everything.
	​4: Above the Undo/Redo buttons.
	​9: Above the Ctrl, Shift, and Alt modifiers.
	​12: At the very bottom of the sidebar.

# Versión en Español

Para cambiar la posición del botón en la barra de Android, 
ve al script "tab_plugin.gd" y modifica la variable "position_bar"
por defecto, la posición del botón es 2, siendo el primer botón.
  Pero puedes modificar este numero a tu gusto.

position_bar: int =
# 2 : Sobre todos los botones.
# 4 : Sobre los botones "rehacer" y "deshacer".
# 9 : Sobre los botones "Ctrl", "Shilt" y "Alt".
# 12 : Último en la barra.
