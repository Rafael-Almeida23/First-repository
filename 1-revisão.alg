algoritmo "CalculoRefeicao"

// Declara��o de vari�veis
var
    precoInicial, percentualGorjeta, valorGorjeta, valorTotal, valorDesconto: real

// Entrada de dados
inicio
    escreval("Digite o pre�o inicial da refei��o: ")
    leia(precoInicial)
    escreval("Digite o percentual de gorjeta desejado (por exemplo, 15): ")
    leia(percentualGorjeta)

// C�lculo da gorjeta
    valorGorjeta := precoInicial * percentualGorjeta / 100
    valorTotal := precoInicial + valorGorjeta

// Verifica��o e aplica��o de desconto
    se precoInicial > 100 ent�o
        valorDesconto := precoInicial * 10 / 100
        valorTotal := valorTotal - valorDesconto
        escreval("Valor do desconto: R$ ", valorDesconto:0:2)
    senao
        valorDesconto := 0
    fimse

// Exibi��o dos resultados
    escreval("Valor da gorjeta: R$ ", valorGorjeta:0:2)
    escreval("Valor final da refei��o: R$ ", valorTotal:0:2)

fimalgoritmo
