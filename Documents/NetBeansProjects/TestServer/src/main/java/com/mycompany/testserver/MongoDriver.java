/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.testserver;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoCredential;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.List;
import org.bson.Document;

/**
 *
 * @author Dell64
 */
public class MongoDriver {

    public static void main(String[] args) {
 //Creating a Mongo client 
      MongoClient mongo = new MongoClient( "13.229.125.94" , 27017 ); 
 
//      // Creating Credentials 
      MongoCredential credential; 
      credential = MongoCredential.createCredential("admin", "test", 
         "admin".toCharArray()); 
    System.out.println("Connected to the database successfully");  
      
      // Accessing the database 
      MongoDatabase database = mongo.getDatabase("test"); 
     System.out.println("Credentials ::"+ credential);    
     
          //Creating a collection 
     database.createCollection("sampleCollection"); 
      System.out.println("Collection created successfully"); 
    }
//List<Document> seedData = new ArrayList<Document>();
//
//        seedData.add(new Document("decade", "1970s")
//            .append("artist", "Debby Boone")
//            .append("song", "You Light Up My Life")
//            .append("weeksAtOne", 10)
//        );
//
//        seedData.add(new Document("decade", "1980s")
//            .append("artist", "Olivia Newton-John")
//            .append("song", "Physical")
//            .append("weeksAtOne", 10)
//        );
//
//        seedData.add(new Document("decade", "1990s")
//            .append("artist", "Mariah Carey")
//            .append("song", "One Sweet Day")
//            .append("weeksAtOne", 16)
//        );
//
//        // Standard URI format: mongodb://[dbuser:dbpassword@]host:port/dbname
//       
//        MongoClientURI uri  = new MongoClientURI("mongodb://admin:admin@13.229.125.94:27017/db"); 
//        MongoClient client = new MongoClient(uri);
//        MongoDatabase db = client.getDatabase(uri.getDatabase());
//        
//        /*
//         * First we'll add a few songs. Nothing is required to create the
//         * songs collection; it is created automatically when we insert.
//         */
//        
//        MongoCollection<Document> songs = db.getCollection("test");
//
//        // Note that the insert method can take either an array or a document.
//        
//        songs.insertMany(seedData);
//       
//        /*
//         * Then we need to give Boyz II Men credit for their contribution to
//         * the hit "One Sweet Day".
//         */
//
//        Document updateQuery = new Document("song", "One Sweet Day");
//        songs.updateOne(updateQuery, new Document("$set", new Document("artist", "Mariah Carey ft. Boyz II Men")));
//        
//        /*
//         * Finally we run a query which returns all the hits that spent 10 
//         * or more weeks at number 1.
//         */
//      
//        Document findQuery = new Document("weeksAtOne", new Document("$gte",10));
//        Document orderBy = new Document("decade", 1);
//
//        MongoCursor<Document> cursor = songs.find(findQuery).sort(orderBy).iterator();
//
//        try {
//            while (cursor.hasNext()) {
//                Document doc = cursor.next();
//                System.out.println(
//                    "In the " + doc.get("decade") + ", " + doc.get("song") + 
//                    " by " + doc.get("artist") + " topped the charts for " + 
//                    doc.get("weeksAtOne") + " straight weeks."
//                );
//            }
//        } finally {
//            cursor.close();
//        }
//
//        // Since this is an example, we'll clean up after ourselves.
//
//        songs.drop();
//        
//        // Only close the connection when your app is terminating
//
//        client.close();
    }

    

