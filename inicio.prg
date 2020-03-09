PARAMETER pBase
lcdir = SYS(5)+CURDIR()
SET PATH TO &lcdir

TEXT
   *Set Sysmenu Off

   *_Screen.Closable=.F. && descativar el boton cerrar

   *_Screen.Icon= "AtlasCs.ico"
   *_Screen.Caption="Compresor de archivos"
   *_Screen.Height = 535
   *_Screen.Width  = 559
   *_Screen.WindowState = 2

   *_Screen.MaxButton = .F.
   *_Screen.AutoCenter=.T.
   *_Screen.BorderStyle = 1

   * - Maximizar la ventana principal
   *_Screen.WindowState = 2
   *_Screen.Picture = "cabezaAzul.png"

   Set Exclusive Off

   Set Status Bar Off
   Set Confirm   Off
   Set Alternate Off
   Set Bell Off
   Set Carry Off
   Set Century On
   Set Talk Off
   Set Safety Off
   Set Status Off
   *Set Menus Off
   *Set Escape Off
   Set Cpdialog Off
   Set Exact On
   Set Unique Off
   Set Deleted On
   Set Date Ansi
   Set Decimals To 2
   Set Scoreboard Off
   Set Device To Screen
   *Set Display To Vga25
   Set Help Off
   Set Mouse On
   Set Ansi On
   Set Readborder On
   Set Separator To ','
   Set Point To '.'
   Set Hours To 24
ENDTEXT 

DO FORM MULTIPLE
READ EVENTS
_screen.Visible=.T.
