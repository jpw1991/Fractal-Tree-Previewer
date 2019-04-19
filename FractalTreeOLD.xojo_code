#tag Class
Protected Class FractalTreeOLD
	#tag Method, Flags = &h0
		Sub Constructor(x as integer, y as integer)
		  'def draw_tree(order, theta, sz, posn, heading, color=(0,0,0), depth=0): 
		  '  
		  '   # The relative ratio of the trunk to the whole tree   
		  '   trunk_ratio = 0.29     
		  '  
		  '   # Length of the trunk   
		  '   trunk = sz * trunk_ratio 
		  '   delta_x = trunk * math.cos(heading) 
		  '   delta_y = trunk * math.sin(heading) 
		  '   (u, v) = posn 
		  '   newpos = (u + delta_x, v + delta_y) 
		  '   pygame.draw.line(main_surface, color, posn, newpos) 
		  '  
		  '   if order > 0:   # Draw another layer of subtrees 
		  '  
		  '      # These next six lines are a simple hack to make  
		  '      # the two major halves of the recursion different  
		  '      # colors. Fiddle here to change colors at other  
		  '      # depths, or when depth is even, or odd, etc. 
		  '      if depth == 0: 
		  '          color1 = (255, 0, 0) 
		  '          color2 = (0, 0, 255) 
		  '      else: 
		  '          color1 = color 
		  '          color2 = color 
		  '  
		  '      # make the recursive calls to draw the two subtrees 
		  '      newsz = sz*(1 - trunk_ratio) 
		  '      draw_tree(order-1, theta, newsz, newpos, heading-theta, color1, depth+1) 
		  '      draw_tree(order-1, theta, newsz, newpos, heading+theta, color2, depth+1) 
		  
		  self.posX = x
		  self.posY = y
		  
		  'trunkRatio as double, order as double, theta as double, sz as double, posn as pair, heading as double, depth as double, c as color
		  
		  'self.trunkRatio = trunkRatio
		  'self.order = order 
		  'self.theta = theta
		  '
		  'self.sz = sz
		  'self.posn = posn
		  'self.heading = heading
		  'self.depth = depth
		  'self.colour = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawInto(g as graphics, x as integer, y as integer, order as double, theta as double, sz as double, heading as double, colour as color, depth as double)
		  'def draw_tree(order, theta, sz, posn, heading, color=(0,0,0), depth=0): 
		  '  
		  '   # The relative ratio of the trunk to the whole tree   
		  '   trunk_ratio = 0.29     
		  '  
		  '   # Length of the trunk   
		  '   trunk = sz * trunk_ratio 
		  '   delta_x = trunk * math.cos(heading) 
		  '   delta_y = trunk * math.sin(heading) 
		  '   (u, v) = posn 
		  '   newpos = (u + delta_x, v + delta_y) 
		  '   pygame.draw.line(main_surface, color, posn, newpos) 
		  '  
		  '   if order > 0:   # Draw another layer of subtrees 
		  '  
		  '      # These next six lines are a simple hack to make  
		  '      # the two major halves of the recursion different  
		  '      # colors. Fiddle here to change colors at other  
		  '      # depths, or when depth is even, or odd, etc. 
		  '      if depth == 0: 
		  '          color1 = (255, 0, 0) 
		  '          color2 = (0, 0, 255) 
		  '      else: 
		  '          color1 = color 
		  '          color2 = color 
		  '  
		  '      # make the recursive calls to draw the two subtrees 
		  '      newsz = sz*(1 - trunk_ratio) 
		  '      draw_tree(order-1, theta, newsz, newpos, heading-theta, color1, depth+1) 
		  '      draw_tree(order-1, theta, newsz, newpos, heading+theta, color2, depth+1) 
		  
		  dim trunkRatio as double = 0.29
		  
		  // length of trunk
		  dim trunk as double = sz * trunkRatio
		  dim deltaX as double = trunk * cos(heading)
		  dim deltaY as double = trunk * sin(heading)
		  dim u as double = x'posn.Left
		  dim v as Double = y'posn.Right
		  dim newpos as pair = u + deltaX:v + deltaY
		  
		  g.ForeColor = colour
		  g.DrawLine(x, y, newpos.left, newpos.Right)
		  
		  if order > 0 then
		    // draw another layer of subtrees
		    dim color1, color2 as color
		    if depth = 0 then
		      color1 = &cFF000000
		      color2 = &c0000FF00
		    else
		      color1 = colour
		      color2 = colour
		    end if
		    
		    // draw subtrees recursively
		    dim newsz as double = sz*(1 - trunkRatio)
		    DrawInto(g, newpos.left, newpos.right, order-1, theta+0.15, newsz, heading-theta, color1, depth+1)
		    DrawInto(g, newpos.left, newpos.right, order-1, theta+0.15, newsz, heading+theta, color2, depth+1)
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		posX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		posY As Integer
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
