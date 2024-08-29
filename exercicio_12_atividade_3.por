programa
{
	inclua biblioteca Texto
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
		real nota_1 = 0.0
		real nota_2 = 0.0
		real media
		// caprichos
		cadeia deseja_continuar = ""
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 12")
			enquanto (verdadeiro) {
				pergunte("Entre com o valor da 1° nota [0 a 10]: ")
				leia(nota_1)
				se (nota_1 < 0 ou nota_1 > 10) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Entre com o valor da 2° nota [0 a 10]: ")
				leia(nota_2)
				se (nota_2 < 0 ou nota_2 > 10) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			media = (nota_1 + nota_2) / 2
			escreva("...", "\n")
			se (media < 7) {
				escreva("O aluno foi reprovado!")
			}
			senao se (media == 10) {
				escreva("O aluno foi aprovado com distinção")
			}
			senao {
				escreva("O aluno foi aprovado!")
			}
			aguarde(4000)
			enquanto (verdadeiro) {
				pergunte("Deseja continuar o programa [sim/nao]? ")
				leia(deseja_continuar)
				deseja_continuar  = Texto.caixa_baixa(deseja_continuar)
				se (deseja_continuar != "nao" e deseja_continuar != "sim" e deseja_continuar != "não") {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			se (deseja_continuar == "sim") {
				limpa()
			}
			senao {
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1423; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */