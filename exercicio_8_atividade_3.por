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
		real lado_a = 0.0
		real lado_b = 0.0
		real lado_c = 0.0
		// caprichos
		cadeia deseja_continuar = ""
		enquanto(verdadeiro) {
			cabecalho(40, "Exercício 8")
			enquanto (verdadeiro) {
				pergunte("Informe o primeiro lado: ")
					leia(lado_a)
					se (lado_a <= 0) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
			}
			enquanto (verdadeiro) {
				pergunte("Informe o segundo lado: ")
				leia(lado_b)
				se (lado_b <= 0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Informe o terceiro lado: ")
				leia(lado_c)
				se (lado_c <= 0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			se (lado_a + lado_b > lado_c e lado_a + lado_c > lado_b e lado_b + lado_c > lado_a) {
				escreva("O triângulo com lados ", lado_a, ", ", lado_b, " e ", lado_c, " está dentro das normas de construção\n")
				se (lado_a == lado_b e lado_a == lado_c e lado_b == lado_c) {
					escreva("e o triângulo é chamado de triângulo equilátero")
				}
				senao se (lado_a != lado_b e lado_a != lado_c e lado_b != lado_c) {
					escreva("e o triângulo é chamado de triângulo escaleno")
				}
				senao {
					escreva("e o triângulo é chamado de triângulo isósceles")
				}
			}
			senao {
				escreva("O triângulo com lados ", lado_a, ", ", lado_b, " e ", lado_c, " está fora das normas de construção")
			}
			aguarde(5000)

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
 * @POSICAO-CURSOR = 797; 
 * @DOBRAMENTO-CODIGO = [4, 10, 19, 22];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */