json.array!(@qualificacaos) do |qualificacao|
  json.extract! qualificacao, :id, :comentario, :nota, :academia_treinamento_id
  json.url qualificacao_url(qualificacao, format: :json)
end
