Attribute VB_Name = "GlobalModule"
Option Explicit

' Constantes
Public Const TITULO_PROGRAMA = "Senna Spy One EXE Maker 1.0"

' Declaracao de Variaveis Publicas
Public xAnswer As Variant

Public cMainEXEFile As String

Public cDiretorioSystem As String
Public cDiretorioWindows As String

Public cPathProjeto As String
Public cNomeProjeto As String
Public cFile As String

Public cBuffer As String * 255

' Declaracoes da API
Declare Function GetSystemDirectory Lib "kernel32.dll" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Function GetWindowsDirectory Lib "kernel32.dll" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
