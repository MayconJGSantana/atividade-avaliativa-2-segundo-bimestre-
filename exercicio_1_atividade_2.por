programa
{
	inclua biblioteca Matematica
	inclua biblioteca Texto
	inclua biblioteca Tipos
	inclua biblioteca Util
	funcao vazio espacos(inteiro quantidade_espacos) {
		para (inteiro i = 0; i < quantidade_espacos; i++) {
			escreva("=")
		}
		escreva("\n")
	}
	funcao vazio cabecalho(inteiro quantidade_espacos, cadeia enunciado) {
		inteiro teste = 0
		espacos(quantidade_espacos)
		para (inteiro i = 0; i < quantidade_espacos / 2 - Texto.numero_caracteres(enunciado) / 2; i++) {
			escreva(" ")
		}
		escreva(enunciado, "\n")
		espacos(quantidade_espacos)
	}
	funcao vazio pergunte(cadeia enunciado) {
		escreva("-> ", enunciado)
	}
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}

	funcao inicio()
	{
		// caprichos
		inteiro menu = 0
		cadeia opcoes_menu[] = {"Letra a", "Letra b", "Letra c", "Letra d", "Letra e", "Letra f", "Letra g"}
		enquanto(verdadeiro) {
			cabecalho(40, "Exercício 1")
			enquanto(verdadeiro) {
				pergunte("Escolha uma opção do menu")
				leia(menu)
				se (menu < 1 ou menu > 7) {
					escreva("Valor inválido, tente novamente!")
				}
				senao {
					pare
				}
			}
			escolha(menu) {
				caso 1:
					escreva("A condição 2 * 4 == 24/3 é ", 2 * 4 == 24/3)
				caso 2:
					escreva("A condição (15 % 4) < (19 % 6) é ", (15 % 4) < (19 % 6))
				caso 3:
					escreva("A condição nao(2 < 5) != (8 == 8) é ", nao(2 < 5) != (8 == 8))
				caso 4:
					escreva("A condição verdadeiro ou falso é ", verdadeiro ou falso)
				caso 5:
					escreva("A condição 2*2 == Matematica.potencia(2, 2) é ", 2*2 == Matematica.potencia(2, 2))
				caso 6:
					escreva("A condição verdadeiro e ((7 / 2) > 3.5 ) é ", verdadeiro e ((7 / 2) > 3.5 ))
				caso 7:
					escreva("A condição (Matematica.arredondar( 2.8, 0 ) == 3) e (Matematica.raiz(9) == 3) é ", (Matematica.arredondar( 2.8, 0 ) == 3) e (Matematica.raiz(9, 2) == 3))
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 939; 
 * @DOBRAMENTO-CODIGO = [6, 12, 21, 24];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */