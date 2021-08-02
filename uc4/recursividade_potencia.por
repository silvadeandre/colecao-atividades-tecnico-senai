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
