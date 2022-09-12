Quando('preencho o formulário para consulta') do
  # preenchimento do formulário para analise de parcelas
  installment.fill_form
end
  
Quando('decido ver parcelas avisando') do
  # Botão 'Ver Parcelas'
  installment.show_result
end

Quando('decido não avisar') do
  # Botão 'Ver Parcelas'
  installment.show_result
end
  
Entao('deve #VERIFICAR RESULTADO DO FINANCIMANETO EM HOMOLOGAÇÃO') do
    
end
