/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Artek
 */
import com.google.gson.Gson;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "prodottiSQL", urlPatterns = {"/prodotti.html"})
public class prodottiSQL extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet prodottiSQL</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet prodottiSQL at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
    
    private Connection getConnection() throws SQLException
    {
        try {
            Class
                    .forName("com.microsoft.sqlserver.jdbc.SQLServerDriver")
                    .newInstance();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(prodottiSQL.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(prodottiSQL.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(prodottiSQL.class.getName()).log(Level.SEVERE, null, ex);
        }

        Connection con;
        con = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1;instanceName=SQLSERVER2012;databaseName=LucaAllegrini;user=artek;password=ecommerce;");
        return con;
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ProdottoId = request.getParameter("ProdottoId");
        if (ProdottoId == null)
            doGetAll(request, response);
        else if (ProdottoId.equals(""))
            doGetAll(request, response);
        else
            doGetSingle(ProdottoId, request, response);
    }
    protected void doGetSingle(String contattoId, HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        try {
            Connection con = getConnection();
            
            Statement stmt = con.createStatement();
            ResultSet rs = 
                    stmt.executeQuery(
                    "SELECT prodottoId, Descrizione, Prezzo" 
                    + " FROM dbo.Prodotti" 
                    + " WHERE ProdottoId = " + ProdottoId);
            rs.next();
            
            
            ProdottoViewModel viewModel = new ProdottoViewModel();
            viewModel.prodottoId = rs.getString(1);
            viewModel.descrizione = rs.getString(2);
            viewModel.prezzo = rs.getString(3);
            
            JsonWriter writer = 
                new JsonWriter(response.getWriter());
            Gson gson = new Gson();
            gson.toJson(
                    viewModel
                    , ProdottoViewModel.class
                    , writer
            );
            
            writer.flush();
            
            
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(prodottiSQL.class.getName()).log(Level.SEVERE, null, ex);
        }
              
    }
    protected void doGetAll(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        try {
            PrintWriter writer = response.getWriter();
            
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");
            writer.print("[");
            
            Connection con = getConnection();
            
            Statement stmt =
                    con.createStatement();
            ResultSet rs =
                    stmt.executeQuery("SELECT ProdottoId, Descrizione, Prezzo FROM dbo.Prodotti");
            
            boolean first = true;
            int prodottiIndex = 4; // rs.get
            while (true) {
                if (!rs.next()) break;
                int prodottoId = rs.getInt(1);
                String Descrizione = rs.getString(2);
                String prezzo = rs.getString(3);
    
                // leggi riga
                
                if (first) {
                    first = false;
                } else {
                    writer.println(",");
                }
                
                writer.print("{");
                writer.printf(" \"descrizione\": \"%s\"	", Descrizione);
                writer.printf(", \"prezzo\": \"%s\"	", prezzo);
                writer.print(" }");
            }
            
            // chiudi
            
            con.close();
            
            writer.println("]");
        } catch (SQLException ex) {
            Logger.getLogger(prodottiSQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
