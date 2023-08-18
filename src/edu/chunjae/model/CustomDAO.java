package edu.chunjae.model;

import edu.chunjae.dto.Custom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<Custom> getCustomList(){
        List<Custom> cusList = new ArrayList<>();

        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.CUSTOM_SELECT_ALL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Custom cuslist = new Custom();
                
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return cusList;
    }

    public Custom getCustom(String id){
        Custom cus = new Custom();

        return cus;
    }

    public boolean login(String id, String pw){
        boolean pass = false;

        return pass;
    }


}
