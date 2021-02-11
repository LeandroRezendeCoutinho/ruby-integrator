require './sale.rb'

class DataProcessor
  def process(data)
    grouped_sales = data.group_by {|x| x['data_venda'] && x['vendedor_cpf'] }

    sale = Sale.new
    grouped_sales.each do |key, value|
      sale.data_venda = value.first['data_venda']
      sale.valor_vendas = value.sum { |x| x['valor_vendas'] }
      sale.quantidade_vendas = value.sum { |x| x['quantidade_vendas'] }
      sale.quantidade_pecas = value.sum { |x| x['quantidade_pecas'] }
      sale.loja_cnpj = value.first['loja_cnpj']
      sale.vendedor_cpf = value.first['vendedor_cpf']
      sale.vendedor_id = value.first['vendedor_id']
    end

    grouped_sales
  end
end