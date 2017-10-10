class Pessoa
  attr_accessor :nome, :cpf
  def initialize nome, cpf
  end

  def fala
    puts "Ohayou Gosaimasu"
  end

  def come
    puts "kori kori kori"
  end

end

class Trabalhador < Pessoa
  attr_accessor :cargo, :salario
  def initialize cargo, salario
  end
end
