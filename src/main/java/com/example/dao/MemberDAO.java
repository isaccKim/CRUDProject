package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.util.*;
import com.example.vo.*;

public class MemberDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String M_INSERT = "insert into member (userid ,password ,username, email,photo, detail)" + "values(?,sha1(?),?,?,?,?)";
    private final String M_UPDATE = "update member set username=?,photo=?, email=?, detail=? where sid=?";
    private final String M_DELETE = "delete from member  where sid=?";
    private final String M_LIST = "select * from member order by sid desc";
    private final	String M_SELECT = "select  * from member where sid =?";

    public int insertMember(MemberVO data) {

        System.out.println("===> JDBC로 insertMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_INSERT);
            stmt.setString(1, data.getUserid());
            stmt.setString(2, data.getPassword());
            stmt.setString(3, data.getUsername());
            stmt.setString(4, data.getEmail());
            stmt.setString(5, data.getPhoto());
            stmt.setString(6, data.getDetail());
            stmt.executeUpdate();
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void deleteMember(int sid) {
        System.out.println("===> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_DELETE);
            stmt.setInt(1, sid);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int updateMember(MemberVO data) {
        System.out.println("===> JDBC로 updatetMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_UPDATE);
            stmt.setString(1, data.getUsername());
            stmt.setString(2, data.getPhoto());
            stmt.setString(3, data.getEmail());
            stmt.setString(4, data.getDetail());
            stmt.setInt(5, data.getSid());
            stmt.executeUpdate();
            System.out.println(data.getUsername()+data.getEmail());
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public ArrayList<MemberVO> getList(){
        ArrayList<MemberVO> list = null;
        conn = JDBCUtil.getConnection();
        try {
            stmt = conn.prepareStatement(M_LIST);
            rs = stmt.executeQuery();
            list = new ArrayList<MemberVO>();
            while(rs.next()) {
                MemberVO one = new MemberVO();
                one.setSid(rs.getInt("sid"));
                one.setUserid(rs.getString("userid"));
                one.setPhoto(rs.getString("photo"));
                one.setUsername(rs.getString("username"));
                one.setEmail(rs.getString("email"));
                one.setRegdate(rs.getDate("regdate"));
                one.setDetail(rs.getString("detail"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public MemberVO getOne(int sid) {
        MemberVO one = new MemberVO();
        conn = JDBCUtil.getConnection();
        try {
            stmt = conn.prepareStatement(M_SELECT);
            stmt.setInt(1, sid);
            rs = stmt.executeQuery();
            if (rs.next()) {
                one.setSid(rs.getInt("sid"));
                one.setUserid(rs.getString("userid"));
                one.setPhoto(rs.getString("photo"));
                one.setUsername(rs.getString("username"));
                one.setEmail(rs.getString("email"));
                one.setRegdate(rs.getDate("regdate"));
                one.setDetail(rs.getString("detail"));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return one;
    }

    public String getPhotoFilename(int sid){
        String filename = null;
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_SELECT);
            stmt.setInt(1,sid);
            rs = stmt.executeQuery();
            if(rs.next()){
                filename = rs.getString("photo");
            }
            rs.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("===> JDBC로 getPhtoFilename() 기능 처리");
        return  filename;
    }
}
