using System.Data.SqlClient;
using Dapper;
public static class BD
{
    public static List<Categoria> ObtenerCategorias()
    {
        List<Categoria> ListaCategoria = new List<ListaCategoria>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Categoria";
            ListaCategoria = db.Query<Partido>(sql).ToList();
        }
        return ListaCategoria;
    }
    public static List<Dificultades> ObtenerDificultades()
    {
        List<Dificultades> ListaDificultades = new List<ListaDificultades>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Dificultades";
            ListaDificultades = db.Query<Dificultades>(sql).ToList();
        }
        return ListaDificultades;
    }
    public static List<Pregunta> ObtenerPreguntas(int dificultad, int categoria)()
    {
        if(dificultad != -1)
        {
            ObtenerDificultades();
        }
        
    }


}   