import 'package:flutter/cupertino.dart';

class ItemModel{
    String itemID;
    String nome;
    String descricao;
    String urlFoto;

    ItemModel({
      this.itemID, 
      this.urlFoto,
      @required this.nome,
      @required this.descricao
    });

    bool operator ==(o) => o is ItemModel && o.itemID == this.itemID;
    int get hashCode => this.itemID.hashCode + this.nome.hashCode;
}