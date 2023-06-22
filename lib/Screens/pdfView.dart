import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class pdfView extends StatelessWidget {
  pdfView({Key? key,required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("pdf files"),
      ),
      body: _pdfviewer(index)
    );
  }
  _pdfviewer(int index){
    if(index==1){
     return SfPdfViewer.asset("assets/pdfFiles/hapyHome.pdf");

    }else if(index==2){
     return SfPdfViewer.asset("assets/pdfFiles/sin_knowing.pdf");
    }else{
      return SfPdfViewer.asset("assets/pdfFiles/maby_tomarro_late.pdf");
    }
  }
}
