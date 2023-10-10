import 'package:dicebear/viewModels/svg_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SvgScreen extends StatelessWidget {
  const SvgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SvgViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gambar dari DiceBear API'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (viewModel.svgContent
                .isNotEmpty) // Menampilkan gambar jika svgContent sudah diisi
              SizedBox(
                width: 200,
                height: 200,
                child: SvgPicture.string(viewModel.svgContent),
              ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                viewModel.fetchSvg();
              },
              child: const Text('FetchSvg'),
            ),
          ],
        ),
      ),
    );
  }
}
