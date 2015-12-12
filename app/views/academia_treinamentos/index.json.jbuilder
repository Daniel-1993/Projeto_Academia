json.array!(@academia_treinamentos) do |academia_treinamento|
  json.extract! academia_treinamento, :id, :nome, :endereco, :modalidade_id
  json.url academia_treinamento_url(academia_treinamento, format: :json)
end
