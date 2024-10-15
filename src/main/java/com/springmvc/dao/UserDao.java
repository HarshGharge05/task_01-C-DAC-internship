package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	//======================Users get registered======================
	public int saveUser(User user) {

		String sql = "INSERT INTO userTable(name, email, password) values(?,?,?);";

		int i = jdbcTemplate.update(sql,
					user.getFullName(),
					user.getEmail(),
					user.getPassword() );

		return i;
	}

	//======================User get logged in======================
	public User getUser(User user) {
		String sql = "select *from usertable where email = ? and password = ?";

		RowMapper rowMapper = new RowMapper() {

			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {

				User user = new User();

				user.setEmail(rs.getString(2));
				user.setPassword(rs.getString(3));

				return user;
			}

		};

		user = (User) jdbcTemplate.queryForObject(sql, rowMapper, user.getEmail(), user.getPassword());

		return user;
	}

	//======================getting all users======================
	public List<User> getUsersList() {

		String sql = "SELECT id, name, email FROM usertable";

		System.out.println("Fetching users from DB...");

		List<User> users = jdbcTemplate.query(sql, new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {

				User user = new User();

				user.setId(rs.getInt(1));
				user.setFullName(rs.getString(2));
				user.setEmail(rs.getString(3));



				return user;
			}

		});

		System.out.println("Users  fetched : "+users.size());

		return users;
	}
	
	//========================deleting a user========================
	public void deleteUserById(int id) {

		String sql = "delete from usertable where id=?";
		jdbcTemplate.update(sql, id);
		
	}
	
	//========================getting user for edit========================
	public User getUserById(int id) {
		
		String sql = "select * from usertable where id=?";
		
		return jdbcTemplate.queryForObject(sql, new Object[] {id}, new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				
				user.setId(rs.getInt("id"));
				user.setFullName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				
				System.out.println(user);
				
				return user;
			}

		});
	}
	
	//========================updating user========================
	public int updateUser(User user) {
	    String sql = "UPDATE usertable SET name = ?, email = ? WHERE id = ?";
	    return jdbcTemplate.update(sql, user.getFullName(), user.getEmail(), user.getId());
	}
}
