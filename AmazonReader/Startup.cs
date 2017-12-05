using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AmazonReader.Startup))]
namespace AmazonReader
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
