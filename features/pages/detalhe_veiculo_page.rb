class Description < SitePrism::Page
  # Detalhes do veiculo
  element :detalhe_titulo_veiculo, '#VehicleBasicInformationTitle'
  element :detalhe_valor_veiculo, '#vehicleSendProposalPrice'

  def validar_detalhes_veiculo
    detalhe_titulo_veiculo.visible?
    detalhe_valor_veiculo.visible?
  end
end
