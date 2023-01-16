object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 213
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn_privateRequest: TButton
    Left = 24
    Top = 16
    Width = 113
    Height = 49
    Caption = 'Private Request'
    TabOrder = 0
    OnClick = btn_privateRequestClick
  end
  object btn_publicRequest: TButton
    Left = 24
    Top = 136
    Width = 113
    Height = 49
    Caption = 'Public'
    TabOrder = 1
    OnClick = btn_publicRequestClick
  end
end
