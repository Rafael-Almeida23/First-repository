algoritmo "RecompensaLeitura"

// Declaração de variáveis
var
    horasLeitura, pontos, pontosComBonus, cuponsDesconto: inteiro
    valorCupons: real

// Entrada de dados
inicio
    escreval("Digite o total de horas de leitura no mês: ")
    leia(horasLeitura)

// Cálculo dos pontos
    se horasLeitura <= 5 então
        pontos := horasLeitura * 3
    senao
        se horasLeitura <= 15 então
            pontos := horasLeitura * 7
        senao
            pontos := horasLeitura * 12
        fimse
    fimse

// Aplicação do bônus
    se pontos > 50 então
        pontosComBonus := pontos + pontos * 10 / 100
    senao
        pontosComBonus := pontos
    fimse

// Cálculo dos cupons de desconto
    cuponsDesconto := pontosComBonus / 10
    valorCupons := cuponsDesconto * 2.0

// Exibição dos resultados
    escreval("Total de pontos ganhos: ", pontosComBonus)
    escreval("Número de cupons de desconto: ", cuponsDesconto)
    escreval("Valor total em cupons de desconto: R$ ", valorCupons:0:2)

fimalgoritmo
