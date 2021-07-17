void main(List<String> args){
  List<Commands> subCmds = CmdRunner.initCmds();
  CmdRunner runner = CmdRunner.init(subCmds, args);
  do{
    runner.lineRead();
    runner.loop();
  }while(!(runner.getQF().asBool()));
  runner.forEnd();
}
class CmdRunner{
  QueueList<String> cmdsSet;
  List<Commands> subCmds;
  QuitFlag flag;

  static List<Commands> initCmds(){
    Commands boot = BootCmd();
    Commands user = UserCmd();
    Commands xnd = XndCmd();
    Commands luux = LuuxCmd();
    Commands quit = QuitCmd();
    return [boot,user,xnd,luux,quit];
  }

  CmdRunner.init(List<Commands> subCmds,List<String> args){
    this.cmdsSet = QueueList.fromList(args);
    this.subCmds = subCmds;
    this.flag = QuitFrag.new(false);
  }

  void lineRead(){
    this.cmdsSet = QueueList.fromList(args);
  }
  void loop(){}
  void forEnd(){}
  QuitFlag getQF()=>this.flag;
}

class QuitFlag{
  bool state;
  QuitFlan.new(bool bl){this.state=bl}
  bool asBool()=>this.state;
}
class Commands{
  QuitFlag flag;
  

}

class BootCmd extends Commands{}
class UserCmd extends Commands{}
class XndCmd extends Commands{}
class LuuxCmd extends Commands{}