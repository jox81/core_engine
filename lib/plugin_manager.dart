import 'package:core_engine/iplug.dart';

class PluginManager{

  static PlugRender getPlugRender(){
    return new PlugRender();
  }

  static PlugAnime getPlugAnime(){
    return new PlugAnime();
  }
}