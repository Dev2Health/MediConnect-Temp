<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Entrar | MediConnect</title>
    <meta name="description" content="Para aproveitar os benefícios do MediConnect faça agora seu login ou crie uma conta em nosso sistema">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="./assets/imagens/favicon.ico">
    <style><%@include file="../estilos/padroes.css"%></style>
    <style><%@include file="../estilos/usuario-login.css"%></style>
</head>
<body>
    <%@include file="../componentes/cabecalhos/voltar.jsp"%>
    <main class="template-grid">
        <div class="conteudo-esquerda">
            <img src="./assets/imagens/ilustracao-login.svg" alt="ilustracao-login" class="ilustracao">
        </div>
        <div class="conteudo-direita">
            <h1 class="titulo-especial">Olá! É bom ter você de volta!</h1>
            <form action="confirmar-login" autocomplete="on" id="formulario">
                <div class="formulario-input">
                    <div class="input-icone">
                        <img src="./assets/imagens/icone-email.svg" alt="icone-email">
                    </div>
                    <div class="input-item">
                        <label for="email" class="texto">E-mail</label>
                        <input class="texto-enfase" type="email" id="email" name="email" placeholder="seu.email@gmail.com" maxlength="100" required>
                    </div>
                    <div class="input-elemento">
                        <img src="./assets/imagens/icone-nao-verificado.svg">
                    </div>
                </div>
                <div class="formulario-input">
                    <div class="input-icone">
                        <img src="./assets/imagens/icone-senha.svg" alt="icone-senha">
                    </div>
                    <div class="input-item">
                        <label for="senha" class="texto">Senha</label>
                        <input class="texto-enfase" type="senha" id="senha" name="senha" placeholder="*********" maxlength="100" required>
                    </div>
                    <div class="input-elemento">
                        <img src="./assets/imagens/icone-olho-fechado.svg" id="botao-senha" onclick="mostrarSenha()">
                    </div>
                </div>
                <div class="formulario-rodape">
                    <button type="submit" class="botao-circular-p texto-enfase texto-claro">Entrar</button>
                    <a href="./esqueceu-sua-senha.html" class="texto-enfase texto-roxo">Esqueceu sua senha?</a>
                </div>
            </form>
        </div>
    </main>
    <script><%@include file="../scripts/usuario-login.js"%></script>
</body>
</html>