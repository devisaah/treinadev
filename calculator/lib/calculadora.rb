def soma(primeiro_numero, segundo_numero)
  primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
  primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
  primeiro_numero * segundo_numero
end

def divisao(dividendo, divisor)
  if divisor == 0
    "Opa! Zero como divisor"
  else
    dividendo / divisor
  end
end
