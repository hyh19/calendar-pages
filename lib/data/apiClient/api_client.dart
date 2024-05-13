import '../../core/app_export.dart';
import '../../core/utils/progress_dialog_utils.dart';
import '../models/listUser/post_list_user_resp.dart';

// ignore_for_file: must_be_immutable
class ApiClient extends GetConnect {
  var url = "https://nodedemo.dhiwise.co";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/api/v1/user/list
  ///
  /// Sends a POST request to the server's 'https://nodedemo.dhiwise.co/device/api/v1/user/list' endpoint
  /// with the provided headers and request data
  /// Returns a [PostListUserResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostListUserResp> listUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/device/api/v1/user/list',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostListUserResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostListUserResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
