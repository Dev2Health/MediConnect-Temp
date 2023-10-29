<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <title>Notificações | MediConnect</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="icon" type="image/x-icon" href="../../images/favicon.ico">
            <link rel="stylesheet" type="text/css" href="../../styles/padroes.css">
            <link rel="stylesheet" type="text/css" href="../../styles/notificacoes-instituicao.css">
        </head>

        <body>
            <header id="content-header" class="template-grid">
                <nav class="nav-bar">
                    <img src="../../images/icone-menu.svg" alt="icone-menu">
                    <img src="../../images/logo.svg" alt="icone-mediconnect">
                </nav>
                <nav class="nav-filter">
                    <div class="filter-box">
                        <div class="input-itens">
                            <input class="text-emphasis" type="text" id="pesquisar" name="pesquisar"
                                placeholder="Pesquisar">
                        </div>
                        <div class="filter-icon">
                            <img src="../../images/icone-lupa.svg" alt="icone-pesquisar">
                        </div>
                    </div>
                    <button class="btn-square-la text">Filtrar <img src="../../images/icone-filtro.svg"> </button>
                </nav>
            </header>
            <main>
                <div id="search-return" class="template-grid">
                    <p class="text">Notificações recebidas pela instituição</p>
                </div>
                <c:forEach var="notificacao" items="${notificacoes}">
                    <div id="notification" class="template-grid">
                        <div class="card-notification">
                            <div class="notification-top">
                                <h2 class="subtitle">Notificação</h2>
                                <div class="consult-info">
                                    <div class="consult-date">
                                        <img src="../../images/icone-calendario.svg" alt="icone-calendario">
                                        <p class="text">
                                            <c:out value="${notificacao.data}" />
                                        </p>
                                    </div>
                                    <div class="consult-time">
                                        <img src="../../images/icone-horario.svg" alt="icone-horario">
                                        <p class="text">
                                            <c:out value="${notificacao.horario}" />
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="notification-bottom"> <!--Inferior-->
                                <p class="text-no-emphasis">
                                    <c:out value="${notificacao.descricao}" />
                                </p>
                                <!-- <p class="text-no-emphasis">Descrição da notificação estará disposta nesse espaço quando toda a mensagem couber em sua totalidade. Horário da mensagem foi às <span class="text-emphasis">13:59</span> da data <span class="text-emphasis">20/08/2000.</span></p> -->
                            </div>
                        </div><!--fim do card-->
                </c:forEach>
                </div>
            </main>
            <footer>
                <div class="template-grid" id="footer-links">
                    <div class="footer-mediconnect">
                        <p class="text">MediConnect</p>
                        <a href="../sobre-nos.html" class="text-no-emphasis link-light">Sobre nós</a>
                        <a href="../../../index.html" class="text-no-emphasis link-light">Página inicial</a>
                    </div>
                    <div class="footer-contact">
                        <p class="text">Atendimento</p>
                        <a href="#" class="text-no-emphasis link-light">Contato</a>
                        <a href="#" class="text-no-emphasis link-light">Termos de Uso</a>
                    </div>
                    <div class="footer-social">
                        <p class="text">Redes Sociais</p>
                        <div class="social-whatsapp">
                            <img src="../../images/logo-whatsapp.svg">
                            <a href="#" class="text-no-emphasis link-light">WhatsApp</a>
                        </div>
                        <div class="social-github">
                            <img src="../../images/logo-github.svg">
                            <a href="#" class="text-no-emphasis link-light">GitHub</a>
                        </div>
                        <div class="social-instagram">
                            <img src="../../images/logo-instagram.svg">
                            <a href="#" class="text-no-emphasis link-light">Instagram</a>
                        </div>
                    </div>
                </div>
                <div class="template-grid" id="footer-commercial">
                    <hr><br>
                    <div class="commercial-content">
                        <img src="../../images/logo-rodape.svg" alt="logo-mediconnect">
                        <p class="text-small">2023 &copy Todos os direitos reservados</p>
                    </div>
                </div>
            </footer>
        </body>

        </html>