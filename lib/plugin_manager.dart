import 'package:core_engine/iplug.dart';
import 'package:core_anime/iplug.dart';

class PluginManager{

  PlugAnime pluginAnime;

  static void mixPlug(IPlugIn iplugin, IPlugOut iplugout){
    return new PlugRender();
  }

  static PlugAnime getPlugAnime(){
    return new PlugAnime();
  }
}