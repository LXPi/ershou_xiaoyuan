package com.xiaoping.beans;

import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.util.Date;

public class Queryshangping {
    private int ids;
    private String name;
    private String producedname;
    private int address;
    private Date date;
    private int price;
    private String describe;
    private int zhonglei;
    private Blob inputStream1;
    private Blob inputStream2;
    private Blob inputStream3;
    private Blob inputStream4;
    private Blob inputStream5;

    public int getIds() {
        return ids;
    }

    public void setIds(int ids) {
        this.ids = ids;
    }

    public int getZhonglei() {
        return zhonglei;
    }

    public void setZhonglei(int zhonglei) {
        this.zhonglei = zhonglei;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProducedname() {
        return producedname;
    }

    public void setProducedname(String producedname) {
        this.producedname = producedname;
    }

    public int getAddress() {
        return address;
    }

    public void setAddress(int address) {
        this.address = address;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Blob getInputStream1() {
        return inputStream1;
    }

    public void setInputStream1(Blob inputStream1) {
        this.inputStream1 = inputStream1;
    }

    public Blob getInputStream2() {
        return inputStream2;
    }

    public void setInputStream2(Blob inputStream2) {
        this.inputStream2 = inputStream2;
    }

    public Blob getInputStream3() {
        return inputStream3;
    }

    public void setInputStream3(Blob inputStream3) {
        this.inputStream3 = inputStream3;
    }

    public Blob getInputStream4() {
        return inputStream4;
    }

    public void setInputStream4(Blob inputStream4) {
        this.inputStream4 = inputStream4;
    }

    public Blob getInputStream5() {
        return inputStream5;
    }

    public void setInputStream5(Blob inputStream5) {
        this.inputStream5 = inputStream5;
    }
}