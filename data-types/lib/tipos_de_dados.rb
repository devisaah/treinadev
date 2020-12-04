class TiposDeDados
  def ola_mundo
    "Olá Mundo"
  end

  def um_numero
    26
  end

  def um_decimal
    26.to_f
  end

  def verdadeiro?
    nota1 = 7
    nota2 = 9
    (nota1+nota2) / 2 ==  8
  end

  def falso?
    nota1 = 7
    nota2 = 7
    (nota1+nota2) / 2 > 8
  end

  def array_vazio
    []
  end

  def array_com_um_elemento
    ["Isadora Dantas"]
  end

  def array_com_dois_elementos
    ["Isadora Dantas", "Natal/RN"]
  end
end
