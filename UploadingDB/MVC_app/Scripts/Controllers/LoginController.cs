using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UlpoadingData.Web.Models;

namespace HSBC.KZ.Reunion.Web.Controllers
{
    public class LoginController : Controller
    {
        
        public ActionResult EntryPoint()
        {
			WelcomeModel model = new WelcomeModel();

			try
			{

				/*---------------------- TODO PART START ----------------------*/
				/*---------------------- TODO PART END ------------------------*/
			}
			catch (Exception ex)
			{
				// TODO: log4net

			}
			finally
			{


			}

            return RedirectToAction("EntryPoint", "Index");
        }

    }
}
