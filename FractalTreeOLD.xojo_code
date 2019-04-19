#tag Class
Protected Class FractalTreeOLD
	#tag Method, Flags = &h0
		Sub Constructor(x as integer, y as integer, iterations as integer = 9, sz as integer = 100)
		  
		  self.startX = x
		  self.startY = y
		  
		  'g as graphics, x as integer, y as integer, order as double, theta as double, sz as double, heading as double, colour as color, depth as double
		  'g, tree.posX, tree.posY, 9, theta, 100, -pi/2, &c00000000, 0) //(9, theta, surface_height*0.9, (surface_width//2, surface_width-50), 
		  
		  iterationsLeft = iterations
		  'theta = theta
		  initialsz = sz
		  initialHeading = -3.14/2
		  initialDepth = 0
		  
		  treeTrunk = new FractalBranch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Draw(g as graphics, branch as FractalBranch, extent as integer)
		  
		  if branch = nil or extent <= 0 then
		    return
		  end if
		  
		  extent = extent - 1
		  
		  for i as integer = 0 to branch.Children.Ubound
		    dim currentBranch as FractalBranch = branch.Children(i)
		    
		    g.foreColor = currentBranch.branchLine.LineColor
		    g.DrawLine(currentBranch.branchLine.x1, currentBranch.branchLine.y1, currentBranch.branchLine.x2, currentBranch.branchLine.y2)
		    
		    for each childBranch as FractalBranch in currentBranch.children
		      Draw(g, childBranch, extent)
		    next
		    
		  next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTree(g as graphics, extent as integer)
		  
		  Draw(g, self.treeTrunk, extent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Grow(byRef parent as FractalBranch, theta as double = 0, sz as double = 0, heading as double = 0, depth as integer = 1)
		  
		  // grows the tree by continuing the fractal
		  
		  // only continue growing if we still can
		  
		  if iterationsLeft < 0 then
		    return
		  end if
		  iterationsLeft = iterationsLeft - 1
		  
		  'iterations as integer, x as double, y as double, theta as double = 0, sz as double = 0, heading as double = 0, col as Color = &c00000000, depth as double = 1
		  if parent = nil then
		    parent = treeTrunk
		  end if
		  
		  '// find the newest branches and draw from there
		  'for each branch as FractalBranch in parent.Children
		  'if branch.Children.Ubound <> -1 then
		  'Grow(branch, theta, sz, heading, depth)
		  'end if
		  'next
		  
		  // proceed to grow
		  dim x, y as integer
		  if parent = nil or parent.branchLine = nil then
		    x = startX
		    y = startY
		  else
		    x = parent.branchLine.x2
		    y = parent.branchLine.y2
		  end if
		  
		  if sz = 0 then sz = initialsz
		  if heading = 0 then heading = initialHeading
		  
		  // length of trunk
		  dim trunk as double = sz * trunkRatio
		  dim deltaX as double = trunk * cos(heading)
		  dim deltaY as double = trunk * sin(heading)
		  
		  dim newLine as new Line
		  newLine.x1 = x
		  newLine.y1 = y
		  newLine.x2 = x + deltaX
		  newLine.y2 = y + deltaY
		  
		  dim newBranch as new FractalBranch
		  newBranch.branchLine = newLine
		  parent.Children.Append(newBranch)
		  
		  // draw another layer of subtrees
		  
		  // give brighter colors to newer branches
		  dim oldCol as color = parent.branchColor
		  dim newCol as color = parent.branchColor
		  if depth > 0 then
		    newCol = RGB( _
		    if(oldCol.Red - depth > 0, oldCol.Red - depth, oldCol.Red), _
		    if(oldCol.Green + depth < 255, oldCol.Green + depth, oldCol.green), _
		    0)
		  end if
		  
		  newBranch.branchColor = newCol
		  
		  // draw subtrees recursively
		  dim newsz as double = sz*(1 - trunkRatio)
		  //dim newTheta as double = theta+thetaModifier
		  theta = theta + thetaModifier
		  Grow(newBranch, theta, newsz, heading-theta, depth+1)
		  Grow(newBranch, theta, newsz, heading+theta, depth+1)
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected initialDepth As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected initialHeading As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected initialsz As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected iterationsLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		startX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		startY As Integer
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
		#tag ViewProperty
			Name="startX"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="startY"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
