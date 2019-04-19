#tag Class
Protected Class FractalTree
	#tag Method, Flags = &h0
		Sub Constructor(x as integer, y as integer, iterations as integer = 9, sz as integer = 100, heading as double = 0, depth as integer = 0)
		  
		  self.lastX = x
		  self.lastY = y
		  
		  'g as graphics, x as integer, y as integer, order as double, theta as double, sz as double, heading as double, colour as color, depth as double
		  'g, tree.posX, tree.posY, 9, theta, 100, -pi/2, &c00000000, 0) //(9, theta, surface_height*0.9, (surface_width//2, surface_width-50), 
		  
		  iterationsLeft = iterations
		  'theta = theta
		  initialsz = sz
		  initialHeading = if(heading = 0, -3.14/2, heading)
		  initialDepth = depth
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g as graphics)
		  
		  for i as integer = 0 to lines.Ubound
		    dim currentLine as Line = lines(i)
		    
		    g.ForeColor = currentLine.LineColor
		    g.DrawLine(currentLine.x1, currentLine.y1, currentLine.x2, currentLine.y2)
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Grow(iterations as integer, x as double, y as double, theta as double = 0, sz as double = 0, heading as double = 0, col as Color = &c00000000, depth as double = 1)
		  
		  // grows the tree by continuing the fractal
		  
		  'iterations as integer, x as double, y as double, theta as double = 0, sz as double = 0, heading as double = 0, col as Color = &c00000000, depth as double = 1
		  
		  iterationsLeft = iterationsLeft - 1
		  
		  if iterationsLeft > 0 then
		    
		    if lastX = 0 then lastX = x
		    if lastY = 0 then lastY = y
		    
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
		    
		    newLine.LineColor = col
		    
		    lines.Append(newLine)
		    
		    if iterations > 0 then
		      // draw another layer of subtrees
		      
		      // give brighter colors to newer branches
		      dim color1, color2 as color
		      if depth = 0 then
		        color1 = &cFF000000
		        color2 = &c0000FF00
		      else
		        color1 = col
		        color2 = col
		      end if
		      
		      // draw subtrees recursively
		      dim newsz as double = sz*(1 - trunkRatio)
		      Grow(iterations-1, newLine.x2, newLine.y2, theta+thetaModifier, newsz, heading-theta, color1, depth+1)
		      Grow(iterations-1, newLine.x2, newLine.y2, theta+thetaModifier, newsz, heading+theta, color2, depth+1)
		      
		    end if
		    
		  end if
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
		lastX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lastY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lines() As Line
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected thetaModifier As double = 0.15
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
			Name="lastX"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastY"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
