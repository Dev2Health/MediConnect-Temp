<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Consultas | MediConnect</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../../images/favicon.ico">
    <style><%@include file="../../estilos/padroes.css"%></style>
    <style><%@include file="../../estilos/consultas-paciente.css"%></style>
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
                    <input class="text-emphasis" type="text" id="pesquisar" name="pesquisar" placeholder="Pesquisar">
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
            <div id="return-options">
                <div id="options-switch">
                    <button class="btn-square-sm text-emphasis" autofocus>Pendentes</button>
                    <button class="btn-square-sm text-emphasis">Todas</button>
                </div>
                <button class="btn-square-sm text-emphasis link-light"><a href="./agendar-consulta">Agendar <img src="../../images/icone-adicionar.svg"></a></button>
            </div>
            <button class="btn-square-sm text">Agendar <img src="../../images/icone-adicionar.svg"
                    alt="icone-adicionar"></button>
        </div><!--fim do título-->

        <div> <!--notificações-->
            <c:forEach var="consulta" items="${consultas}">
            <div> <!--Card notificação-->

                <p class="text-emphasis">Consulta - <c:out value="${consulta.id}" /></p>
                <div>
                    <img src="../../images/icone-calendario.svg" alt="icone-calendario">
                    <fmt:parseDate value="${consulta.data}" type="date"
                    pattern="yyyy-MM-dd" var="parsedDate" />
                    <fmt:formatDate value="${parsedDate}" type="date"
                    pattern="dd/MM/yyyy" var="data" />
                    <p class="text" type="date"><c:out value="${data}" /></p>
                </div>
                <div>
                    <img src="../../images/icone-horario.svg" alt="icone-horario">
                    <p class="text"><c:out value="${consulta.horario}" /></p>
                </div>
                <a href="./modal-consulta-paciente"class="btn-square-la">Ver detalhes</a>
            </div>
            </c:forEach>

        </div>

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