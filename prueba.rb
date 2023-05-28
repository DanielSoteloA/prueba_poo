class Person
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end
  
    def birthday
      @age += 1
    end
  end
  
  class Parent < Person
    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
  
    def talk
      puts 'Aquí es la reunión de apoderados?'
    end
  end
  
  class Student < Person
    def introduce
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
  
    def talk
      puts 'Aquí es la clase de programación con Ruby?'
    end
  end
  
  class Teacher < Person
    def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
  
    def talk
      puts 'Bienvenidos a la clase de programación con Ruby!'
    end
  end
  
  puts "\n------------------------------------------"
  puts "[Padre]"

  # instancia clase Parent
  padres = Parent.new('Juan', 'Perez', 50)
  padres.introduce
  print "tengo #{padres.birthday} años \n"
  padres.talk
  
  puts "------------------------------------------"
  puts "[Estudiante]"
  
  # instancia clase Student
  estudiante = Student.new('Luis', 'Nuñez', 40)
  estudiante.introduce
  print "tengo #{estudiante.birthday} años \n"
  estudiante.talk
  
  puts "------------------------------------------"
  puts "[Profesor]"
  
  # instancia clase Teacher
  profesor = Student.new('Luis', 'Perez', 20)
  profesor.introduce
  print "tengo #{profesor.birthday} años \n"
  profesor.talk

  puts "------------------------------------------"