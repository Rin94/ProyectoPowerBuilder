$PBExportHeader$identificador.srw
forward
global type identificador from window
end type
type st_3 from statictext within identificador
end type
type cbx_1 from checkbox within identificador
end type
type st_2 from statictext within identificador
end type
type st_1 from statictext within identificador
end type
type sle_2 from singlelineedit within identificador
end type
type sle_1 from singlelineedit within identificador
end type
type cb_2 from commandbutton within identificador
end type
type cb_1 from commandbutton within identificador
end type
end forward

global type identificador from window
integer width = 3141
integer height = 1440
boolean titlebar = true
string title = "Identificacion"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 8421376
string icon = "AppIcon!"
boolean center = true
st_3 st_3
cbx_1 cbx_1
st_2 st_2
st_1 st_1
sle_2 sle_2
sle_1 sle_1
cb_2 cb_2
cb_1 cb_1
end type
global identificador identificador

on identificador.create
this.st_3=create st_3
this.cbx_1=create cbx_1
this.st_2=create st_2
this.st_1=create st_1
this.sle_2=create sle_2
this.sle_1=create sle_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.st_3,&
this.cbx_1,&
this.st_2,&
this.st_1,&
this.sle_2,&
this.sle_1,&
this.cb_2,&
this.cb_1}
end on

on identificador.destroy
destroy(this.st_3)
destroy(this.cbx_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type st_3 from statictext within identificador
integer x = 850
integer y = 168
integer width = 1417
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
long textcolor = 16776960
long backcolor = 8421376
string text = "Acceder al Sistema ~"Power Game´s~""
long bordercolor = 8421376
boolean focusrectangle = false
end type

type cbx_1 from checkbox within identificador
integer x = 1870
integer y = 716
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "valor"
end type

event clicked;if cbx_1.checked=true then sle_2.password=false
if cbx_1.checked=false then sle_2.password=true


end event

type st_2 from statictext within identificador
integer x = 891
integer y = 668
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16776960
long backcolor = 8421376
string text = "contraseña"
boolean focusrectangle = false
end type

type st_1 from statictext within identificador
integer x = 914
integer y = 504
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16776960
long backcolor = 8421376
string text = "usuario"
long bordercolor = 32768
boolean focusrectangle = false
end type

event clicked;sle_1.text=upper(text)

end event

type sle_2 from singlelineedit within identificador
integer x = 1399
integer y = 648
integer width = 402
integer height = 80
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "password"
boolean password = true
borderstyle borderstyle = stylelowered!
end type

event modified; String pass1="korehazombiedesuka"
  String pass2="oppais"
  
end event

type sle_1 from singlelineedit within identificador
integer x = 1399
integer y = 496
integer width = 402
integer height = 92
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "usuario"
borderstyle borderstyle = stylelowered!
end type

event losefocus;
sle_1.textcase=upper!







end event

type cb_2 from commandbutton within identificador
integer x = 1605
integer y = 1004
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "cancelar"
end type

event clicked;close(identificador)
end event

type cb_1 from commandbutton within identificador
integer x = 992
integer y = 1012
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "acceder"
end type

event clicked;/*
CONSTANT String id = "JONATHAN"
CONSTANT String id1 = "JARED"
String password= "korewazombiedesuka"
//IF sle_1.text=id AND sle_2.text = password then open(w-principal)
//else messagebox("Error" , "Usuario o contrasena incorrecta",stopsign!)
//IF sle_1.text=id1 AND sle_2.text = password then open(w-principal)
//else messagebox("Error" , "Usuario o contrasena incorrecta",stopsign!)
/*if sle_1.text=id AND sle_2.text = password then
	open(w-principal)
	
elseif sle_1.text=id1 AND sle_2.text = password then 
	open(w-principal)
else 
	messagebox("Error" , "Usuario o contrasena incorrecta",stopsign!)
end if*/

/*if sle_1.text = id OR sle_1.text = id1 then
	if sle_2.text = password then
		open(w-principal)
	else 
		messagebox("Error" , "Usuario o contrasena incorrecta",stopsign!)
	end if
else 
	messagebox("Error" , "Usuario o contrasena incorrecta",stopsign!)
end if*/

*/
/*
constant String  name1 = "JARED"
constant String  name2="JONATHAN"
 String pass1="korehazombiedesuka"
 String pass2="oppais"
  boolean op=false


IF sle_1.text=name1 And sle_2.text=pass1  Or  sle_1.text=name2 And sle_2.text=pass2 then
	 
	op=true
 	//open(mainp)
end if

if op=true then
	open(mainp)
else
	messagebox("Atencion","datos incorrectos",stopsign!)
	
	end if
	*/

constant String  name1 = "JARED"
constant String  name2="JONATHAN"
 String pass1="korehazombiedesuka"
 String pass2="oppais"
  boolean op=false


IF sle_1.text=name1 And sle_2.text=pass1  Or  sle_1.text=name2 And sle_2.text=pass2 then
	 
	op=true
 	//open(mainp)
end if

if op=true then
	open(mainp)
else
	messagebox("Atencion","datos incorrectos",stopsign!)
	
	end if
	
	
	
	
	
	


end event

