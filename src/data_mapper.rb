class DataMapper
  def self.map(sales)

    list = sales.map do |value|
      sale = Sale.new
      sale.data_venda = value['data_venda']
      sale.valor_vendas = value['valor_vendas']
      sale.quantidade_vendas = value['quantidade_vendas']
      sale.quantidade_pecas = value['quantidade_pecas']
      sale.loja_cnpj = value['loja_cnpj']
      sale.vendedor_cpf = value['vendedor_cpf']
      sale.vendedor_id = value['vendedor_id']
      sale
    end

    list
  end
end