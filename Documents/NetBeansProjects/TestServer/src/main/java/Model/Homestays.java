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
public class Homestays {
    private ObjectId id;
    private String name;
    private String coordinates;
    private String address;
    private String postcost;
    private String detail;
    private Object activityPricing;
    private Object[] room; 
    private Object[] buildings;
    private Object ownerDetail;
    private Object souviner;
    private Object contact;
    private Object[] history;
    
    public Homestays() {
        
    }

    public Homestays(ObjectId id, String name, String coordinates, String address, String postcost, String detail, Object activityPricing, Object[] room, Object[] buildings, Object ownerDetail, Object souviner, Object contact, Object[] history) {
        this.id = id;
        this.name = name;
        this.coordinates = coordinates;
        this.address = address;
        this.postcost = postcost;
        this.detail = detail;
        this.activityPricing = activityPricing;
        this.room = room;
        this.buildings = buildings;
        this.ownerDetail = ownerDetail;
        this.souviner = souviner;
        this.contact = contact;
        this.history = history;
    }

    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(String coordinates) {
        this.coordinates = coordinates;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostcost() {
        return postcost;
    }

    public void setPostcost(String postcost) {
        this.postcost = postcost;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Object getActivityPricing() {
        return activityPricing;
    }

    public void setActivityPricing(Object activityPricing) {
        this.activityPricing = activityPricing;
    }

    public Object[] getRoom() {
        return room;
    }

    public void setRoom(Object[] room) {
        this.room = room;
    }

    public Object[] getBuildings() {
        return buildings;
    }

    public void setBuildings(Object[] buildings) {
        this.buildings = buildings;
    }

    public Object getOwnerDetail() {
        return ownerDetail;
    }

    public void setOwnerDetail(Object ownerDetail) {
        this.ownerDetail = ownerDetail;
    }

    public Object getSouviner() {
        return souviner;
    }

    public void setSouviner(Object souviner) {
        this.souviner = souviner;
    }

    public Object getContact() {
        return contact;
    }

    public void setContact(Object contact) {
        this.contact = contact;
    }

    public Object[] getHistory() {
        return history;
    }

    public void setHistory(Object[] history) {
        this.history = history;
    }
    
    
}
