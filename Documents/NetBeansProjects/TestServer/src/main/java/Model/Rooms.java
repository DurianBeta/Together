/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author User
 */
public class Rooms {
    private String RoomId;
    private String detail;
    private String HomestayName;

    public Rooms(String RoomId, String detail, String HomestayName) {
        this.RoomId = RoomId;
        this.detail = detail;
        this.HomestayName = HomestayName;
    }

    public String getRoomId() {
        return RoomId;
    }

    public void setRoomId(String RoomId) {
        this.RoomId = RoomId;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getHomestayName() {
        return HomestayName;
    }

    public void setHomestayName(String HomestayName) {
        this.HomestayName = HomestayName;
    }
    
    
}
