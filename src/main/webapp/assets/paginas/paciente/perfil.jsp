<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-br">

<head>
    <title>Perfil | MediConnect</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../../imagens/favicon.ico">
    <link rel="stylesheet" type="text/css" href="../../styles/padroes.css">
</head>

<body>
    <header id="content-header" class="template-grid">
        <nav class="nav-bar">
            <img src="../../imagens/icone-menu.svg" alt="icone-menu">
            <img src="../../imagens/logo.svg" alt="logo-mediconnect">
        </nav>
    </header>
    <main>
        <section id="section-home" class="template-grid">
            <div id="profile">
                <div id="profile-presentation">
                    <div class="profile-photo">
                        <img src="../../imagens/icone-camera.svg" alt="icone-camera"> <!--Icone deve ser azul-->
                    </div>
                    <div class="profile-edit">
                        <button class="btn-square-me text">Editar Perfil <img src="../../imagens/icone-editar.svg"
                                alt="icone-editar"></button>
                        <a href="./deslogar" class="btn-square-me text">Deslogar</a>
                    </div>
                </div>
                <div id="profile-information"> <!-- Posição grid, flex space-between, fundo azul, color(text) branca -->
                    <div class="image-portion">
                        <img class="patient-icon" src="../../imagens/icone-paciente.svg" alt="icone-paciente">
                        <img  width="100px" height="100px"  src="<c:url   value="/uploadImage/${usuario.fotoPerfil}.png" />">
                    </div>
                    <div class="description-portion">
                        <h1 class="subtitle"><c:out value="${paciente.nome}"/> <c:out value="${paciente.sobrenome}"/></h1>
                        <p class="text"><c:out value="${paciente.email}" /></p>
                    </div>
                    <div>
                        <div>
                            <div></div><!--esta belissima div é para ser o nosso querido e amado bolinh verde-->
                            <img src="../../imagens/icone-selo-assiduo.svg" alt="icone-assiduo">
                            <p class="text-small">colocar selo assíduo</p>
                        </div>
                        <div>
                            <div></div>
                            <img src="../../imagens/icone-selo-pontual.svg" alt="icone-pontual">
                            <!--Socorro pq isso ta quebrado?-->
                            <p class="text-small">colocar selo pontual</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<section>
            <h2 class="title">Conquistas completas</h2>

            <c:forEach var="conquista" items="${conquistas}">
                <div><!--agrupamento-->
                    <input type="hidden" value="<c:out value='${conquista.id}'/>" />
                    <div><!--caixa-->
                        <div><!--icone-->
                            <img src="../../imagens/icone-<c:out value='${conquista.titulo}' />.svg" alt="icone-<c:out value='${conquista.titulo}' />">
                    </div>
                    <div><!--texto-->
                        <h2 class="subtitle"><c:out value='${conquista.titulo}' /></h2>
                        <p class="text-no-emphasis"><c:out value='${conquista.descricao}' /></p>
                    </div>
                    <div><!--nível-->
                        <div>
                            <p class="text-emphasis"><c:out value='${paciente-conquista.nível}' /></p>
                        </div>
                        <div>
                            <p class="text-emphasis">--/--</p>
                        </div>
                    </div>
                </div>
                <input type="range">
            </c:forEach>

        </section>

        <section>
            <h1 class="subtitle">Consultas Próximas</h1>

            <div><!--agrupa todos os card-->

                <c:forEach var="consulta" items="${consultas}">
                <div><!--caixa inteira-->

                    <div><!--header da caixa-->

                        <div></div><!--aquelas duas coisinhas brancas-->
                        <div></div>

                        <div>
                            <p class="text-emphasis">Consulta - <c:out value="${consulta.id}" /></p>
                            <p class="text-emphasis"><c:out value='${consulta.status}' /></p>
                        </div>

                    </div>

                    <div><!--conteúdo da caixa-->

                        <div>
                            <div>
                                <div>
                                    <p class="text-emphasis"><c:out value='${consulta.data}' /></p>
                                </div>
                                <div>
                                    <p class="text emphasis"><c:out value='${consulta.horario}' /></p>
                                </div>
                            </div>

                            <div>
                                <p class="text-no-emphasis"><c:out value='${consulta.descricao}' /><span
                                        class="text-emphasis">...ver mais</span></p>
                            </div>

                            <div>
                                <p class="text">Editar consulta</p>
                                <img src="../../imagens/icone-editar.svg" alt="icone-editar">
                            </div>

                        </div>
                    </div>

                </div>
                </c:forEach>
            </div>
            <a href="./consultas" class="btn-square-sm text">Ver todas <img src="../../imagens/icone-seta.svg"></a>
        </section>


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
                    <img src="assets/imagens/logo-whatsapp.svg">
                    <a href="#" class="text-no-emphasis link-light">WhatsApp</a>
                </div>
                <div class="social-github">
                    <img src="../../imagens/logo-github.svg">
                    <a href="#" class="text-no-emphasis link-light">GitHub</a>
                </div>
                <div class="social-instagram">
                    <img src="../../imagens/logo-instagram.svg">
                    <a href="#" class="text-no-emphasis link-light">Instagram</a>
                </div>
            </div>
        </div>
        <div class="template-grid" id="footer-commercial">
            <hr><br>
            <div class="commercial-content">
                <img src="../../imagens/logo-rodape.svg" alt="logo-mediconnect">
                <p class="text-small">2023 &copy Todos os direitos reservados</p>
            </div>
        </div>
    </footer>


</body>

</html>