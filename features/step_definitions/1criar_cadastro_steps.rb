Dado(/^que eu esteja logado no site orangeh$/) do
  @loginpage = LoginPage.new
  @loginpage.load
  @loginpage.acesso('will', 'will')
end


Quando(/^eu cadastro o "([^"]*)"$/) do |nome|
  LoginPage.new.criar.click
  LoginPage.new.criar_tarefa.click
  LoginPage.new.nome.set('Tarefa do Robo')
  LoginPage.new.status.select ('In Progress')
  LoginPage.new.data_inicio.set('05/30/2017')
  LoginPage.new.relacionado.select('Task')
  LoginPage.new.hora.select('09')
  LoginPage.new.minuto.select('30')
  LoginPage.new.prioridade.select('Low')
  LoginPage.new.data_vencimento.set('06/14/2017')
  LoginPage.new.hora_final.select('12')
  LoginPage.new.minuto_final.set('30')
  LoginPage.new.comentario.set('As tres leis dos Robos')
  LoginPage.new.save_continue.click
end

Então(/^o cadastro do empregado e salvo$/) do

  
  puts 'Concluido'
  assert_text('TAREFA DO ROBO')
end


