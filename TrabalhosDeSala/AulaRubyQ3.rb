class ContaBancaria
  attr_accessor :saldo

  def initialize saldo
    @saldo = saldo
  end

  def saque valor
    if valor <= @saldo then
      @saldo -= valor
      puts "Operacao realizada com sucesso"
    else
      puts "Saldo insuficiente"
    end
  end

  def deposito valor
    if valor > 0 then
      @saldo += valor
      puts "Operacao realizada com sucesso"
    else
      puts "Operacao invalida"
    end
  end

  def mostrar_saldo
    puts "Seu saldo eh: #{@saldo}"
  end
end
class Menu
  def menu
    loop do
      puts "Pressione:"
      puts "1.Para saque"
      puts "2.Para deposito"
      puts "3.Para checar o saldo atual"
      opcao = gets.to_i
    break if opcao == 0
  end
end

a = ContaBancaria.new(500)
a.saque 3
a.deposito 4
a.mostrar_saldo
m = Menu.new
