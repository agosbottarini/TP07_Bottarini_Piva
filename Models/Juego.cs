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
        _preguntas = BD.ObtenerPreguntas(dificultad, categoria);
        _respuestas = BD.ObtenerRespuestas(_preguntas);
    }

    public static Preguntas ObtenerProximaPregunta()
    {
        Pregunta preguntaProx;
        preguntaProx = _preguntas[0]
    }

    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta)
    {
        List<Respuestas> ListaRespuestas = new  List<Respuestas>();
        foreach(Respuesta value in _preguntas)
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
        foreach(Respuesta item in _respuestas)
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
