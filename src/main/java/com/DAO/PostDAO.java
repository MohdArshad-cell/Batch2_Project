package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.Post;

public class PostDAO {
	private Connection conn;

	public PostDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean AddNotes(String ti, String co, int ui) {

		boolean f = false;
		try {
			String query = "insert into post(title,content,uid) values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, ui);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

//Start Code To get all post from data Table
	public List<Post> getData(int id) {
		List<Post> list = new ArrayList<Post>();
		Post po = null;
		try {
			String query = "Select * from post where uid=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new Post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getTimestamp(4));

				list.add(po);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	// End Code To get all post from data Table

	// Code Start To delete post using suerid

	public boolean deleteNotes(int nid) {
		boolean f = false;
		try {
			String query = "delete from post where id=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, nid);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	// Code End to delete post

	public Post getDataById(int noteid) {
		Post p = null;
		try {
			Connection conn = this.conn;
			String query = "select *  from post where id=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, noteid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				p = new Post();
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContent(rs.getString(3));
				p.setPdate(rs.getTimestamp("pdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	public boolean UpdateNotes(int nid, String ti, String con) {
		boolean f = false;
		try {

			String query = "update post set title=? , content=?  where id=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ti);
			ps.setString(2, con);
			
			ps.setInt(3, nid);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
