print "Calculadora Simples"


def menu()
  puts "menu"
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Divisão"
  puts "4 - Multiplicação"
end
def entradas
  print "Digite um número: "
  x = gets.chomp.to_f
  print "Digite outro número: "
  y = gets.chomp.to_f
  return x, y
end

def somar(x, y)
  resultado = x + y
  puts "A soma de #{x} + #{y} é #{resultado}"
end

def subtrair(x, y)
  resultado = x - y
  puts "A subtração de #{x} - #{y} é #{resultado}"
end

def dividir(x, y)
  resultado = x / y
  puts "A divisão de #{x} / #{y} é #{resultado}"
end

def multiplicar(x, y)
  resultado = x * y
  puts "O produto de #{x} * #{y} é #{resultado}"
end

loop do
  menu
  opcao = gets.chomp.to_i

  case opcao
  when 1
    x, y = entradas
    somar(x, y)
  when 2
    x, y = entradas
    subtrair(x, y)
  when 3
    x, y = entradas
    dividir(x, y)
  when 4
    x, y = entradas
    multiplicar(x, y)
  when 0
    puts "Saindo..."
    break
  else
    puts "Opção inválida. Por favor, escolha uma opção válida."
  end
end