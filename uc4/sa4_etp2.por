programa
{
	cadeia filaNome[3]
	inteiro comeco = 0, final = 2, ponteiro = -1, i
	
	funcao tracejado() {
		escreva("--------")
	}
	
	funcao enqueue () { // inclui um elemento na última posição da fila 	
 		se (isFull() == verdadeiro) {
			limpa()
			escreva("A lista de usuários está cheia!\n\n")	 		
		} senao {
 			limpa()
 			ponteiro++						
			tracejado()
			escreva(" CADASTRO DE USUÁRIO ")
			tracejado()
			escreva("\n")
			escreva ("Nome: ")
			leia(filaNome[ponteiro])	 
			limpa()
			escreva("Usuário cadastrado!\n\n")
		} 
	 }

	funcao dequeue() { // remove o primeiro elemento da fila e empurra os demais elementos para frente
		limpa()
		se (isEmpty() == verdadeiro) {
			escreva("A lista já está vazia!\n\n")
		} senao {
			escreva("Usuário ´´" + filaNome[comeco] + "`` removido da lista!\n\n")
			para (i = comeco; i < ponteiro; i++) {
				se (i < ponteiro) {
					filaNome[i] = ""
					filaNome[i] = filaNome[i+1]
				} 
			}
			ponteiro--
		}
	}

	funcao esvaziar () { // remove todos os elementos da fila
		limpa()
			escreva("Todos os elementos foram removidos!\n\n")
			se (ponteiro > final) {
				ponteiro = final
			}
			se (ponteiro >= comeco) {
				filaNome[ponteiro] = ""
				ponteiro--
				esvaziar()
			}										
	}

	funcao listar() { // lista todos os elementos da fila
		limpa()
		se (ponteiro < comeco) {
			escreva("A lista ainda está vazia!\n\n")
		} senao {
			tracejado()
			escreva(" Lista de Usuários ")
			tracejado()
			escreva("\n")
			
			para (i = comeco; i <= ponteiro; i++) {
				escreva(i + 1 + "º - " + filaNome[i] + "\n")
			}
			escreva("\n")
			tracejado()
			escreva(" Fim ")
			tracejado()
			escreva("\n\n")
		}
	}

	funcao logico isEmpty() { // verifica se existe algum elemento na pilha
		limpa()
		
		se (ponteiro < comeco) {
			retorne verdadeiro
		} senao 
			retorne falso
	}

	funcao logico isFull() {
		se (ponteiro >= final) {
			retorne verdadeiro
		} senao 
			retorne falso
	}

	funcao inicio()
	{
		inteiro opcao
		logico analisa

		faca {
			tracejado()
			escreva(" MENU DE OPÇÕES ")
			tracejado()
			escreva("\n")
			escreva("[1] Adicionar\n")
			escreva("[2] Remover\n")
			escreva("[3] Limpar\n")
			escreva("[4] Listar\n")
			escreva("[5] Vazia\n")
			escreva("[0] Sair\n\n")
			escreva ("Escolha a sua opção: ")
			leia (opcao)
			
			escolha(opcao) {
				caso 1:					
					enqueue()
				pare

				caso 2:
					dequeue()
				pare

				caso 3:
					esvaziar()
				pare

				caso 4:
					listar()
				pare

				caso 5:
					analisa = isEmpty()
					se (analisa == verdadeiro) {
						escreva("Fila vazia!\n\n")
					} senao {
						escreva("A fila não está vazia!\n\n")
					}
				pare

				caso contrario:  
				limpa()
				escreva("Programa Finalizado!\n\n")
			}
			
		} enquanto (opcao != 0)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 738; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {filaNome, 3, 8, 8}-{ponteiro, 4, 32, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */