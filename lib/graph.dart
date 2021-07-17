class QueueList<T>{
  List<T> _ls;
  int _length;
  QueueList.fromList(List<T> args){
    this._ls = args;
    this._length = args.length;
  }
  void put(T it){
    if(this._ls.length > this._length){
      this._ls.add(it);
    }else{
      this._ls[length-1] = it;
    }
    this._length++;
  }
  T fetch(){
    T temp = this._ls[0];
    this._rot();
    this._length--;
    return temp;
  }
  void _rot(){
      T temp = this._ls[0];
    if(this.length()>0){
      this._ls.indexedMap((int ind, T elem){
        if(ind !=0){}
      }).toList()
      this._ls[this.length()-1] = temp;
    }
  }
  int length(){
    return _length;
  }
}

class TwoTree<T>{
  List<T> s;
  TwoTree(List<T> ilist){
    QueueList ql = QueueList.fromList(ilist);
    this.s = List<T>()..length=2;
    do{
      T temp = ql.fetch();
      if(){}
    }while(ql.length()>0);
  }
  List<T> innerRead(){}
}