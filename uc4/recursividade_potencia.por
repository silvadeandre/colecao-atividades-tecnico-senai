programa
{

	funcao inteiro potenciacao (inteiro base, inteiro expoente) {
		se (expoente == 0) {
			retorne 1
		} senao
			retorne base * potenciacao(base, expoente -1)
	}
	
	funcao inicio()
	{

		inteiro base, expoente
	
		escreva("Informe o valor do número base: ")
		leia(base)
		escreva("Informe o valor do expoente: ")
		leia(expoente)
		escreva("\n") 
		escreva("A potência de " + base + " elevado a " + expoente + " é: " + potenciacao(base, expoente) + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 73; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {base, 4, 37, 4}-{expoente, 4, 51, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */