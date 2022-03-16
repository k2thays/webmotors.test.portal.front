# language: pt



#VERIFICAR RESULTADO DE SUCESSO DO FINANCIMANETO EM HOMOLOGAÇÃO
#VERIFICAR COM TIME DE FINANCIAMENTO PARA PEGAR OS DADOS QUE PASSAM NAS PARCELAS

@portal @detalhe @lead
Funcionalidade: Validar envio lead
      Eu como Usuario
  Quero enviar uma notificação de interesse
  Para que o vendedor entre em contato

  Contexto:
    Dado que estou na home da webmotors

  @envio_lead
  Esquema do Cenário: Enviar lead já preenchido
      E faço a busca por um "<modelo>"
      E seleciono um anúncio
    Quando envio mensagem do lead
    Então recebo a confirmação
    Exemplos:
      | modelo |
      | Honda  |


  @denunciar_anuncio
  Esquema do Cenário: Denunciar um anuncio
      E faço a busca por um "<modelo>"
      E seleciono um anúncio
    Quando denuncio um anúncio
      E preencho o formulario
    Entao exibe mensagem enviada com sucesso
    Exemplos:
      | modelo |
      | Honda  |

#denuncia: validar formulario completo