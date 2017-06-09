class LoginPage <SitePrism::Page
	set_url "https://demo.suiteondemand.com" 
	element :usuario, '#user_name'
	element :senha, '#user_password'
	element :botao_login, '#bigbutton'
	element :criar, '#quickcreatetop'
	element :criar_tarefa, '.last'
	element :nome, '#name'
	element :status, '#status'
	element :data_inicio, '#date_start_date'
	element :relacionado, '#parent_type'
	element :hora, '#date_start_hours'
	element :minuto, '#date_start_minutes'
	element :manha, '#date_start_mirdiem'
	element :contato, '#contact_name'
	element :excluir, '#btn_clr_parent_name'
	element :prioridade, '#priority'
	element :data_vencimento, '#date_due_date'
    element :hora_final, '#date_due_hours'
    element :minuto_final, '#date_due_minutes'
    element :tarde, '#data_due_miridiem'
    element :comentario, '#description'
    element :save_continue, :css, "#EditView > div.buttons > #SAVE"
    element :menu, '#grouptab_3'
    element :tarefa_edita, '#moduleTab_6_Tasks'
    element :editar, 'tab-actions'
    element :excluir, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[1]/input'
    element :acao_apagar, :xpath, '//*[@id="actionLinkTop"]/li/span'
    element :apagar, '#delete_listview_top'
    element :action, :xpath, '//*[@id="edit_button"]'
    



    def acesso(login,password)
    	usuario.set(login)
    	senha.set(password)
    	botao_login.click
    end	

    def alterar
    	tarefa_edita.click
    	editar.click
    end
    

end
