<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Perfil | MediConnect</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="./assets/imagens/favicon.ico">
    <style><%@include file="../../estilos/padroes.css"%></style>
    <style><%@include file="../../estilos/instituicao-perfil.css"%></style>
</head>
<body>
    <header id="cabecalho" class="template-grid">
        <nav class="barra-navegacao">
            <img src="./assets/imagens/icone-menu.svg" alt="icone-menu">
            <img src="./assets/imagens/logo.svg" alt="logo-mediconnect">
        </nav>
    </header>
    <main>
        <section id="perfil">
            <div class="perfil-apresentacao">
                <div class="perfil-foto">
                    <img src="./assets/imagens/icone-camera.svg" alt="icone-camera">
                </div>
                <div class="perfil-editar">
                    <button class="botao-quadrado-m texto-enfase">Editar Perfil <img src="./assets/imagens/icone-editar.svg" alt="icone-editar"></button>
                </div>
            </div>
            <div class="template-grid">
                <div class="perfil-informacao">
                    <div class="perfil-imagem">
                        <img class="icone-claro" src="./assets/imagens/icone-instituicao.svg" alt="icone-instituicao">
                    </div>
                    <div class="perfil-detalhes">
                        <h2 class="subtitulo">Intendência Distrital do Grande Garcia</h2>
                        <p class="texto">endereço.email@gmal.com</p>
                    </div>
                </div>
            </div>
        </section>
        <section id="especialidades">
            <div class="sessao-subtitulo">
                <h2 class="subtitulo">Especialidades Atendidas</h2>
            </div>
            <div id="especialidade" class="template-grid">
                <div class="card-horizontal">
                    <p class="texto-enfase">Clínico Geral</p>
                    <div class="info-direita">
                        <div class="info-variavel">
                            <img src="./assets/imagens/icone-profissional.svg" alt="icone-profissional">
                            <p class="texto">4</p>
                        </div>
                        <button class="botao-quadrado-p texto-enfase">Ver detalhes</button>
                    </div>
                </div>
                <div class="card-horizontal">
                    <p class="texto-enfase">Oncologia</p>
                    <div class="info-direita">
                        <div class="info-variavel">
                            <img src="./assets/imagens/icone-profissional.svg" alt="icone-profissional">
                            <p class="texto">2</p>
                        </div>
                        <button class="botao-quadrado-p texto-enfase">Ver detalhes</button>
                    </div>
                </div>
                <div class="card-horizontal">
                    <p class="texto-enfase">Odontologia</p>
                    <div class="info-direita">
                        <div class="info-variavel">
                            <img src="./assets/imagens/icone-profissional.svg" alt="icone-profissional">
                            <p class="texto">3</p>
                        </div>
                        <button class="botao-quadrado-p texto-enfase">Ver detalhes</button>
                    </div>
                </div>
            </div>
            <div class="ver-tudo">
                <button href="./especialidades.jsp" class="botao-quadrado-p texto-enfase"> Ver todas <img src="./assets/imagens/icone-seta.svg" alt="icone-seta"></button>
            </div>
        </section>
        <section id="atendentes">
            <div class="sessao-subtitulo">
                <h2 class="subtitulo">Atendentes Cadastrados</h2>
            </div>
            <div id="atendente" class="template-grid"> 
                <div class="cards-agrupamento">
                    <div class="card-entidade">
                        <div class="card-superior">
                            <div class="entidade-imagem">
                                <img src="./assets/imagens/perfil-exemplo.jpg" alt="foto-de-perfil">
                            </div>
                            <div class="entidade-informacao">
                                <p class="texto">Gleice Silva Pinheiro</p>
                                <p class="texto-sem-enfase">Nº Cadastro 456456</p>
                            </div>
                        </div>
                        <div class="card-meio">
                            <img src="./assets/imagens/icone-informacoes.svg" alt="icone-informações">
                            <p class="texto">Informações Gerais</p>
                        </div>
                        <div class="card-inferior">
                            <div class="inferior-informacao">
                                <p class="texto-sem-enfase">Data de cadastro</p>
                                <p class="texto-sem-enfase">18/04/2000</p>
                            </div>
                            <div class="inferior-informacao">
                                <p class="texto-sem-enfase">CTPS</p>
                                <p class="texto-sem-enfase">123.456.789-10</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-entidade">
                        <div class="card-superior">
                            <div class="entidade-imagem">
                                <img src="./assets/imagens/perfil-exemplo.jpg" alt="foto-de-perfil">
                            </div>
                            <div class="entidade-informacao">
                                <p class="texto">Gleice Silva Pinheiro</p>
                                <p class="texto-sem-enfase">Nº Cadastro 456456</p>
                            </div>
                        </div>
                        <div class="card-meio">
                            <img src="./assets/imagens/icone-informacoes.svg" alt="icone-informações">
                            <p class="texto">Informações Gerais</p>
                        </div>
                        <div class="card-inferior">
                            <div class="inferior-informacao">
                                <p class="texto-sem-enfase">Data de cadastro</p>
                                <p class="texto-sem-enfase">18/04/2000</p>
                            </div>
                            <div class="inferior-informacao">
                                <p class="texto-sem-enfase">CTPS</p>
                                <p class="texto-sem-enfase">123.456.789-10</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-entidade">
                        <div class="card-superior">
                            <div class="entidade-imagem">
                                <img src="./assets/imagens/perfil-exemplo.jpg" alt="foto-de-perfil">
                            </div>
                            <div class="entidade-informacao">
                                <p class="texto">Gleice Silva Pinheiro</p>
                                <p class="texto-sem-enfase">Nº Cadastro 456456</p>
                            </div>
                        </div>
                        <div class="card-meio">
                            <img src="./assets/imagens/icone-informacoes.svg" alt="icone-informações">
                            <p class="texto">Informações Gerais</p>
                        </div>
                        <div class="card-inferior">
                            <div class="inferior-informacao">
                                <p class="texto-sem-enfase">Data de cadastro</p>
                                <p class="texto-sem-enfase">18/04/2000</p>
                            </div>
                            <div class="inferior-informacao">
                                <p class="texto-sem-enfase">CTPS</p>
                                <p class="texto-sem-enfase">123.456.789-10</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ver-tudo">
                <button href="./especialidades.jsp" class="botao-quadrado-p texto-enfase"> Ver todas <img src="./assets/imagens/icone-seta.svg" alt="icone-seta"></button>
            </div>
        </section>
    </main>
    <footer>
        <div class="template-grid" id="rodape-links">
            <div class="rodape-mediconnect">
                <p class="texto">MediConnect</p>
                <a href="../sobre-nos.jsp" class="texto-sem-enfase texto-claro">Sobre nós</a>
                <a href="./inicial.jsp" class="texto-sem-enfase texto-claro">Página inicial</a>
            </div>
            <div class="rodape-contato">
                <p class="texto">Atendimento</p>
                <a href="#" class="texto-sem-enfase texto-claro">Contato</a>
                <a href="#" class="texto-sem-enfase texto-claro">Termos de Uso</a>
            </div>
            <div class="rodape-social">
                <p class="texto">Redes Sociais</p>
                <div class="social-whatsapp">
                    <img src="./assets/imagens/logo-whatsapp.svg">
                    <a href="#" class="texto-sem-enfase texto-claro">WhatsApp</a>
                </div>
                <div class="social-github">
                    <img src="./assets/imagens/logo-github.svg">
                    <a href="#" class="texto-sem-enfase texto-claro">GitHub</a>
                </div>
                <div class="social-instagram">
                    <img src="./assets/imagens/logo-instagram.svg">
                    <a href="#" class="texto-sem-enfase texto-claro">Instagram</a>
                </div>
            </div>
        </div>
        <div class="template-grid" id="rodape-comercial">
            <hr><br>
            <div class="comercial-conteudo">
                <img src="./assets/imagens/logo-rodape.svg" alt="logo-mediconnect">
                <p class="texto-pequeno">2023 &copy Todos os direitos reservados</p>
            </div>
        </div>
    </footer>
</body>
</html>