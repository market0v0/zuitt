package com.zuitt;
import java.sql.*;
public class Main {
    public static void main(String[] args) throws Exception{
        // setting up the connection string and user credentials

        String url = "jdbc:mysql://localhost:3306/jdbc";
        String username = "root";
        String password = "";
 //       String query = "SELECT * FROM artists WHERE id = 1";
        String query = "SELECT * FROM artists";
      //  String query = "INSERT INTO artists (name) VALUES ('joe')";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection = DriverManager.getConnection(url, username, password);
        Statement statement = myConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
    //    int count = statement.executeUpdate(query);
    //    System.out.println(count+ " rows affected");

       // resultSet.next();

/*
        String name = resultSet.getString("name");
        int id = resultSet.getInt("id");

        System.out.println(name);
        System.out.println(id);
*/

      while (resultSet.next()) {
            String name = resultSet.getString("name");
            int id = resultSet.getInt("id");
            System.out.println(name);
            System.out.println(id);
        }
// The connection to the database and the statement must be closed after using.
        statement.close();
        myConnection.close();
    }
}