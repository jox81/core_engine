abstract class IPlugIn{
  bool sendOut();
}

abstract class IPlugOut{
  bool checkIn(IPlugIn iPlugIn);
}

//class PlugRender implements IPlugIn, IPlugOut{
//
//}

class PlugCore implements IPlugIn, IPlugOut{

  @override
  bool checkIn(IPlugIn iPlugIn) {
    if(iPlugIn is PlugCore) return false;

    return true;
  }

  @override
  bool checkOut(IPlugOut iPlugOut) {
    if(iPlugOut is PlugCore) return false;

    return true;
  }
}