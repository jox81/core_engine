import 'package:core_engine/iplug.dart';
import 'package:core_engine/plugin_manager.dart';

main(){

  PlugAnime plugAnime = new PlugAnime();
  PlugCore plugCore = new PlugCore();

  bool result = PluginManager.mixPlug(plugCore, plugAnime);
  print(result);
}