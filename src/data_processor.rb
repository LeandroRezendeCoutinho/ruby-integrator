require_relative 'sale'

class DataProcessor
  def process(data)
    grouped_sales = data.group_by { |x| x.data_venda && x.vendedor_cpf }
    sales = grouped_sales.map do |_key, value|
      sale = Sale.new
      sale.data_venda = value.first.data_venda
      sale.valor_vendas = value.sum(&:valor_vendas)
      sale.quantidade_vendas = value.sum(&:quantidade_vendas)
      sale.quantidade_pecas = value.sum(&:quantidade_pecas)
      sale.loja_cnpj = value.first.loja_cnpj
      sale.vendedor_cpf = value.first.vendedor_cpf
      sale.vendedor_id = value.first.vendedor_id
      sale
    end
    sales
  end
end
