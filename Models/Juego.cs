using System;
public static class Juego
{
    private static string _username{get;set;}
    private static int _puntajeActual{get;set;}
    private static int _cantidadPreguntasCorrectas{get;set;}
    private static List<Preguntas> _preguntas{get;set;}
    private static List<Respuestas> _respuestas{get;set;}

    public static Juego()
    {

    }

    public static InicializarJuego()
    {
        _username = " ";
        _puntajeActual = 0;
        _cantidadPreguntasCorrectas = 0;
        _preguntas = new List<Preguntas>();
        _respuestas = new List<Respuestas>();
    }

    public static List<Categorias> ObtenerCategorias()
    {
        List<Categorias> ListaCategoria = new  List<Categorias>();
        return ListaCategoria;
    }

    public static List<Dificultades> ObtenerDificultades()
    {
        List<Dificultades> ListaDificultades = new List<Dificultades>();
        return ListaDificultades;
    }

    public static void CargarPartida(string username, int dificultad, int categoria)
    {
        _preguntas = BD.ObtenerPreguntas(dificultad, categoria);
        _respuestas = BD.ObtenerRespuestas(_preguntas);
    }

    public static Preguntas ObtenerProximaPregunta()
    {
        Preguntas preguntaProx;
        preguntaProx = _preguntas[0]
    }

    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta)
    {
        List<Respuestas> ListaRespuestas = new  List<Respuestas>();
        foreach(Respuestas value in _preguntas)
        {
            if(value.IdPregunta = idPregunta)
            {
                ListaRespuestas.Add(value.idPregunta);
            }
            
        }
        return ListaRespuestas;
    }

    public static bool VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        bool respuesta = false;
        foreach(Respuestas item in _respuestas)
        {
            if(item.idRespuesta == true)
            {
                respuesta = true;
                _puntajeActual += 5;
                _respuestas.RemoveAt(0)
            }
        }
        return respuesta;
    }

    
    
} 
