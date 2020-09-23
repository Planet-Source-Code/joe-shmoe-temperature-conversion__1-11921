VERSION 5.00
Begin VB.Form frmAbout 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "About"
   ClientHeight    =   5055
   ClientLeft      =   3705
   ClientTop       =   1950
   ClientWidth     =   5100
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   5100
   ShowInTaskbar   =   0   'False
   Begin VB.CheckBox Check2 
      BackColor       =   &H00000000&
      Caption         =   "Yes"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   0
      TabIndex        =   0
      ToolTipText     =   "I like you already"
      Top             =   4440
      Width           =   975
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "No"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   1080
      MaskColor       =   &H000000FF&
      TabIndex        =   2
      ToolTipText     =   "I want you to think about this"
      Top             =   4440
      Width           =   855
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "© Tony Aquilano, Double A Software 2000"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   0
      TabIndex        =   7
      Top             =   4800
      Width           =   3030
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Double A Software"
      BeginProperty Font 
         Name            =   "Oddball"
         Size            =   30.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   690
      Left            =   345
      TabIndex        =   6
      Top             =   3000
      Width           =   4485
   End
   Begin VB.Label lblYorN 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Do You Like This Program?"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   0
      TabIndex        =   5
      Top             =   4200
      Width           =   1950
   End
   Begin VB.Image Image1 
      Height          =   1950
      Left            =   0
      Picture         =   "frmAbout.frx":0000
      Top             =   1200
      Width           =   5205
   End
   Begin VB.Label lblVersion 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Version 1.0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   240
      Left            =   2040
      TabIndex        =   4
      Top             =   600
      Width           =   1050
   End
   Begin VB.Label lblTitle 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Temperature Conversion"
      BeginProperty Font 
         Name            =   "Architext"
         Size            =   12.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   240
      Width           =   4560
   End
   Begin VB.Label lblReturn 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Return"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   4560
      TabIndex        =   1
      ToolTipText     =   "Click to return"
      Top             =   4800
      Width           =   480
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Do
intTrue = MsgBox("Let's see you do better", vbCritical + vbOKOnly + vbExclamation _
, "Fine with me!")      'message box that causes an infinite loop (mu hahaha)
Loop
End Sub

Private Sub Check2_Click()
intTrue = MsgBox("Thank You", vbSystemModal + vbExclamation _
, "Thanks")     'message box that says thanks
End Sub

Private Sub lblReturn_Click()
frmTempConversion.Show      'shows the main form
frmAbout.Visible = False    'makes about form not visible
End Sub
