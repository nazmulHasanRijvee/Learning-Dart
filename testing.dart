void main () {


}

abstract interface class ApiClient {
  Future<void> getData();
}

class ApiService extends ApiClient {

  @override
  Future<void> getData() async {
    // API call
  }

}