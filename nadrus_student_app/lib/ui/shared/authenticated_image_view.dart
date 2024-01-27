import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nadrus_student_app/controllers/auth_controller.dart';
import 'package:nadrus_student_app/controllers/tenant_controller.dart';
import 'package:nadrus_student_app/ui/resources/colors/colors.dart';
import 'package:nadrus_student_app/ui/widgets/loaders/loader.dart';

class AuthenticatedImageView extends StatefulWidget {
  final String imageUrl;
  const AuthenticatedImageView({super.key, required this.imageUrl});

  @override
  State<AuthenticatedImageView> createState() => _AuthenticatedImageViewState();
}

class _AuthenticatedImageViewState extends State<AuthenticatedImageView> {
  late Future<http.Response> _imageResponse;

  @override
  void initState() {
    super.initState();
    _imageResponse = _fetchImage();
  }

  ////files/whiteboard/3/1689773771.png
  Future<http.Response> _fetchImage() async {
    final url = "${TenantController.baseUrl()}/files/${widget.imageUrl}";
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer ${await AuthenticationController.token()}'
      },
    );
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<http.Response>(
      future: _imageResponse,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(height: 165, child: Center(child: Loader()));
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading image'));
        } else {
          final response = snapshot.data!;
          if (response.statusCode == 200) {
            // Display the image
            return Image.memory(
              response.bodyBytes,
            );
          } else {
            return Center(
              child: Text(
                'failed_to_load_image'.tr(),
                style: const TextStyle(
                  color: DesignColors.textColor,
                  fontSize: 10,
                ),
              ),
            );
          }
        }
      },
    );
  }
}
