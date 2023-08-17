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
        ViewBag.Preguntas = Juego.ObtenerProximaPregunta();
        
        if(Juego.ObtenerProximaPregunta() == null)
        {
            return View("Fin");
        }
        ViewBag.Respuestas = Juego.ObtenerProximasRespuestas();
        return View("Juego");
    }

    [HttpPost] public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        
    }
}
