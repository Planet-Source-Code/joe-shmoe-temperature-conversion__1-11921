VERSION 5.00
Begin VB.Form frmTempConversion 
   Caption         =   "Tempurature Conversion"
   ClientHeight    =   3030
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   Icon            =   "frmTempConversion.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtCelcus 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   2400
      MaxLength       =   7
      TabIndex        =   1
      ToolTipText     =   "Enter the ° in Celsius here"
      Top             =   960
      Width           =   735
   End
   Begin VB.TextBox txtFerin 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   1200
      MaxLength       =   7
      TabIndex        =   0
      ToolTipText     =   "Enter the  ° in Fahrenhiet here"
      Top             =   960
      Width           =   735
   End
   Begin VB.OptionButton optCtoF 
      Caption         =   "Celsius to Fahrenheit"
      Height          =   255
      Left            =   1440
      TabIndex        =   3
      ToolTipText     =   "Click this if you want to convert Celsius to Fahrenheit"
      Top             =   2160
      Width           =   1935
   End
   Begin VB.OptionButton optFtoC 
      Caption         =   "Fahrenheit to Celsius "
      Height          =   255
      Left            =   1433
      TabIndex        =   2
      ToolTipText     =   "Click this if you want to convert Fahrenheit to Celsius"
      Top             =   1800
      Width           =   1815
   End
   Begin VB.Frame fraFrame 
      Caption         =   "What conversion do you want to make?"
      Height          =   1455
      Left            =   713
      TabIndex        =   4
      Top             =   1440
      Width           =   3255
      Begin VB.CommandButton cmdConvert 
         Caption         =   "&Convert"
         Height          =   255
         Left            =   1200
         TabIndex        =   8
         ToolTipText     =   "Click to convert"
         Top             =   1080
         Width           =   975
      End
   End
   Begin VB.Label lblEquals 
      AutoSize        =   -1  'True
      Caption         =   "="
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   2160
      TabIndex        =   10
      Top             =   960
      Width           =   120
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "&EXIT"
      Height          =   195
      Left            =   4200
      TabIndex        =   9
      ToolTipText     =   "Click to exit"
      Top             =   2760
      Width           =   360
   End
   Begin VB.Line Line4 
      X1              =   4560
      X2              =   120
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line3 
      X1              =   4560
      X2              =   4560
      Y1              =   600
      Y2              =   0
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   120
      Y1              =   0
      Y2              =   600
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4560
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label lblTitle 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Temperature Conversion Calculator"
      BeginProperty Font 
         Name            =   "Jester"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   -390
      TabIndex        =   7
      Top             =   120
      Width           =   5460
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "°C"
      Height          =   195
      Left            =   3120
      TabIndex        =   6
      Top             =   960
      Width           =   165
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "°F"
      Height          =   195
      Left            =   1920
      TabIndex        =   5
      Top             =   960
      Width           =   150
   End
   Begin VB.Menu mnuAbout 
      Caption         =   "&About"
   End
End
Attribute VB_Name = "frmTempConversion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Programmer  Tony Aquilano
'Date 10-06-00
'This program converts °F to °C and vice versa

Private Sub cmdConvert_Click()

Dim intFivebynine As Integer
intFivebynine = 5 / 9

If ((optFtoC = False) And (optCtoF = False)) Then
intSelect = MsgBox("Please Select A Conversion Method", vbExclamation, "ERROR!")
End If

If ((txtCelcus = "") And (txtFerin = "")) Then
intEnter = MsgBox("Please Enter A Number.", vbExclamation, "ERROR")
End If

If optFtoC = True Then
txtCelcus = 5 / 9 * ((txtFerin) - 32)              'converts the temperature
rounded = Int((txtCelcus + 0.0005) * 100) / 100     'rounds the number
txtCelcus = rounded
End If

If optCtoF = True Then
txtFerin = (txtCelcus * 9) / 5 + 32                 'converts the temperature
rounded = Int((txtFerin + 0.0005) * 100) / 100      'rounds the number
txtFerin = rounded
End If
End Sub

Private Sub Label3_Click()
End     'closes program
End Sub

Private Sub mnuAbout_Click()
frmAbout.Show   'shows about screen
frmTempConversion.Visible = False   'makes main form not visible

End Sub

