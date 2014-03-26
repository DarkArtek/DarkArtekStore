<%-- 
    Document   : prodotto
    Created on : Mar 26, 2014, 3:23:03 PM
    Author     : Artek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <input type="hidden" id="prodotto_id" value="'<%= request.getParameter("ProdottoId") %>' />
            <fieldset>
                <label for="descrizione">Descrizione</label>
                <input type="text" id="descrizione"/>
                <label for="prezzo">Prezzo</label>
                <input type="text" id="prezzo"/>
                <label for="scheda">Scheda</label>
                <a href="" id="scheda">Vai alla scheda</a>
                <label for="quantita">Quantit&agrave;</label>
                <input type="text" id="quantita"/>
            </fieldset>
            <a href="#" id="invia">Compra</a>
        </form>
        <script src='Scripts/jquery-1.11.0.js'></script>
        <script src='Scripts/modifica-contatto.js'></script>
    </body>
</html>
