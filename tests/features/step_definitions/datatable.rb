Dado('que eu tenho umas laranjas.') do |table|
  @laranjas = table.rows_hash['laranjas'].to_i
end

Quando('eu corto {int} laranjas.') do |int|
  @cortei = @laranjas - int
end

Então('eu verifico se sobraram {int} laranjas inteiras.') do |int|
  expect(@cortei).to eq int
end

Dado('que tenho umas laranjas.') do |table|
  table.hashes.each do |valor|
    @laranjas = valor['laranjas'].to_i
  end
end

Quando('eu chupo {int} laranjas.') do |int|
  @chupei = @laranjas - int
end


Então('eu verifico se sobraram {int} laranjas.') do |int|
  expect(@chupei).to eq int
end