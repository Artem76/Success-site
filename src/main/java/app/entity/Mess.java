package app.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Mess {
    @Id
    @GeneratedValue
    private long id;

    private String nameClient;
    private String emailClient;
    private String phoneClient;

    @Column(length = 10000)
    private String message;

    @Temporal(value = TemporalType.TIMESTAMP)
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm:ss")
    private Date date;

    public Mess() { }

    public Mess(String nameClient, String emailClient, String phoneClient, String message) {
        this.nameClient = nameClient;
        this.emailClient = emailClient;
        this.phoneClient = phoneClient;
        this.message = message;
        this.date = new Date(System.currentTimeMillis());
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getNameClient() {
        return nameClient;
    }

    public void setNameClient(String nameClient) {
        this.nameClient = nameClient;
    }

    public String getEmailClient() {
        return emailClient;
    }

    public void setEmailClient(String emailClient) {
        this.emailClient = emailClient;
    }

    public String getPhoneClient() {
        return phoneClient;
    }

    public void setPhoneClient(String phoneClient) {
        this.phoneClient = phoneClient;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", nameClient='" + nameClient + '\'' +
                ", emailClient='" + emailClient + '\'' +
                ", phoneClient='" + phoneClient + '\'' +
                ", message='" + message + '\'' +
                ", date=" + date +
                '}';
    }
}
