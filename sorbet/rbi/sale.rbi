# typed: true

class Sale
  sig { returns(Time)}
  attr_accessor :data_venda

  sig { returns(Float) }
  attr_accessor :valor_vendas

  sig { returns(Integer) }
  attr_accessor :quantidade_vendas, :quantidade_pecas

  sig { returns(String) }
  attr_accessor :loja_cnpj, :vendedor_cpf, :vendedor_id

end
