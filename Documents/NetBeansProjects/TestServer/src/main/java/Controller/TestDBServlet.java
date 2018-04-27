/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientOptions;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bson.Document;

/**
 *
 * @author Dell64
 */
public class TestDBServlet extends HttpServlet {



    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TestDBServlet</title>");
            out.println("</head>");
            out.println("<body>");

         MongoClient mongo = new MongoClient("1ocalhost", 27017);
    
   
            System.out.println("Connected to the database successfully");
            MongoDatabase database = mongo.getDatabase("test");

            // Retrieving a collection
            MongoCollection<Document> collection = database.getCollection("tamagod");
            System.out.println("Collection sampleCollection selected successfully");

            Document document = new Document("title", "16/4/2561")
                    .append("id", 075)
                    .append("name", "somsakda")
                    .append("surname", "chankrachang")
                    .append("url", "http://www.tutorialspoint.com/mongodb/")
                    .append("by", "tutorials point")
                    .append("school", "KMUTT");
            collection.insertOne(document);
            System.out.println("Document inserted successfully");
//      // Creating Credentials 
//            MongoCredential credential;
//            credential = MongoCredential.createCredential("admin", "test", "admin".toCharArray());
//            out.println("mechanism: "+ credential.getMechanism());
//
//            // Accessing the database 
//            MongoDatabase database = mongo.getDatabase("test");
// 
//            System.out.println("DB name: "+ database.getName());
            //Creating a collection 
            //database.createCollection("sampleCollection");
            //out.println("Collection created successfully");

            out.println("</body>");
            out.println("</html>");
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
