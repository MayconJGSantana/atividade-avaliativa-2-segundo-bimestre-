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
		real numero_1
		real numero_2
		real numero_3
		// caprichos
		deseja_continuar
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 7")
			pergunte("Entre com o 1° valor")
			leia(numero_1)
			pergunte("Entre com o 2° valor")
			leia(numero_2)
			pergunte("Entre com o 3° valor")
			leia(numero_3)
			se (numero_1 < numero_2 e numero_3 < numero_2) {
				se (numero_1 < numero_3) {
					escreva("A ordem dos válores em ordem descrecente é", numero_2, ", ", numero_3, ", ", numero_1)
				}
				senao {
					escreva("A ordem dos válores em ordem descrecente é", numero_2, ", ", numero_1, ", ", numero_3)
				}
			}
			senao se (numero_2 < numero_1 e numero_3 < numero_1) {
				se (numero_2 < numero_3) {
					escreva("A ordem dos válores em ordem descrecente é", numero_1, ", ", numero_3, ", ", numero_2)
				}
				senao {
					escreva("A ordem dos válores em ordem descrecente é", numero_1, ", ", numero_2, ", ", numero_3)
				}
			}
			senao {
				se (numero_1 < numero_2) {
					escreva("A ordem dos válores em ordem descrecente é", numero_3, ", ", numero_2,", ", numero_1)
				}
				senao {
					escreva("A ordem dos válores em ordem descrecente é", numero_3, ", ", numero_1, ", ", numero_2)
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 828; 
 * @DOBRAMENTO-CODIGO = [6, 12, 21, 24];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */