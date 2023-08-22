using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP07_Bottarini_Piva.Models;

namespace TP07_Bottarini_Piva.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }

    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        ViewBag.Categorias = Juego.ObtenerCategorias();
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        return View();
    }

    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);
        if(BD.ObtenerPreguntas(dificultad, categoria) != null)
        {
            return View("Jugar");
        }
        return View("ConfigurarJuego");
    }

    public IActionResult Jugar()
    {
        Preguntas proxpregunta = Juego.ObtenerProximaPregunta();
        ViewBag.proximaPregunta = proxpregunta;
        List<Respuestas> proximasRespuestas = Juego.ObtenerProximasRespuestas(proxpregunta.IdPregunta);
        ViewBag.proximaRespuestas = proximasRespuestas;

        if(Juego.ObtenerProximaPregunta() == null)
        {
            return View("Fin");
        }
        return View("Juego");
    }

    [HttpPost] public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        ViewBag.Correcta = Juego.VerificarRespuesta(idPregunta, idRespuesta);
        return View("Respuesta");
    }

    public IActionResult Fin()
    {
        return View();
    }
}
