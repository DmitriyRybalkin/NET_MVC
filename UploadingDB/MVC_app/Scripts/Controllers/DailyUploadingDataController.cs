using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UlpoadingData.Web.Models;
using BusinessLayer.UploadingData;

namespace HSBC.KZ.Reunion.Web.Controllers
{
    public class DailyUploadingDataController : Controller
    {
        //
        // GET: /DailyUploadingData/

        /// <summary>
        /// Page 1
        /// </summary>
        /// <returns></returns>
        public ActionResult EntryPoint()
        {
            UploadingDataModel model = new UploadingDataModel();
            BusinessObjects businessObjects = new BusinessObjects();

            try
            {
                model.FileName = businessObjects.GetDailyFileName();

                model.isHome = true;
            }
            catch (Exception)
            {
                model.ErrorDescription = businessObjects.ErrorDescription;
            }

            return View(model);
        }

        /// <summary>
        /// Page 1 - Post
        /// </summary>
        /// <param name="model"></param>
        /// <param name="command"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EntryPoint(UploadingDataModel model, String command)
        {

            BusinessObjects businessObjects = new BusinessObjects();

            try
            {
                switch (command)
                {
                    case "btnDisplay":
                        {
                            model.LoadDaily = businessObjects.GetDailyLoadRecords(model.Rnn);

                            break;
                        }
                    case "btnUpload":
                        {
                            businessObjects.LoadDailyFile();

                            model.LoadDaily = businessObjects.GetDailyLoadRecords(model.Rnn);

                            if (String.IsNullOrEmpty(businessObjects.ErrorDescription))
                                model.ErrorDescription = "Data uploading procedure has been successfully executed";
                            else
                                model.ErrorDescription = businessObjects.ErrorDescription;

                            break;
                        }

                    default: break;

                }

                model.isHome = true;
            }
            catch (Exception)
            {
                model.ErrorDescription = businessObjects.ErrorDescription;
            }

            return View(model);
        }

       
    }
}
