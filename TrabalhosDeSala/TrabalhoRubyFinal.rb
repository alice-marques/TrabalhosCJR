class Livro
  attr_accessor :nome, :autor, :codigo
  def initialize nome, autor, codigo
    @nome = nome
    @autor = autor
    @codigo = codigo
  end
end

class Biblioteca
  attr_accessor :livros

  def initialize
    @livros
  end

  def self.adciona_livro(nome, autor, codigo)
    livro = Livro.new(nome, autor, codigo)
    livros << livro
  end

  def self.remove_livro(codigo)
    i = 0
    livros << "fim"
    while livros[i] != "fim" do
      if (livros[i].codigo == codigo) then
        livros.delete_at(i)
      end
      i+=1
    end
    livros.delete("fim")
  end

  def self.retorna_livros
      return livros
    end

  def self.retorna_numero_de_livros
    return livros.rindex(livros.last) + 1
  end
end



class InterfaceUsuario
  attr_accessor :biblioteca

  def initialize
    biblioteca = Biblioteca.new
  end

  def display_menu
    opcao = 0
    while opcao != 5 do
      puts("Pressione:")
      puts("1. Para adcionar um livro")
      puts("2. Para remover um livro")
      puts("3. Para ver uma lista dos livros")
      puts("4. Para ver quantos livros foram adcionados")
      puts("5. Para sair")
      opcao = gets.to_i
      case opcao
      when 1
        chama_adciona_livro
      when 2
        chama_remove_livro
      when 3
        lista_livros
      when 4
        mostra_numero_de_livros
      when 5
        puts("Até logo")
      else
        puts("Por favor insira uma opção válida.")
      end
    end
  end

  def chama_adciona_livro
    puts("Insira o nome do livro:")
    nome = gets.chomp
    puts("Insira o autor do livro:")
    autor = gets.chomp
    puts("Insira o codigo do livro:")
    codigo = gets.to_i
    biblioteca.adciona_livro(nome, autor, codigo)
  end

  def chama_remove_livro
    puts("Insira o nome do livro a ser retirado:")
    nome = gets.chomp
    puts("Insira o codigo do livro a ser retirado:")
    codigo = gets.to_i
    biblioteca.remove_livro(nome, codigo)
    puts("O livro #{nome} foi retirado")
  end

  def lista_livros
    biblioteca.livros.each { |livro| print livro, "\n" }
  end

  def mostra_numero_de_livros
    num = biblioteca.retorna_numero_de_livros
    if num == 0
      puts("No momento não há livros na biblioteca")
    elsif num == 1
      puts("No momento há 1 livro na biblioteca")
    else
      puts("No momento há #{num} livros na biblioteca")
    end
  end
end

interface = InterfaceUsuario.new
interface.display_menu
