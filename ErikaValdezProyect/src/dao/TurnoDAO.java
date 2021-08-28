package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import modelo.Turno;



public class TurnoDAO {

	public Boolean guardarTurno(Turno turno) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			
			String sql = new String();
			sql = "INSERT INTO turnos "
					+ "(`idTurno`,`nombre`, `apellido`, `usuario`, `mail`, `domicilio`, `localidad`, `provincia`, `codpostal`, `formadepago`, `tarjtitular`, `tarjnumero`, `tarjvto`, `tarjclave`) "
					+ "VALUES ("
					+ "'"+turno.getIdTurno()+ "',"
					+ "'"+turno.getNombre() + "'," 
					+ "'" +turno.getApellido() + "',"
					+ "'" +turno.getUsuario() + "',"
					+ "'" + turno.getMail() + "',"
					+ "'" + turno.getDomicilio() + "',"				
					+ turno.getLocalidad() + "," 
					+ turno.getProvincia() + ","
					+ "'" + turno.getCodPostal() + "',"
					+ "'" + turno.getFormaDePago() + "',"
					+ "'" +turno.getTarjTitular() + "',"				
					+ turno.getTarjNumero() + "," 
					+ "'" + turno.getTarjVto() + "',"
					+ turno.getTarjClave() + ")";
			System.out.println(sql);
			statement.executeUpdate(sql);
			
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public List<Turno>  listarTurnos() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			
			String sql = new String("SELECT * FROM turnos");
			ResultSet resultSet = statement.executeQuery(sql);
			List<Turno> listTurnos = new ArrayList<Turno>();
			while (resultSet.next()) {
				Turno turno = new Turno(
						resultSet.getInt("idTurno"),
						resultSet.getString("nombre"),
						resultSet.getString("apellido"),
						resultSet.getString("usuario"),
						resultSet.getString("mail"),
						resultSet.getString("domicilio"),
						resultSet.getInt("localidad"),
						resultSet.getInt("provincia"),						
						resultSet.getString("codpostal"),
						resultSet.getString("formadepago"),
						resultSet.getString("tarjtitular"),
						resultSet.getInt("tarjnumero"),						
						resultSet.getString("tarjvto"),
						resultSet.getInt("tarjclave"));
				
				listTurnos.add(turno);
			}
			 
			return listTurnos;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
		
	}
	/*

	//  Manejo de excepciones
	//  @throws SQLException
	 
	public void modificarPedidos() throws SQLException {
		String modi = new String(); BUSCANDO...
		this.listarTurnos();
	}
	
		*/
		

	}
	

