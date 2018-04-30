/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.bson.types.ObjectId;
import com.mongodb.Block;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.result.DeleteResult;
import com.mongodb.client.result.UpdateResult;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.codecs.pojo.PojoCodecProvider;

import java.util.List;

import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Updates.*;
import static java.util.Arrays.asList;
import static org.bson.codecs.configuration.CodecRegistries.fromProviders;
import static org.bson.codecs.configuration.CodecRegistries.fromRegistries;
/**
 *
 * @author User
 */
public class HomestayOwners {
    private ObjectId id;
    private String ownerIdName;
    private String name;
    private String lastName;
    private String password;
    private Object contact;
    private Object homestay;
    
    public HomestayOwners() {
        
    }

    public HomestayOwners(ObjectId _id, String ownerIdName, String name, String lastName, String password, Object contact, Object homestay) {
        this.id = id;
        this.ownerIdName = ownerIdName;
        this.name = name;
        this.lastName = lastName;
        this.password = password;
        this.contact = contact;
        this.homestay = homestay;
    }

    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }

    public String getOwnerIdName() {
        return ownerIdName;
    }

    public void setOwnerIdName(String ownerIdName) {
        this.ownerIdName = ownerIdName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Object getContact() {
        return contact;
    }

    public void setContact(Object contact) {
        this.contact = contact;
    }

    public Object getHomestay() {
        return homestay;
    }

    public void setHomestay(Object homestay) {
        this.homestay = homestay;
    }
    
    
}
