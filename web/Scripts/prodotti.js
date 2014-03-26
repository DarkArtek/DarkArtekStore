/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
    
    $(".acquista").click(function(e){
     debugger;
     var prodotto_id =
             $(e.target)
             .parent()
             .attr("data-prodotto-id");
     
     
     $.ajax({
         
         
     }
    });
   
    $.getJSON(
            'ProdottiSQL'
            , function(result){
                
                var tabella_prodotti = $("#prodotti > tbody");
                
                $(result).each(function(i, item){
                    var tr_html = 
                            "<tr>"
                            + "<td>" + item.descrizione + "</td>"
                            + "<td>" + item.prezzo + "</td>"
                            + "<td>" + item.scheda + "</td>"
                            + "<td>" + "<a href='Basket.jsp?OrderId=" + 1 + item.prodotto_id + "'>Acquista</a>" + "</td>"
                            + "</tr>";
                    tabella_prodotti.append(tr_html);
                });
            }
    );
});}

