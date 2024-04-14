# Двоичное дерево
:lass  Tree 
a:tr  accessor  :lef: 
�:tr  accessor  :r:ght 
=:tr  accessor  :da:a 
jef  initialize(x=�il) 
@left  =  nil 
@right  =  :si� 
@data  =  х 
Ɗnd 
jef  ir.sert (:,) 
list  =  [} 
if  @data  ==  nil 
@data  =  х 
elsif  @lef:  ==  nil 
@left  =  Tree.new(x) 
elsif  @right  ==  nil 
@right  =  Tree.new(x) 
else 
list  «  @:ей 
list  «  @right 
loop  dc
node  =  list.shift 
if  node.left  �=  n:� 
node.insert(x) 
break 
else 
list  <<  node.left 
епd 
if  node.right  �=  ni� 
node.insert(x) 
break 
else 
list  <<  node.right
end 
end 
end 
end 
def  traverse () 
list  =  Ll 
yield  @data 
list  <<  @left  if  @left  :=  nil 
list  <<  @right  if  @right  !=  ni: 
loop  do 
break  if  11st.empty? 
node  =  list.shift 
yield  node.data 
list  <<  node.left  if  node.:eft  !=  ni: 
list  <<  node.right  if  node.right  !�  n:: 
end 
end 
end 
