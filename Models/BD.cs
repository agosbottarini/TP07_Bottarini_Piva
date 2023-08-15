using System.Data.SqlClient;
using Dapper;
public static class BD
{
    public static string _connectionString = @"localhost";
    public static List<Categorias> ObtenerCategorias()
    {
        List<Categorias> ListaCategoria = new List<ListaCategoria>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Categoria";
            ListaCategoria = db.Query<Partido>(sql).ToList();
        }
        return ListaCategoria;
    }
    public static List<Dificultades> ObtenerDificultades()
    {
        List<Dificultades> ListaDificultades = new List<Dificultades>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Dificultades";
            ListaDificultades = db.Query<Dificultades>(sql).ToList();
        }
        return ListaDificultades;
    }
    public static List<Preguntas> ObtenerPreguntas(int dificultad, int categoria)()
    {
        string sql = "SELECT * FROM Preguntas";
        List<Pregunta> ListaPreguntas = new List<Pregunta>();
        DynamicParameters parametros = new DynamicParameters();
        
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            if(dificultad != -1)
            {
                sql += "WHERE IdDificultad = @dificultad";
                parametros.Add("@dificultad ", IdDificultad)
            }
            if(categoria != -1)
            {
                if(dificultad!= -1) sql += "AND"
                else "WHERE"

                sql += "IdCategoria = @categoria";
                parametros.Add("@categoria", IdCategoria)  
            }
            ListaPreguntas = db.Query<Pregunta>(sql, parametros).ToList();
        }
    }
    public static List<Respuestas> ObtenerRespuestas(List<Preguntas> preguntas)
    {
        List<Respuestas> ListaRespuestas = new List<Respuestas>();
        foreach(Pregunta value in Preguntas.IdPregunta)
        {
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "SELECT * FROM Respuestas WHERE IdPregunta = @value.IdPregunta"
                ListaRespuestas = db.Query<Respuestas>(sql, new {IdPregunta = value.IdPregunta})
            }
        }
    }


}   