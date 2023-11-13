<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Consultas | MediConnect</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../../imagens/favicon.ico">
    <style><%@include file="../../estilos/padroes.css"%></style>
    <style><%@include file="../../estilos/paciente-consultas.css"%></style>

</head>
<body>
    <header id="cabecalho" class="template-grid">
        <nav class="navegacao-barra">
            <img src="../../imagens/icone-menu.svg" alt="icone-menu">
            <img src="../../imagens/logo.svg" alt="icone-mediconnect">
        </nav>
        <nav class="navegacao-filtro">
            <div class="filtro">
                <div class="input-item">
                    <input class="texto-enfase" type="texto" id="pesquisar" name="pesquisar" placeholder="Pesquisar">
                </div>
                <div class="filtro-icone">
                    <img src="../../imagens/icone-lupa.svg" alt="icone-pesquisar">
                </div>
            </div>
            <button class="botao-quadrado-g texto">Filtrar <img src="../../imagens/icone-filtro.svg"></button>
        </nav>
    </header>
    <main>
        <section id="consultas">
            <div class="template-grid">
                <div id="botoes-opcoes">
                    <div class="botoes-selecao">
                        <button class="botao-quadrado-p texto-enfase" autofocus>Pendentes</button>
                        <button class="botao-quadrado-p texto-enfase">Todas</button>
                    </div>
                    <button id="agendar" class="botao-quadrado-p texto-enfase">Agendar <img src="../../imagens/icone-adicionar.svg"></button>
                </div>
<<<<<<< HEAD
=======
                <button class="btn-square-sm text-emphasis link-light"><a href="./agendar-consulta">Agendar <img src="../../images/icone-adicionar.svg"></a></button>
>>>>>>> 2a3e943b90e6045968e2cba7e38960381c6194c8
            </div>
            <div id="consulta">
                <c:forEach var="consulta" items="${consultas}" class="template-grid">

                    <div class="card-horizontal">
                        <p class="texto-enfase">Título da consulta</p>
                        <div class="info-direita">
                            <div class="info-variavel">
                                <div class="info-data">
                                    <img src="../../imagens/icone-calendario.svg" alt="icone-calendario">
                                    <p class="texto" type="datetime"><fmt:formatDate pattern = 'dd/MM/yyyy' value = '${data}'/></p>
                                </div>
                                <div class="info-horario">
                                    <img src="../../imagens/icone-horario.svg" alt="icone-calendario">
                                    <p class="texto"><c:out value='${consulta.horario}'/></p>
                                </div>
                            </div>
                            <button class="botao-quadrado-p texto-enfase">Ver detalhes</button>
                        </div>
                    </div>

<<<<<<< HEAD
                </c:forEach>
            </div>
        </section>
=======
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
>>>>>>> 2a3e943b90e6045968e2cba7e38960381c6194c8
    </main>
    <footer>
        <div class="template-grid" id="rodape-links">
            <div class="rodape-mediconnect">
                <p class="texto">MediConnect</p>
                <a href="../sobre-nos.jsp" class="texto-sem-enfase texto-claro">Sobre nós</a>
                <a href="../../inicial.jsp" class="texto-sem-enfase texto-claro">Página inicial</a>
            </div>
            <div class="rodape-contato">
                <p class="texto">Atendimento</p>
                <a href="#" class="texto-sem-enfase texto-claro">Contato</a>
                <a href="#" class="texto-sem-enfase texto-claro">Termos de Uso</a>
            </div>
            <div class="rodape-social">
                <p class="texto">Redes Sociais</p>
                <div class="social-whatsapp">
                    <img src="../../imagens/logo-whatsapp.svg">
                    <a href="#" class="texto-sem-enfase texto-claro">WhatsApp</a>
                </div>
                <div class="social-github">
                    <img src="../../imagens/logo-github.svg">
                    <a href="#" class="texto-sem-enfase texto-claro">GitHub</a>
                </div>
                <div class="social-instagram">
                    <img src="../../imagens/logo-instagram.svg">
                    <a href="#" class="texto-sem-enfase texto-claro">Instagram</a>
                </div>
            </div>
        </div>
        <div class="template-grid" id="rodape-comercial">
            <hr><br>
            <div class="comercial-conteudo">
                <img src="../../imagens/logo-rodape.svg" alt="logo-mediconnect">
                <p class="texto-pequeno">2023 &copy Todos os direitos reservados</p>
            </div>
        </div>
    </footer>
</body>
</html>