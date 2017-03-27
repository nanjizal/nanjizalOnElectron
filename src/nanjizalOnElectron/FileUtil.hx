package nanjizalOnElectron;
import electron.main.*;
class FileUtil{
    public static inline function getLocalPath(){
        return 'file://' + js.Node.__dirname;
    }
}
