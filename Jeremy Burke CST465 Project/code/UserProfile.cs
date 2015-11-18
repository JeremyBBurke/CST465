using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Jeremy_Burke_CST465_Project.Code
{
    public class UserProfileObject
    {
        private string m_FirstName;
        public string FirstName
        {
            get { return m_FirstName; }
            set { m_FirstName = value; }
        }

        private string m_LastName;
        public string LastName
        {
            get { return m_LastName; }
            set { m_LastName = value; }
        }

        private string m_Age;
        public string Age
        {
            get { return m_Age; }
            set { m_Age = value; }
        }

        private string m_PhoneNumber;
        public string PhoneNumber
        {
            get { return m_PhoneNumber; }
            set { m_PhoneNumber = value; }
        }

        private string m_EmailAddress;
        public string EmailAddress
        {
            get { return m_EmailAddress; }
            set { m_EmailAddress = value; }
        }

        private string m_ConfirmEmail;
        public string ConfrimEmail
        {
            get { return m_ConfirmEmail; }
            set { m_ConfirmEmail = value; }
        }

        private string m_StreetAddress;
        public string StreetAddress
        {
            get { return m_StreetAddress; }
            set { m_StreetAddress = value; }
        }

        private string m_City;
        public string City
        {
            get { return m_City; }
            set { m_City = value; }
        }

        private string m_State;
        public string State
        {
            get { return m_State; }
            set { m_State = value; }
        }

        private string m_Zip;
        public string Zip
        {
            get { return m_Zip; }
            set { m_Zip = value; }
        }

        private Byte[] m_ProfileImage;
        public Byte[] profileimage
        {
            get { return m_ProfileImage; }
            set { m_ProfileImage = value; }
        }

        public Guid UserID { get; set; }
    }
}