using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UlpoadingData.Web.Models.Base;

namespace UlpoadingData.Web.Models
{
    public class UploadingDataModel : BaseModel
    {
        public String Rnn { get; set; }

        public DataTable LoadPrimary { get; set; }

        public DataTable LoadDaily { get; set; }

        public String FileName { get; set; }


    }
}