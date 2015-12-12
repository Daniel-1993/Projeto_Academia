json.array!(@modalidades) do |modalidade|
  json.extract! modalidade, :id, :descricao, :professor_id
  json.url modalidade_url(modalidade, format: :json)
end
