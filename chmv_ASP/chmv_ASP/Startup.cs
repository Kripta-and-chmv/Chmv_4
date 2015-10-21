using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(chmv_ASP.Startup))]
namespace chmv_ASP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
