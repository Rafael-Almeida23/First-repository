algoritmo "CalculoRefeicao"

// Declaração de variáveis
var
    precoInicial, percentualGorjeta, valorGorjeta, valorTotal, valorDesconto: real

// Entrada de dados
inicio
    escreval("Digite o preço inicial da refeição: ")
    leia(precoInicial)
    escreval("Digite o percentual de gorjeta desejado (por exemplo, 15): ")
    leia(percentualGorjeta)

// Cálculo da gorjeta
    valorGorjeta := precoInicial * percentualGorjeta / 100
    valorTotal := precoInicial + valorGorjeta

// Verificação e aplicação de desconto
    se precoInicial > 100 então
        valorDesconto := precoInicial * 10 / 100
        valorTotal := valorTotal - valorDesconto
        escreval("Valor do desconto: R$ ", valorDesconto:0:2)
    senao
        valorDesconto := 0
    fimse

// Exibição dos resultados
    escreval("Valor da gorjeta: R$ ", valorGorjeta:0:2)
    escreval("Valor final da refeição: R$ ", valorTotal:0:2)

fimalgoritmo
