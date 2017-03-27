import electron.main.*;
class Main {
    static function main() {
        electron.CrashReporter.start({
            companyName : "nanjizalOnElectron",
            submitURL : "https://github.com/nanjizal/nanjizalOnElectron/issues"
        });
        electron.main.App.on( 'ready', function(e) {
            #if fullScreen
                var win: BrowserWindow = new BrowserWindow( { width: 500, height: 500, frame: false } );
                win.setFullScreen( true );
            #else
    			var win: BrowserWindow = new BrowserWindow( { width: 500, height: 500 } );
            #end
            win.on( 'closed', function(e) {
                if( js.Node.process.platform != 'darwin' ) App.quit();
            });
            win.loadURL( 'file://' + js.Node.__dirname + '/app.html' );
        });
    }
}
