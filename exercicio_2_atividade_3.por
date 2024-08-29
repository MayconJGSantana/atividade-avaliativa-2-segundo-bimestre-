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
		real a = 0.0
		real b = 0.0
		real c= 0.0
		real delta
		real bhaskara_positivo
		real bhaskara_negativo
		const real EXPOENTE  = 2.0
		const real INDICE = 2.0
		// caprichos
		cadeia deseja_continuar = ""
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 2")
			pergunte("Entre com o valor do coeficiente 'a': ")
			leia(a)
			pergunte("Entre com o valor do coeficiente 'b': ")
			leia(b)
			pergunte("Entre com o valor do coeficiente 'c': ")
			leia(c)
			delta = Matematica.potencia(b, EXPOENTE) + (-4 * c * a)
			bhaskara_positivo = (- b + Matematica.raiz(delta, INDICE)) / (2 * a)
			bhaskara_negativo = (- b - Matematica.raiz(delta, INDICE)) / (2 * a)
			escreva("O valor do discriminante da equação com coeficientes ", a,", ", b, " e ", c, " é igual a ", delta, "\n")
			escreva("e as raízes da bhaskara é ", bhaskara_positivo, " e ", bhaskara_negativo)
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
 * @POSICAO-CURSOR = 953; 
 * @DOBRAMENTO-CODIGO = [6, 12, 21, 24];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */