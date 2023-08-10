using System;
public static class Juego
{
    private static string _username{get;set;}
    private static int _puntajeActual{get;set;}
    private static int _cantidadPreguntasCorrectas{get;set;}
    private static List<Pregunta> _preguntas{get;set;}
    private static List<Respuesta> _respuestas{get;set;}

    public static Juego()
    {

    }

    public static InicializarJuego(List<Pregunta> preguntas, List<Respuesta> respuestas)
    {
        _username = " ";
        _puntajeActual = 0;
        _cantidadPreguntasCorrectas = 0;
        _preguntas = preguntas;
        _respuestas = respuestas;
    }

    public static List<Categoria> ObtenerCategorias()
    {
        List<Categoria> ListaCategoria = new  List<Categoria>();
        return ListaCategoria;
    }

    public static List<Dificultades> ObtenerDificultades()
    {
        List<Dificultades> ListaDificultades = new List<Dificultades>();
        return ListaDificultades;
    }

    public static void CargarPartida(string username, int dificultad, int categoria)
    {
        _preguntas = ObtenerPreguntas();
        _respuestas = ObtenerRespuestas();
    }
    
    
} 
