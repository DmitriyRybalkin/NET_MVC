using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UlpoadingData.Web.Models;
using System.Data;

namespace UlpoadingData.Web.Controllers
{
    public class LogoutController : Controller
    {
        public ActionResult EntryPoint()
        {

            WelcomeModel welcomeModel = new WelcomeModel();


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
