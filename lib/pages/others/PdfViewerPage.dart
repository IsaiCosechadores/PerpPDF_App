import 'package:flutter/material.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';

class PdfViewerPage extends StatelessWidget {
  final PDFDocument document;

  const PdfViewerPage({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: PDFViewer(
        document: document,
        lazyLoad: false,
        scrollDirection: Axis.horizontal,
        showPicker: false,
        showIndicator: false,
        showNavigation: false,
      ),
    );
  }
}
