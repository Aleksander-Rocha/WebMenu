<%@page import="dao.CategoriaDAO"%>
<%@page import="model.CategoriaModel"%>
<%@page import="dao.ItemDAO"%>
<%@page import="model.ItemModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    CategoriaModel cat = new CategoriaModel();
    CategoriaDAO catdao = new CategoriaDAO();
    ItemDAO itemdao = new ItemDAO();
    List<CategoriaModel> catList = catdao.listarCategorias((Integer) session.getAttribute("user_id"));
%>

<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

        <title>Cardapio Online</title>

        <link rel="stylesheet" href="styles_cardapio/style.css">

    </head>

    <body>
        <header>
            <div class="center-header">
               <!-- <div class="banner" style="background-image: url('plugins/images/users/${est_imagem}');"> -->
                    <div class="banner" style="background-image: url('img_cardapio/NotFound2.png');">
                        
                </div>
                <div class="info">
                    <h1>${est_nome}</h1>
                    <span class="categoria-estabelecimento">${est_tipo}</span>
                    <div class="flex-info">
                        <div class="clock">                          
                            <span>${est_descricao}</span>
                        </div>
                    </div>
                    <a href="#"><i class="fas fa-map-marker-alt"></i>${est_endereco}</a>
                    <div>                   
                        <span class="status"><i class="fas fa-phone-alt"></i>${est_telefone}</span>
                    </div>
                </div>
            </div>

        </header>
        <section class="menu">
            <div class="center-menu">
                <div class="flex-menu">
                    <div class="categorias">
                        <c:forEach items="${categoriaList}" var="i">                         

                            <div class="ul">
                                <a href="#${i.nome}" class="li">${i.nome}</a>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="group-itens">
                        <div class="itens">
                            <h2>Cardápio</h2>   
                            <%for (int i = 0; i < catList.size(); i++) {%>                                                                     
                            <div>
                                <h3><a name="<%=catList.get(i).getNome()%>"></a><%=catList.get(i).getNome()%></h3>
                            </div>
                            <div class="item"> 
                                <%catList.get(i).setEstabelecimento_idestabelecimento((Integer) request.getAttribute("idestabelecimento"));
                                    List<ItemModel> itens = itemdao.listarItem(catList.get(i));
                                    for (int o = 0; o < itens.size(); o++) {%>

                                <div class="flex-item">
                                    <img src="img_cardapio/Talheres.png" alt="">
                                    <div class="item-info">
                                        <h4><%=itens.get(o).getNome()%></h4>
                                        <p><%=itens.get(o).getDescricao()%></p>
                                        <div class="flex-price">
                                            <span><%=itens.get(o).getPreco()%></span>
                                            <a href="#">Adicionar</a>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                            <%}%> 
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://kit.fontawesome.com/5a00ae1813.js" crossorigin="anonymous"></script>
    </body>

</html>