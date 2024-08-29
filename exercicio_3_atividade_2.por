programa
{
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
		real quilometros = 0.0
		inteiro dias_alugado = 0
		real preco_aluguel
		// caprichos
		cadeia deseja_continuar = ""
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 3")
			enquanto (verdadeiro) {
				pergunte("Por quantos quilômetros dirigiste? ")
				leia (quilometros)
				se (quilometros < 0.0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Por quantos dias alugaste o carro? ")
				leia(dias_alugado)
				se (dias_alugado < 1) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			preco_aluguel = quilometros * 0.15 + dias_alugado * 60
			escreva("...", "\n")
			escreva("Tomando como referência um carro alugado por ", dias_alugado, " dias e rodado", "\n")
			escreva("por ", quilometros, " quilômetros o preço a pagar será de ", preco_aluguel, " reais")
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
 * @POSICAO-CURSOR = 1415; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */