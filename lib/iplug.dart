import 'package:core_engine/plugin_manager.dart';

class PlugCore extends IPlug{

  TokenPlug _tokenPlug;

  @override
  checkIn(TokenPlug tokenPlug) {
    print('PlugCore::checkIn');
//    if(tokenPlug.iPlugIn is PlugCore) checkedIn = false;
//    checkedIn = true;
  }

  @override
  TokenPlug checkOut(){
    print('PlugCore::checkOut');
//    if(iPlugOut is PlugCore) checkedOut = false;
//    checkedOut = true;

    return _tokenPlug;
  }
}

class PlugAnime extends IPlug{

  TokenPlug _tokenPlug;

  @override
  checkIn(TokenPlug tokenPlug) {
    print('PlugAnime::checkIn');
//    if(tokenPlug.iPlugIn is PlugAnime) checkedIn = false;
//    checkedIn = true;
  }

  @override
  TokenPlug checkOut(){
    print('PlugAnime::checkOut');
//    if(iPlugOut is PlugAnime) checkedOut = false;
//    checkedOut = true;
    return _tokenPlug;
  }
}