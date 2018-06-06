puts "Cadastrando Calçados" # Criando tamanhos de calçado
calcados = [ "17","18","19","20","21","22","23","24","25",
             "26","27","28","29","30","31","32","33","34",
             "35","36","37","38","39","40","41","42","43"]

calcados.each do |calcado|
    Calcado.find_or_create_by(numero: calcado)
end

puts "Calcados cadastrados"

puts "Cadastrando MASTER" # Criando User MASTER
User.create!(email:"admin@admin.com", password:"NewtonAdminMaster", password_confirmation:"NewtonAdminMaster")
puts "User MASTER"