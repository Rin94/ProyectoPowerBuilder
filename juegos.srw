$PBExportHeader$juegos.srw
forward
global type juegos from window
end type
type phl_1 from picturehyperlink within juegos
end type
type cb_3 from commandbutton within juegos
end type
type sle_2 from singlelineedit within juegos
end type
type cb_2 from commandbutton within juegos
end type
type lb_1 from listbox within juegos
end type
type sle_1 from singlelineedit within juegos
end type
type cb_1 from commandbutton within juegos
end type
type cb_4 from commandbutton within juegos
end type
end forward

global type juegos from window
integer width = 3241
integer height = 1528
boolean titlebar = true
string title = "juegos"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
long backcolor = 16776960
string icon = "AppIcon!"
boolean center = true
phl_1 phl_1
cb_3 cb_3
sle_2 sle_2
cb_2 cb_2
lb_1 lb_1
sle_1 sle_1
cb_1 cb_1
cb_4 cb_4
end type
global juegos juegos

on juegos.create
this.phl_1=create phl_1
this.cb_3=create cb_3
this.sle_2=create sle_2
this.cb_2=create cb_2
this.lb_1=create lb_1
this.sle_1=create sle_1
this.cb_1=create cb_1
this.cb_4=create cb_4
this.Control[]={this.phl_1,&
this.cb_3,&
this.sle_2,&
this.cb_2,&
this.lb_1,&
this.sle_1,&
this.cb_1,&
this.cb_4}
end on

on juegos.destroy
destroy(this.phl_1)
destroy(this.cb_3)
destroy(this.sle_2)
destroy(this.cb_2)
destroy(this.lb_1)
destroy(this.sle_1)
destroy(this.cb_1)
destroy(this.cb_4)
end on

type phl_1 from picturehyperlink within juegos
integer x = 2030
integer y = 64
integer width = 974
integer height = 948
string pointer = "HyperLink!"
boolean originalsize = true
string picturename = "C:\Users\Jerad\Desktop\images3.jpg"
boolean focusrectangle = false
string url = "http://date-a-live-anime.com/"
end type

type cb_3 from commandbutton within juegos
integer x = 1445
integer y = 620
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = oem!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Terminal"
string text = "Limpiar"
end type

event clicked;lb_1.reset( )
end event

type sle_2 from singlelineedit within juegos
integer x = 736
integer y = 64
integer width = 503
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
long textcolor = 33554432
string text = "Pon el número"
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within juegos
integer x = 571
integer y = 1040
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = oem!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Terminal"
string text = "borrar"
end type

event clicked;
lb_1.deleteitem(integer(sle_2.text))
end event

type lb_1 from listbox within juegos
integer x = 78
integer y = 188
integer width = 1262
integer height = 824
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean sorted = false
borderstyle borderstyle = styleshadowbox!
end type

event doubleclicked;int i


i=lb_1.selectedindex( )
this.deleteitem(i)
end event

type sle_1 from singlelineedit within juegos
integer x = 82
integer y = 72
integer width = 599
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
long textcolor = 33554432
string text = "juegos"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within juegos
integer x = 96
integer y = 1040
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = oem!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Terminal"
string text = "ok"
end type

event clicked;//lb_1.additem(sle_1.text )

string sinespacios

sinespacios=Trim(sle_1.text)

string cadena
cadena=sinespacios
boolean cas= true
/*
if Match(cadena, "[A-Za-z]") = false then 
messagebox("Error","Ingrese solo letras",Information!) 
//cadena="" 
//sle_1.setfocus( ) 
return

	 
end if 
*/
	



int i
boolean agregar=true
for i=1 to lb_1.totalitems( )
	if cadena=lb_1.text(i)  then
		messagebox("Horror","El dato ya existe nano")
		//open(lol)
		
		agregar=false
		exit
	else
		agregar=true
	end if
	
next
//cadena=sinespacios
if NOT Match(cadena,"^[A-ZÑa-zñ]+$")  then 
messagebox("Error","Ingrese solo letras",Information!)
else 
	if	agregar then
	lb_1.additem(cadena)
//	lb_1.additem(sle_1.text )
	sle_1.text=""
	end if
end if
end event

type cb_4 from commandbutton within juegos
integer x = 1454
integer y = 840
integer width = 402
integer height = 112
integer taborder = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = oem!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Terminal"
string text = "modificar"
end type

event clicked;int i=0
i=lb_1.selectedindex()
lb_1.deleteitem(i)
lb_1.insertitem( sle_1.text, i)
/*
//for i=1 to lb_1.totalitems( )
lb_1.deleteitem( integer(sle_2.text))
lb_1.insertitem( sle_1.text, integer(sle_2.text) )
	//lb_1.insertitem( sle_1.text, i)
		//end if
	//next
	*/
end event

