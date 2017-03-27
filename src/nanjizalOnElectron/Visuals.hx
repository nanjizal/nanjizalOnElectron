package nanjizalOnElectron;
import js.Browser.document;
import nanjizalOnElectron.FileUtil;
import js.html.*;
class Visuals {
    
    inline public static function imageScaled100percent( nom: String ): ImageElement {
        var img = document.createImageElement();
        img.style.width = '100%';
        img.style.height = '100%';
        img.style.display = 'relative';
        img.src = FileUtil.getLocalPath()+'/assets/images/' + nom;
        return img;
    }
    
    inline public static function centreLabel( str:        String
                                    ,   color:      String
                                    ,   family:     String
                                    ,   padding:    Float
                                    ,   size:       Float ): DivElement {
        var txt = document.createDivElement();
        var style = txt.style;
        style.alignItems = 'center';
        style.alignContent = 'center';
        style.textAlign = 'center';
        style.justifyContent = 'center';
        style.fontFamily = family;
        style.fontSize = Std.string( size ) + 'px';
        style.color = color;
        style.margin = '0';
        style.padding = Std.string( padding ) + 'px';
        txt.innerHTML = str;
        return txt;
    }  

}
