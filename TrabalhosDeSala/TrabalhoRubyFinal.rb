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


  def adcionaLivro(nome, autor, codigo)
    livro = Livro.new(nome, autor, codigo)
    livros << livro
  end

  def removeLivro(codigo)
    i = 0
    livros << "fim"
    while livros[i] != "fim" do
      if (livros[i].codigo == codigo) then livros.delete_at(i) end
      i+=1
    end
    livros.delete("fim")
  end

  def retornaLivros
      return livros
    end

  def retornaNumeroDeLivros
    livros.rindex(livros.last)
