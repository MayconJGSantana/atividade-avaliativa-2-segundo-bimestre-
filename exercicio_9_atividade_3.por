programa
{
	inclua biblioteca Tipos
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
		caracter letra = ' '
		caracter vogais[] = {'a', 'e', 'i', 'o', 'u'}
		logico caracter_vogal = falso

		// caprichos
		cadeia deseja_continuar = "sim"
		inteiro i
		logico variavel_valida = falso
		caracter alfabeto[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 9")
			enquanto (verdadeiro) {
				pergunte("Entre com um caracter: ")
				leia(letra)
				letra = Tipos.cadeia_para_caracter(Texto.caixa_baixa(Tipos.caracter_para_cadeia(letra)))
				para (i = 0; i < Util.numero_elementos(alfabeto); i++) {
					se (letra == alfabeto[i]) {
						variavel_valida = verdadeiro
					}
 				}
 				se (variavel_valida) {
 					pare
 				}
 				senao {
 					escreva("Valor inválido, tente novamente!\n")
 				}
 				variavel_valida = falso
			}
			para (i = 0; i < Util.numero_elementos(vogais); i++) {
				se (letra == vogais[i]) {
					caracter_vogal = verdadeiro
					pare
				}
				senao {
					caracter_vogal = falso
				}
			}
			escreva("...", "\n")
			escreva("O caracter '", letra, "' é uma vogal? ", caracter_vogal)
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
 * @POSICAO-CURSOR = 1747; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */