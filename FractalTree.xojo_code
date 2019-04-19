#tag Class
Protected Class FractalTree
	#tag Method, Flags = &h0
		Sub Constructor(order as integer, sz as double, thetamod as double)
		  
		  'self.iterations = iterations
		  
		  dim theta as double = 0
		  thetaModifier = thetamod
		  const pi as double = 3.1415926
		  
		  Grow(order, treeTrunk, theta, sz, -pi/2)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Draw(g as graphics, branch as FractalBranch, targetX as integer, targetY as integer, extent as integer)
		  
		  if branch = nil or extent <= 0 then
		    return
		  end if
		  
		  extent = extent - 1
		  
		  g.foreColor = branch.branchLine.LineColor
		  g.PenWidth = branch.stemThickness
		  g.DrawLine(branch.branchLine.x1+targetX, branch.branchLine.y1+targetY, branch.branchLine.x2+targetX, branch.branchLine.y2+targetY)
		  
		  for each childBranch as FractalBranch in branch.children
		    Draw(g, childBranch, targetX, targetY, extent)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTree(g as graphics, targetX as integer, targetY as integer, extent as integer)
		  
		  Draw(g, self.treeTrunk, targetX, targetY, extent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Grow(order as integer, byref parent as FractalBranch, theta as double, sz as double, heading as double, depth as integer = 0)
		  
		  'if iterations <= 0 then
		  'return
		  'end if
		  'iterations = iterations - 1
		  
		  dim trunk as double = sz * trunkRatio
		  
		  if parent = nil then
		    parent = new FractalBranch
		    parent.branchLine = new Line
		    parent.branchLine.x1 = 0
		    parent.branchLine.y1 = 0
		    parent.branchLine.x2 = trunk * cos(heading)
		    parent.branchLine.y2 = trunk * sin(heading)
		  end if
		  
		  dim newLine as new Line
		  newLine.x1 = parent.branchLine.x2
		  newLine.y1 = parent.branchLine.y2
		  newLine.x2 = newLine.x1 + (trunk * cos(heading))
		  newLine.y2 = newLine.y1 + (trunk * sin(heading))
		  
		  dim newBranch as new FractalBranch
		  newBranch.branchLine = newLine
		  'newBranch.stemThickness = stemThickness
		  
		  '// reduce stem thickness for every new branch made, to a minimum of 1
		  'if stemThickness > 1 then
		  'stemThickness = if(stemThickness-1 < 1, 1, stemThickness-1)
		  'end if
		  
		  parent.Children.Append(newBranch)
		  
		  if order > 0 then
		    
		    // draw another layer of subtrees
		    
		    // give brighter colors to newer branches
		    dim oldCol as color = parent.branchLine.LineColor
		    dim newCol as color = parent.branchLine.LineColor
		    if depth > 0 then
		      newCol = RGB( _
		      if(oldCol.Red - depth > 0, oldCol.Red - depth*2, oldCol.Red), _
		      if(oldCol.Green + depth < 255, oldCol.Green + depth*2, oldCol.green), _
		      0)
		    end if
		    
		    newBranch.branchline.lineColor = newCol
		    
		    dim newsz as double = sz*(1 - trunkRatio)
		    dim newTheta as double = theta + thetaModifier
		    Grow(order-1, newBranch, newTheta, newsz, heading-newTheta, depth+1)
		    Grow(order-1, newBranch, newTheta, newsz, heading+newTheta, depth+1)
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected iterations As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected stemThickness As Integer = 12
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected thetaModifier As double = 0.01
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected treeTrunk As FractalBranch
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected trunkRatio As double = 0.29
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
