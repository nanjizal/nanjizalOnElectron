import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.Node.process;
import js.html.*;
import htmlHelper.tools.AnimateTimer;
import nanjizalOnElectron.Visuals;
import nanjizalOnElectron.styles.AppColors;
import sys.FileSystem;
import js.node.Fs;
import js.node.Http;
import js.node.ChildProcess;

class App {
    
    public static var animateTimer: AnimateTimer;
    public static var traceDiv: DivElement;
    public static var info: String;
    static var div: DivElement;
    
    static function main() {
        window.onload = function(){   
            AnimateTimer.create();
            AnimateTimer.onFrame = render;
            info = 'hxelectron - ' + Std.string( process.version ) + ' - '+ Std.string( process.versions['electron'] );
            console.info( info );
            div = cast document.getElementById( 'content' );
            traceDiv = document.createDivElement();
            div.appendChild( traceDiv );
            //screenTrace( info );
            div.appendChild( Visuals.centreLabel( "nanjizalOnElectron"
                                                , AppColors.highlightBright
                                                , 'OpenSans-Semibold'
                                                , 5, 20 ) );
            div.appendChild( Visuals.imageScaled100percent( 'haxe-logo-glyph.png') );
        }
    }
    
    static function render( counter: Int ):Void{
        console.info( counter );
    }
    
    public static function screenTrace( d: Dynamic ){
        traceDiv.textContent += '' + d;
    }
    public static function clearScreenTrace( ){
        traceDiv.textContent = '';
    }
}
