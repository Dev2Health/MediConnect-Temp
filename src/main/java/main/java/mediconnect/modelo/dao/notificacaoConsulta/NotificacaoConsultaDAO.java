package main.java.mediconnect.modelo.dao.notificacaoConsulta;

import java.util.List;

import main.java.mediconnect.modelo.entidade.notificacaoConsulta.NotificacaoConsulta;

public interface NotificacaoConsultaDAO {
	void inserirNotificacaoConsulta(NotificacaoConsulta notificacao_consulta);
	void deletarNotificacaoConsulta(NotificacaoConsulta notificacao_consulta);
	void atualizarNotificacaoConsulta(NotificacaoConsulta notificacao_consulta);
	List<NotificacaoConsulta> recuperarNotificacaoConsulta();
}
