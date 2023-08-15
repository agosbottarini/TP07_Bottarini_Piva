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
        if(Juego.ObtenerPreguntas() != null)
        {
            return View("Jugar");
        }
        return View("ConfigurarJuego");
    }

    public IActionResult Jugar()
    {
        ViewBag.Preguntas = Juego.ObtenerProximaPregunta();
        ViewBag.Respuestas = Juego ObtenerProximasRespuestas();

        if(Ob) 
    }
}
