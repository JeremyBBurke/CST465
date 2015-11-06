using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;

namespace Jeremy_Burke_CST465_Project.Admin
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            LoadRoles();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Admins"))
            {
                Roles.AddUserToRole(User.Identity.Name, "Admins");
            }
        }
        protected void uxAdd_Role(object sender, EventArgs e)
        {
            if (!Roles.RoleExists(uxRoleName.Text))
            {
                Roles.CreateRole(uxRoleName.Text);
            }
            LoadRoles();
        }
        void LoadRoles()
        {
            uxRoles.Items.Clear();
            foreach (string itemtoadd in Roles.GetAllRoles())
            {
                uxRoles.Items.Add(itemtoadd);
            }
        }
    }
}