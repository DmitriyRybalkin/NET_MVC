using System;
using System.Data;
using System.Web.Mvc;
using UlpoadingData.Web.Models;
using System.Web.Script.Serialization;
using System.Collections.Generic;

namespace UlpoadingData.Web.Controllers
{
    public class IndexController : Controller
	{
		public ActionResult EntryPoint()
		{
			WelcomeModel welcomeModel = new WelcomeModel();

			try
            {


				/*---------------------- TODO PART START ----------------------*/


                welcomeModel.isHome = true;

				/*---------------------- TODO PART END ------------------------*/
			}
			catch (Exception ex)
			{

			}
			finally
			{

			}

			return View(welcomeModel);
		}
	}
}
