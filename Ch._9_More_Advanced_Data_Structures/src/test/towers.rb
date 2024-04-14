# Ханойские башни
# стэк и рекурсия
#
# - [ ] переоформить задачу через класс Stack
# - [ ] визуализировать положение дисков между стержнями
#
def  towers(list) 
  while  !list.empty? 
    n,  src,  dst,  aux  = list.pop 

    tmp = [n,  src,  dst,  aux] # debug
    puts "n,  src,  dst,  aux: #{tmp}" # gebug
    if  n  ==  1 
      puts  "Перемещаем  диск  с  #{src}  на  #{dst}" 
    else 
      #list.push  [n-1,  aux,  dst,  src] 
      list.push  [n-1,  "a"+aux,  "d"+dst,  "s"+src] 
      list.push  [1,  "s"+src,  "d"+dst,  "a"+aux] 
      list.push  [n-1,  "s"+src,  "a"+aux,  "d"+dst] 

      print "list. size #{list.size}:\n"
      0.upto(list.size) { |i| i%3 !=2 ? (print "#{list[i]}") : (puts "#{list[i]}") }  # gebug
      puts
    end 
  end 
end 

list  =  [] 
list.push( [ 4,  "A",  "B",  "C"]) 

towers(list)
puts "\nEND"
