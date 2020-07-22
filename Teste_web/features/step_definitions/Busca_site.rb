Dado('que acesso a url desejada') do
  visit('https://www.americanas.com.br/')
end

Dado('digito o produto TV') do
  page.all(:css,'.src')
  fill_in(id:'h_search-input', with:'Tv')
end

Quando('visualizo a lista de TVs') do
  click_button(class: 'src-btn')
end

Quando('seleciono o produto desejado') do
  page.find(:xpath, '//*[@id="content-middle"]/div[6]/div/div/div/div[1]/div[1]/div/div[2]/a/section/div[1]/div/div/picture/img').click
end

Quando('clico em comprar') do
  page.find(:xpath, '//*[@id="btn-buy"]/div/span').click
end

Então('clico em continuar') do
  page.find(:xpath, '//*[@id="btn-continue"]/div/span').click
end

Então('visualizo o produto no cesta de compras') do
  value = page.find(:xpath, '//*[@id="app"]/section/section/div[3]/ul/li[1]/span[1]')
  expect(value.text).to eq('1')
end