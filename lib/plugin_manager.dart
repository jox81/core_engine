import 'package:core_engine/iplug.dart';

abstract class IPlug implements IPlugIn, IPlugOut{
  bool checkedIn = false;
  bool checkedOut = false;

  IPlugIn iPlugIn;
  IPlugOut iPlugOut;

  TokenPlug _tokenPlug;

  void setTokenPlug(TokenPlug tokenPlug) {
    _tokenPlug = tokenPlug;
  }

  TokenPlug sendToken() {
    return _tokenPlug;
  }

  void sendTokenPlug(IPlug iplug) {
    iplug._tokenPlug = _tokenPlug;
  }

  void checkInToken() {
  }
}

abstract class IPlugIn{
  TokenPlug checkOut();
}

abstract class IPlugOut{
  checkIn(TokenPlug tokenPlug);
}

class TokenPlug{
  final num _value;
  final IPlug iplug1;
  final IPlug iplug2;
  TokenPlug(this._value, this.iplug1, this.iplug2);

  get iPlugIn => null;

}

class PluginManager{

  PlugAnime pluginAnime;

  static bool mixPlug(IPlug iplug1, IPlug iplug2){
    iplug1
        ..checkedIn = false
        ..checkedOut = false;
    iplug2
        ..checkedIn = false
        ..checkedOut = false;

    TokenPlug tokenPlug = new TokenPlug(10, iplug1, iplug2);
    iplug1.setTokenPlug(tokenPlug);
    iplug1.sendTokenPlug(iplug2);
    iplug2.checkInToken();
    iplug2.sendTokenPlug(iplug1);
    iplug2.checkInToken();
    TokenPlug tokenPlugResult = iplug1.checkOut();

    print('tokenPlug == tokenPlugResult : ${tokenPlug == tokenPlugResult}');
    print('iplug1.checkedIn : ${iplug1.checkedIn}');
    print('iplug1.checkedOut : ${iplug1.checkedOut}');
    print('iplug2.checkedIn : ${iplug2.checkedIn}');
    print('iplug2.checkedOut : ${iplug2.checkedOut}');
    if(tokenPlug == tokenPlugResult && iplug1.checkedIn && iplug1.checkedOut && iplug2.checkedIn && iplug2.checkedOut){
      return true;
    }

    return false;
  }

  static PlugAnime getPlugAnime(){
    return new PlugAnime();
  }
}