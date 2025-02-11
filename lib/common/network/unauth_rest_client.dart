import 'package:flutter_template/common/network/network_error_handler.dart';
import 'package:flutter_template/common/network/rest_client.dart';

class UnAuthRestClient extends RestClient {
  UnAuthRestClient(
    super.client,
  ) : super(errorHandler: NetworkErrorHandlerImpl());
}
