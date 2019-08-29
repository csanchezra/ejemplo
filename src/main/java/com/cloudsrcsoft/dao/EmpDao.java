package com.cloudsrcsoft.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cloudsrcsoft.beans.Emp;

public class EmpDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Emp p) {
		/*
		System.out.println(p.getNombre());
		System.out.println(p.getApell1());
		System.out.println(p.getApell2());*/
		String sql = "insert into alumnos(nombre,apell1,apell2) values('" + p.getNombre() + "','" + p.getApell1() + "','" + p.getApell2() + "')";
		return template.update(sql);
	}

	public int update(Emp p) {
		String sql = "update alumnos set nombre='" + p.getNombre() + "', apell1='" + p.getApell1() + "', apell2='"+ p.getApell2() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from alumnos where id=" + id + "";
		return template.update(sql);
	}

	public Emp getEmpById(int id) {
		String sql = "select * from alumnos where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));
	}

	public List<Emp> getEmployees() {
		return template.query("select * from alumnos", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {
				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setNombre(rs.getString(2));
				e.setApell1(rs.getString(3));
				e.setApell2(rs.getString(4));
				//System.out.println(e);
				return e;
			}
		});
	}
}
