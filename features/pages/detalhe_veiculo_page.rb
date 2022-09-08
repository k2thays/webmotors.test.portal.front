class Description < SitePrism::Page
  # Detalhes do veiculo
  element :detalhe_titulo_veiculo, '#VehicleBasicInformationTitle'
  element :detalhe_valor_veiculo, '#vehicleSendProposalPrice'

<<<<<<< HEAD
=======

  # MOTODOS
>>>>>>> 7d4e5bb0627b2f4d2fcbb9d1e807a342dab76d70
  def validar_detalhes_veiculo
    detalhe_titulo_veiculo.visible?
    detalhe_valor_veiculo.visible?
  end
end
