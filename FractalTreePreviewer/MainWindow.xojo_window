#tag Window
Begin Window MainWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   548
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Fractal Tree Previewer"
   Visible         =   True
   Width           =   600
   Begin Canvas Canvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   394
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   600
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Growth Stage (9):"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   470
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin Slider GrowthSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   172
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Maximum         =   100
      Minimum         =   1
      PageStep        =   20
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   470
      Transparent     =   False
      Value           =   11
      Visible         =   True
      Width           =   408
   End
   Begin Label Label2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Theta modifier:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   406
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField thetaField
      AcceptTabs      =   False
      Alignment       =   3
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   172
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.3"
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   405
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label Label3
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   264
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Order (9):"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   406
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Slider OrderSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   376
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Maximum         =   15
      Minimum         =   1
      PageStep        =   20
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   406
      Transparent     =   False
      Value           =   9
      Visible         =   True
      Width           =   204
   End
   Begin Label Label4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Tree Presets:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   507
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin PopupMenu PresetsPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   172
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   506
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   192
   End
   Begin Label BranchCountLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   376
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Branch count: 0"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   506
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   204
   End
   Begin Label Label5
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Tree size (256):"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   438
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin Slider TreeSizeSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   172
      LineStep        =   32
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Maximum         =   512
      Minimum         =   32
      PageStep        =   20
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   439
      Transparent     =   False
      Value           =   256
      Visible         =   True
      Width           =   408
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub makeNewTree()
		  
		  tree = new FractalTree(OrderSlider.value, TreeSizeSlider.value, thetaField.text.val)
		  dim branchCount as integer
		  tree.GetBranchCount(branchCount)
		  BranchCountLabel.Text = "Branch count: "+str(branchCount)
		  canvas1.Invalidate
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = LICENCE
		    The MIT License
		    Copyright (c) 2019 Joshua Woods
		
		    Permission is hereby granted, free of charge, to any person obtaining a copy
		    of this software and associated documentation files (the "Software"), to deal
		    in the Software without restriction, including without limitation the rights
		    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
		    copies of the Software, and to permit persons to whom the Software is
		    furnished to do so, subject to the following conditions:
		
		    The above copyright notice and this permission notice shall be included in
		    all copies or substantial portions of the Software.
		
		    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
		    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
		    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
		    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
		    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
		    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
		    THE SOFTWARE.
		
	#tag EndNote


	#tag Property, Flags = &h0
		tree As FractalTree
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Open()
		  
		  makeNewTree
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  
		  tree.DrawTree(g, me.width/2, me.height+20, GrowthSlider.Value)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GrowthSlider
	#tag Event
		Sub ValueChanged()
		  
		  label1.Text = "Growth Rate ("+str(me.Value)+"):"
		  canvas1.Invalidate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thetaField
	#tag Event
		Sub TextChange()
		  
		  makeNewTree
		  canvas1.invalidate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OrderSlider
	#tag Event
		Sub ValueChanged()
		  
		  label3.Text = "Order ("+str(me.Value)+"):"
		  makeNewTree
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PresetsPopup
	#tag Event
		Sub Change()
		  
		  if me.ListIndex = -1 then
		    return
		  end if
		  
		  dim d as dictionary = me.RowTag(me.ListIndex)
		  
		  thetaField.text = d.value("theta_modifier")
		  GrowthSlider.value = d.value("growth_stage")
		  OrderSlider.value = d.value("order")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		  dim default as new dictionary
		  default.value("theta_modifier") = 0.3
		  default.value("growth_stage") = 11
		  default.value("order") = 9
		  
		  dim realistic as new dictionary
		  realistic.value("theta_modifier") = 6
		  realistic.value("growth_stage") = 15
		  realistic.value("order") = 15
		  
		  me.AddRow("Realistic")
		  me.RowTag(me.ListCount-1) = realistic
		  me.AddRow("Default")
		  me.RowTag(me.ListCount-1) = default
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TreeSizeSlider
	#tag Event
		Sub ValueChanged()
		  
		  label5.Text = "Tree size ("+str(me.Value)+"):"
		  makeNewTree
		  canvas1.Invalidate
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
