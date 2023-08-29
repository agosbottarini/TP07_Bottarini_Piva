using System.Data.SqlClient;
using Dapper;
public static class BD
{
    public static string _connectionString = @"Server=localhost; DataBase=Preguntadort_Bottarini_Piva;Trusted_Connection=True;";
    public static List<Categorias> ObtenerCategorias()
    {
        List<Categorias> ListaCategoria = new List<Categorias>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Categorias";
            ListaCategoria = db.Query<Categorias>(sql).ToList();
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
    public static List<Preguntas> ObtenerPreguntas(int dificultad, int categoria)
    {
        string sql = "SELECT * FROM Preguntas";
        List<Preguntas> ListaPreguntas = new List<Preguntas>();
        DynamicParameters parametros = new DynamicParameters();
        
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            if(dificultad != -1)
            {
                sql += "WHERE IdDificultad = @dificultad";
                parametros.Add("@dificultad ", "IdDificultad");
            }
            if(categoria != -1)
            {
                if(dificultad!= -1) 
                {
                    sql += "AND";
                }
                else
                {
                    sql += "WHERE";
                }

                sql += "IdCategoria = @categoria";
                parametros.Add("@categoria", "IdCategoria");  
            }
            ListaPreguntas = db.Query<Preguntas>(sql, parametros).ToList();
        }
        return ListaPreguntas;
    }

    public static List<Respuestas> ObtenerRespuestas(List<Preguntas> preguntas)
    {
        List<Respuestas> ListaRespuestas = new List<Respuestas>();
        foreach(Preguntas value in preguntas)
        {
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "SELECT * FROM Respuestas WHERE IdPregunta = @value.IdPregunta";
                ListaRespuestas = db.Query<Respuestas>(sql, new {IdPregunta = value.IdPregunta}).ToList();
            }
        }
        return ListaRespuestas;
    }


}   