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
import org.bson.codecs.DateCodec;
import static org.bson.codecs.configuration.CodecRegistries.fromProviders;
import static org.bson.codecs.configuration.CodecRegistries.fromRegistries;
/**
 *
 * @author User
 */
public class Reservations {
    private ObjectId id;
    private String travellerIdName;
    private Object homestay;
    private DateCodec date;
    private String checkInTime;
    private String checkOutTime;
    private String status;
    
    public Reservations () {
        
    }

    public Reservations(ObjectId id, String travellerIdName, Object homestay, DateCodec date, String checkInTime, String checkOutTime, String status) {
        this.id = id;
        this.travellerIdName = travellerIdName;
        this.homestay = homestay;
        this.date = date;
        this.checkInTime = checkInTime;
        this.checkOutTime = checkOutTime;
        this.status = status;
    }

    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }

    public String getTravellerIdName() {
        return travellerIdName;
    }

    public void setTravellerIdName(String travellerIdName) {
        this.travellerIdName = travellerIdName;
    }

    public Object getHomestay() {
        return homestay;
    }

    public void setHomestay(Object homestay) {
        this.homestay = homestay;
    }

    public DateCodec getDate() {
        return date;
    }

    public void setDate(DateCodec date) {
        this.date = date;
    }

    public String getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(String checkInTime) {
        this.checkInTime = checkInTime;
    }

    public String getCheckOutTime() {
        return checkOutTime;
    }

    public void setCheckOutTime(String checkOutTime) {
        this.checkOutTime = checkOutTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
    
}
