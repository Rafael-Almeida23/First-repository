Algoritmo
    // Inicialização
    Var
        numeroSorteado, palpite, tentativasRestantes : Inteiro
        entradaValida : Logico

    // Função para gerar um número aleatório entre 1 e 10
    Funcao GerarNumeroAleatorio() : Inteiro
        Retorne Aleatorio(1, 10)
    FimFuncao

    // Início do jogo
    numeroSorteado <- GerarNumeroAleatorio()
    tentativasRestantes <- 4

    // Loop principal do jogo
    Enquanto tentativasRestantes > 0 Faça
        // Solicita um palpite ao jogador
        Escreva("Digite um número entre 1 e 10: ")
        Leia(palpite)

        // Valida a entrada do jogador
        entradaValida <- (palpite >= 1) E (palpite <= 10)

        Se (entradaValida) Então
            Se (palpite = numeroSorteado) Então
                Escreva("Parabéns! Você acertou o número ", numeroSorteado, "!")
                FimEnquanto // Termina o jogo
            Senão
                Se (palpite < numeroSorteado) Então
                    Escreva("Tente um número maior.")
                Senão
                    Escreva("Tente um número menor.")
                FimSe
                tentativasRestantes <- tentativasRestantes - 1
            FimSe
        Senão
            Escreva("Entrada inválida. Digite um número entre 1 e 10.")
        FimSe

        // Verifica se o jogador esgotou todas as tentativas
        Se (tentativasRestantes = 0) Então
            Escreva("Você perdeu! O número era ", numeroSorteado, ".")
        FimSe
    FimEnquanto

FimAlgoritmo
