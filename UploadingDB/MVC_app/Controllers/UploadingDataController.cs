using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UlpoadingData.Web.Models;
using BusinessLayer.UploadingData;

namespace UlpoadingData.Web.Controllers
{
    public class UploadingDataController : Controller
    {
        //
        // GET: /UploadingData Primary Data/

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

                model.FileName = businessObjects.GetPrimaryFileName();

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
                            model.LoadPrimary = businessObjects.GetPrimaryLoadRecords(model.Rnn);

                            break;
                        }
                    case "btnUpload":
                        {
                            businessObjects.LoadPrimaryFile();

                            model.LoadPrimary = businessObjects.GetPrimaryLoadRecords(model.Rnn);

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
