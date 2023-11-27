<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
  <c:when test="${tipoUsuario == 1}">
    <header id="cabecalho" class="template-grid">
                    <div>
                        <img src="../../imagens/icone-menu.svg" alt="icone-menu">
                        <nav>
                            <div>
                                <div>
                                    <img src="../../imagens/perfil-exemplo.jpg" alt="foto-de-perfil">
                                </div>
                                <img src="../../imagens/icone-fechar.svg" alt="icone-fechar">
                            </div>
                            <div>
                                <div>
                                    <a href="./perfil" class="texto">Perfil</a>
                                    <img src="../../imagens/icone-perfil.svg" alt="icone-perfil">
                                </div>
                                <div>
                                    <a href="./consultas" class="texto">Consultas</a>
                                    <img src="../../imagens/icone-consulta.svg" alt="icone-consulta">
                                </div>
                                <div>
                                    <a href="./conquistas-paciente" class="texto">Conquistas</a>
                                    <img src="../../imagens/icone-conquista.svg" alt="icone-conquista">
                                </div>
                                <div>
                                    <a href="./notificacoes-paciente" class="texto">Notificações</a> 
                                    <img src="../../imagens/icone-notificacao.svg" alt="icone-notificacao">
                                </div>
                            </div>
                            <div>
                                <button class="botao-circular-m"><a href="./deslogar">Terminar sessão</a></button>
                                <img src="../../imagens/configuracoes.svg">
                            </div>
                            <div>
                                <img src="./assets/imagens/logo-rodape.svg" alt="logo-mediconnect">
                                <div><hr></div>
                            </div>
                        </nav>

                    </div>
                            <a href="./home"> <img src="../../imagens/logo.svg" alt="logo-mediconnect"> </a>
                </header>
  </c:when>
  <c:when test="${tipoUsuario == 2}">
	<header id="cabecalho" class="template-grid">
		<div>
			<img src="../../imagens/icone-menu.svg" alt="icone-menu">
			<nav>
				<div>
					<div>
						<img src="../../imagens/perfil-instituicao.png" alt="foto-de-perfil">
					</div>
					<img src="../../imagens/icone-fechar.svg" alt="icone-fechar">
				</div>
				<div>
					<div>
						<a href="./perfil" class="texto">Perfil</a>
						<img src="../../imagens/icone-perfil.svg" alt="icone-perfil">
					</div>
					<div>
						<a href="./especialidades-instituicao" class="texto">Especialidades</a>
						<img src="../../imagens/icone-especialidade.svg" alt="icone-especialidade">
					</div>
					<div>
						<a href="./atendentes-instituicao" class="texto">Atendentes</a>
						<img src="../../imagens/icone-atendente.svg" alt="icone-atendente">
					</div>
					<div>
						<a href="./notificacoes-instituicao" class="texto">Notificações</a> 
						<img src="../../imagens/icone-notificacao.svg" alt="icone-notificacao">
					</div>
				</div>
				<div>
					<button class="botao-circular-m">a href="./deslogar">Terminar sessão</a></button>
					<img src="../../imagens/configuracoes.svg" alt="">
				</div>
				<div>
					<img src="./assets/imagens/logo-rodape.svg" alt="logo-mediconnect">
					<div><hr></div>
				</div>
			</nav>

			</div>
				<a href="./home"> <img src="../../imagens/logo.svg" alt="logo-mediconnect"> </a>
	</header>
  </c:when>
  <c:when test="${tipoUsuario == 3}">
    <header id="cabecalho" class="template-grid">
        <div>
            <img src="../../imagens/icone-menu.svg" alt="icone-menu">
            <nav>
                <div>
                    <div>
                        <img src="../../imagens/perfil-exemplo.jpg" alt="foto-de-perfil">
                    </div>
                    <img src="../../imagens/icone-fechar.svg" alt="icone-fechar">
                </div>
                <div>
                    <div>
                        <a href="./perfil" class="texto">Perfil</a>
                        <img src="../../imagens/icone-perfil.svg" alt="icone-perfil">
                    </div>
                    <div>
                        <a href="./consultas-atendente" class="texto">Consultas</a>
                        <img src="../../imagens/icone-consulta.svg" alt="icone-consulta">
                    </div>
                    <div>
                        <a href="#" class="texto">Notificações</a> 
                        <img src="../../imagens/icone-notificacao.svg" alt="icone-notificacao">
                    </div>
                </div>
                <div>
                    <button class="botao-circular-m">a href="./deslogar">Terminar sessão</a></button>
                    <img src="../../imagens/configuracoes.svg">
                </div>
                <div>
                    <img src="./assets/imagens/logo-rodape.svg" alt="logo-mediconnect">
                    <div><hr></div>
                </div>
            </nav>

            </div>
                <a href="./home"> <img src="../../imagens/logo.svg" alt="logo-mediconnect"> </a>
    </header>
  </c:when>
  </c:choose>