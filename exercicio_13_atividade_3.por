programa
{
	inclua biblioteca Matematica
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
		inteiro codigo_pedido = 0
		inteiro quantidade_pedido = 0
		real preco_pedido
		const inteiro CASAS_DECIMAIS = 2
		// caprichos
		cadeia deseja_continuar = ""
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 13")
			enquanto (verdadeiro) {
				pergunte("Entre com o código do pedido: ")
				leia(codigo_pedido)
				se (codigo_pedido > 106 ou codigo_pedido < 100) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Entre com a quantidade do pedido: ")
				leia(quantidade_pedido)
				se (quantidade_pedido < 1) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			escreva("...", "\n")
			escolha (codigo_pedido) {
				caso 100:
					preco_pedido = 5 * quantidade_pedido
					escreva("O pedido de cachorro quente com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
				caso 101:
					preco_pedido = Matematica.arredondar(2.6 * quantidade_pedido, CASAS_DECIMAIS)
					escreva("O pedido de bauru com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
				caso 102:
					preco_pedido = Matematica.arredondar(3.8 * quantidade_pedido, CASAS_DECIMAIS)
					escreva("O pedido de bauru com bacon com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
				caso 103:
					preco_pedido = 9 * quantidade_pedido
					escreva("O pedido de hamburger com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
				caso 104:
					preco_pedido = 11 * quantidade_pedido
					escreva("O pedido de cheeseburger com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
				caso 105:
					preco_pedido = 3 * quantidade_pedido
					escreva("O pedido de refrigerante com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
				caso 106:
					preco_pedido = 1000 * quantidade_pedido
					escreva("O pedido de semente dos deuses com ", quantidade_pedido, " unidades ficará em ", preco_pedido, " reais")
					pare
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
 * @POSICAO-CURSOR = 1370; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */