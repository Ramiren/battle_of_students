#file: inputs

#Eingaben

#bestimmt ersten Studenten | gibt objekt weiter
def kämpfer1_auswahl
print "Erster Student:"
  input1 = gets.chomp

until Studenten.hash.has_key?(input1)
  puts 
  puts "Diesen Studenten gibt es nicht"
  print "Erster Student:"
  input1 = gets.chomp
end
   print " -> "
   print  Studenten.hash[input1].name
   $student1_global = Studenten.hash[input1].name 
   Studenten.hash[input1]
   
end

#bestimmt zweiten Studenten | gibt objekt weiter 
def kämpfer2_auswahl
  puts
  puts
  print "Zweiter Student:"
  input2 = gets.chomp

  until Studenten.hash.has_key?(input2)
    puts
    puts "Diesen Studenten gibt es nicht"
    print "Zweiter Student:"
    input2 = gets.chomp
  end
   
  print " -> "
  puts Studenten.hash[input2].name
  $student2_global = Studenten.hash[input2].name
  if $student1_global == $student2_global 
    puts
    puts "Du hast dich selber gefickt "
    wiederholen
  end
  Studenten.hash[input2] 
   
end

#bestimmt Waffe von Student 1
def waffenwahl1
  
  Waffen.alle
  puts
  print "#{$student1_global}, wähle deine Waffe: "
  waffe_input = gets.chomp
  
  until Waffen.hash.has_key?(waffe_input)
    Waffen.alle
    puts
    print "Diese Waffe gibt es nicht! #{$student1_global}, wähle: "
    puts
    waffe_input = gets.chomp
  end
  
  Waffen.hash[waffe_input]
end

#bestimmt Waffe von Student 2
def waffenwahl2
  puts
  Waffen.alle
  puts
  print "#{$student2_global}, wähle deine Waffe: "
  waffe_input = gets.chomp
  
  until Waffen.hash.has_key?(waffe_input)
    Waffen.alle
    puts
    print "Diese Waffe gibt es nicht! #{$student2_global}, wähle: "
    puts
    waffe_input = gets.chomp
  end
  
  Waffen.hash[waffe_input]
end
