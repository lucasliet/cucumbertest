Dado('que eu tenho {int} laranjas na bolsa.') do |quantidade|
  @laranjas = quantidade
end

Quando('eu coloco {int} laranjas na bolsa.') do |quantidade|
  @coloquei = @laranjas + quantidade
end

Então('eu verifico se o total de laranjas na bolsa é {int}.') do |total|
  expect(@coloquei).to eq total
end

Quando('eu tiro {int} laranjas da bolsa.') do |quantidade|
  @retirei = @laranjas - quantidade
end

Então('eu verifico se fiquei com {int} laranjas na bolsa.') do |total|
  expect(@retirei).to eq total
end