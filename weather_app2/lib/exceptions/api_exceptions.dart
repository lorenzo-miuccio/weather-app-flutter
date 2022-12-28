
// Exception thrown for a connection issue, for example no wifi
class ConnectionException implements Exception {

  final String? _message;

  ConnectionException([this._message]);

  @override
  String toString() {

    if(_message != null)  return 'Error during communication: $_message';

    return 'Error during communication';
  }
}

// Exception thrown if the server responded with a status not equal to 200
class HttpStatusException implements Exception {

  final String? _message;

  HttpStatusException([this._message]);

  @override
  String toString() {

    if(_message != null)  return 'Request failed with status: $_message';

    return 'Http status error';
  }
}