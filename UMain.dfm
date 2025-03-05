object FMain: TFMain
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FMain'
  ClientHeight = 635
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    984
    635)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 901
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
end
