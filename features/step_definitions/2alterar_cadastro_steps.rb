Quando(/^eu altero o cadastro do empregado$/) do
  LoginPage.new.menu.click
  LoginPage.new.tarefa_edita.click
  click_link('Tarefa do Robo')
  click_link('ACTIONS')
  click_button('Edit')
  #LoginPage.new.editar.click
  #LoginPage.new.action.click
  LoginPage.new.nome.set('Reunião dos Robos')
  LoginPage.new.status.select ('In Progress')
  LoginPage.new.data_inicio.set('02/15/2017')
  LoginPage.new.relacionado.select('Task')
  LoginPage.new.hora.select('07')
  LoginPage.new.minuto.select('30')
  LoginPage.new.prioridade.select('Low')
  LoginPage.new.data_vencimento.set('06/14/2017')
  LoginPage.new.hora_final.select('12')
  LoginPage.new.minuto_final.set('30')
  LoginPage.new.comentario.set('As tres leis dos Robos')
  LoginPage.new.save_continue.click

end

Então(/^a alteração é salva$/) do
  puts 'Concluido'
  assert_text('REUNIÃO DOS ROBOS')
end