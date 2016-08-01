using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Routing;
using System.Xml.Serialization;

namespace UlpoadingData.Web.Models.Base
{
	public class BaseModel
	{
        [XmlIgnore]
        private Boolean _isHome = false;
        [XmlIgnore]
        private Boolean _isAdmin = false;
        [XmlIgnore]
        private Boolean _isLoan = false;

		[XmlIgnore]
		public String PageHeader { get; set; }
        public Boolean isHome { get { return _isHome; } set { _isHome = value;} }
        public Boolean isAdminSelected { get { return _isAdmin; } set { _isAdmin = value; } }
        public Boolean isLoanSelected { get { return _isLoan; } set { _isLoan = value; } }

        public String ErrorDescription { get; set; }

	}
}